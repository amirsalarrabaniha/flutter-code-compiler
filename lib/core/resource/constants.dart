class Constants {
  static const apiBaseUrl = '${Constants.baseUrl}/api/';
  static const baseUrl = 'https://hark.liara.run';
  static String sharedPreferencesUser = 'share_user';
  static String sharedPreferencesCurrentAddress = 'share_current_address';
  static String sharedPreferencesCurrentTheme = 'share_current_theme';
  static List<String> iconList = [
    'assets/icons/garment.svg',
    'assets/icons/kid_cloth.svg',
    'assets/icons/real_estate.svg',
    'assets/icons/shirt.svg',
    'assets/icons/winter_cloth.svg',
    'assets/icons/suit.svg',
    'assets/icons/cloth.svg',
    'assets/icons/winter_cloth.svg',
  ];
  static List<String> iconListSecond = [
    'assets/icons/repair_clothes.svg',
    'assets/icons/shape.svg',
    'assets/icons/sofa.svg',
    'assets/icons/laundry.svg',
  ];
  static List<String> imageListClothes = [
    'assets/images/layer_new.svg',
    'assets/images/layer_copy.svg',
    'assets/images/layer_copy.svg',
    'assets/images/layer.svg',
    'assets/images/layer_new.svg',
    'assets/images/layer_new.svg',
    'assets/images/shalvar.svg',
    'assets/images/shalvar.svg',
  ];

  static String getUploadUrl(int uploadId) =>
      'https://hark.liara.run/api/uploads/$uploadId/download';
}
