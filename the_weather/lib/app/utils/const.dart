class MyKey {
  static const String api_token = "a3a504b73d6b1bdc24daee0f7dd09963";
}

const linkAsset = 'assets/images/weathers/';

class AssetCustom {
  static String getLinkImg(String name) =>
      '$linkAsset${name.replaceAll(" ", "").toLowerCase()}.png';
}
