
//APP TEXT FIELD
import 'package:app_merchant/src/presentation/shared/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextField extends StatefulWidget {
  const AppTextField({
    super.key,
    this.hintText = '',
    this.isPassword = false,
    this.focusNode,
    this.nextFocusNode,
    this.onChange,
    this.onValidator,
    this.onFieldSubmitted,
    this.controller,
    this.maxLines = 1,
    this.enabled = true,
    this.showSuffixIcon = false,
    this.onTap,
    this.readOnly = false,
    this.initialValue = '',
  });

  factory AppTextField.password({
    FocusNode? focusNode,
    void Function(String)? onChange,
    void Function(String?)? onFieldSubmitted,
    String? Function(String?)? onValidator,
    TextEditingController? controller,
  }) {
    return AppTextField(
      controller: controller,
      focusNode: focusNode,
      onChange: onChange,
      hintText: 'Nhập mật khẩu',
      isPassword: true,
      onFieldSubmitted: onFieldSubmitted,
      onValidator: onValidator,
    );
  }

  final void Function()? onTap;
  final bool showSuffixIcon;
  final bool enabled;
  final bool readOnly;
  final int maxLines;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final FocusNode? nextFocusNode;
  final String hintText;
  final bool isPassword;
  final void Function(String)? onChange;
  final String? Function(String?)? onValidator;
  final void Function(String?)? onFieldSubmitted;
  final String? initialValue;

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  final _passwordNotifier = ValueNotifier(false);
  
  late final TextEditingController _internalController;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _internalController = widget.controller ?? TextEditingController();
    if ((widget.initialValue ?? '').isNotEmpty) {
      _internalController.text = widget.initialValue!;
    }
  }

  @override
  void didUpdateWidget(covariant AppTextField oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (_internalController.text != widget.initialValue &&
        (widget.initialValue ?? '').isNotEmpty) {
      Future.delayed(Duration.zero, () {
        _internalController.text = widget.initialValue!;
      });
    }
  }

  @override
  void dispose() {
    super.dispose();
    _internalController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: ValueListenableBuilder(
        valueListenable: _passwordNotifier,
        builder: (context, passwordVisible, _) {
          return TextFormField(
            readOnly: widget.readOnly,
            enabled: widget.enabled,
            maxLines: widget.maxLines,
            controller: _internalController,
            validator: widget.onValidator,
            onChanged: widget.onChange,
            focusNode: widget.focusNode,
            onFieldSubmitted: (value) {
              widget.nextFocusNode?.requestFocus();
              widget.onFieldSubmitted?.call(value);
            },
            showCursor: true,
            cursorColor: Colors.black,
            obscureText: !passwordVisible && widget.isPassword,
            decoration: InputDecoration(
              filled: true,
              fillColor: const Color(0xFFFEFCFC),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.r),
                  borderSide: BorderSide(color: AppColor.of(context).primary)),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.r),
                  borderSide: BorderSide(color: AppColor.of(context).primary)),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.r),
                  borderSide: BorderSide(
                    color: AppColor.of(context).primary,
                  )),
              suffixIcon: _buildSuffixIcon(passwordVisible),
              hintText: widget.hintText,
              hintStyle: TextStyle(
                color: const Color(0xFFE6E7E8),
                fontSize: 16.sp,// final BuildContext _;
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
          );
        },
      ),
    );
  }

  Widget? _buildSuffixIcon(bool passwordVisible) {
    if (widget.showSuffixIcon && !widget.isPassword) {
      return const Icon(Icons.arrow_forward_ios);
    }

    if (!widget.isPassword) return null;

    return InkWell(
        onTap: () {
          _passwordNotifier.value = !_passwordNotifier.value;
        },
        child: passwordVisible
            ? const Icon(Icons.visibility)
            : const Icon(Icons.visibility_off));
  }
}
