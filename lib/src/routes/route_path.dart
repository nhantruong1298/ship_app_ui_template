class RoutePath {
  static const String welcomeScreen = '/welcome';
  static const String createAccountStepOneScreen = '/createAccountStepOne';
  static const String createAccountStepTwoScreen = '/createAccountStepTwo';
  static const String loginScreen = '/login';
  static const String otpVerifyScreen = '/otpVerify';
  static const String registerScreen = '/register';
  static const String sellerRegisterListScreen = '/sellerRegisterList';
  static const String sellerRegisterScreen = '/sellerRegister';
  static const String sellerRegisterSearchScreen = '/sellerRegisterSearch';
  static const String sellerSelectScreen = '/sellerSelect';

  static const String homeScreen = '/home';

  static const String storeScreen = '/store';
  static const String storeOperatingTimeScreen = '/store/operating-time';
  static const String storeOperatingTimeEditScreen =
      '/store/operating-time/edit';
  static const String storeSpecialOperatingTimeEditScreen =
      '/store/special-operating-time/edit';
  static const String storeContactScreen = '/store/contact';

  static const String menuScreen = '/menu';
  static const String menuCategoryListScreen = '/menu/categories';
  static const String menuCategoryCreateScreen = '/menu/categories/create';
  static const String menuCategoryUpdateScreen = '/menu/categories/{id}/update';
  static const String menuProductCreateScreen = '/menu/products/create';
  static const String menuProductUpdateScreen = '/menu/products/{id}/update';
  static const String menuProductOptionListScreen = '/menu/options';
  static const String menuProductOptionCreateScreen = '/menu/options/create';
  static const String menuProductOptionUpdateScreen =
      '/menu/options/{id}/update';
  static const String menuProductOptionValueCreateScreen =
      '/menu/option-values/create';
  static const String menuProductOptionValueUpdateScreen =
      '/menu/option-values/{id}/update';

  static const String promotions = '/promotions';
  static const String promotionTypes = '/promotions/types';
  static const String promotionDiscountCreate = '/promotions/discounts/create';
  static const String promotionDiscountCreatePriceAdjust =
      '/promotions/discounts/create/price-adjust';
  static const String promotionDiscountCreateConfirm =
      '/promotions/discounts/create/confirm';
  static const String promotionDiscountDetail = '/promotions/discounts/{id}';
  static const String promotionPercentCreate = '/promotions/percents/create';
  static const String promotionPercentDetail = '/promotions/percents/{id}';

  static const String orders = '/orders';
  static const String orderDetails = '/orders/{id}/details';
  static const String orderCompleted = '/orders/{id}/completed';
  static const String orderCancel = '/orders/{id}/cancel';

  static const String onboardingChooseLanguage = '/onboarding-choose-language';
  static const String onboardingRequestPermission = '/onboarding-request-permission';
  static const String onboardingChooseLocation = '/onboarding-choose-location';
  static const String onboardingAddAddress = '/onboarding-add-address';

}
