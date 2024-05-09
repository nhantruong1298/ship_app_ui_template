import 'package:app_merchant/src/presentation/shared/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'src/routes/app_route.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();

    EasyLoading.instance
      ..backgroundColor = AppColor.of(context).primary
      ..indicatorColor = Colors.white
      ..textColor = Colors.white
      ..maskColor = Colors.black.withOpacity(0.5)
      ..maskType = EasyLoadingMaskType.black
      ..dismissOnTap = false
      ..loadingStyle = EasyLoadingStyle.custom;
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      context,
      designSize: const Size(393, 852),
      minTextAdapt: true,
    );

    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: MaterialApp(
        title: 'Ship App',
        builder: EasyLoading.init(),
        debugShowCheckedModeBanner: false,
        onGenerateRoute: AppRoute.onGenerateInitialRoutes,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
      ),
    );
  }
}
