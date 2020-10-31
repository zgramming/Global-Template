class AppConfig {
  String indonesiaLocale;
  String baseAPIURL;
  String baseImageURL;
  String tokenFirebase;
  String urlImageAsset;
  String urlLogoAsset;
  String headerFont;
  String defaultFont;
  String defaultImageNetwork;
  Map<String, String> headersAPI;

  AppConfig({
    this.indonesiaLocale,
    this.baseAPIURL,
    this.baseImageURL,
    this.tokenFirebase,
    this.urlImageAsset,
    this.urlLogoAsset,
    this.headerFont,
    this.defaultFont,
    this.defaultImageNetwork,
    this.headersAPI,
  });

  void configuration({
    String headerFont,
    String defaultFont,
    String defaultImageNetwork,
    String urlImageAsset,
    String urlLogoAsset,
    String baseAPIURL,
    String baseImageURL,
    String tokenFirebase,
    Map<String, String> headersAPI,
  }) {
    this.headerFont = headerFont ?? 'LexendDeca';
    this.defaultFont = defaultFont ?? 'Poppins';
    this.defaultImageNetwork =
        defaultImageNetwork ?? 'https://homepages.cae.wisc.edu/~ece533/images/airplane.png';
    this.urlImageAsset = urlImageAsset ?? 'asset/images';
    this.urlLogoAsset = urlLogoAsset ?? 'logo.png';
    this.baseAPIURL = baseAPIURL ?? 'http://www.example.com';
    this.baseImageURL = baseImageURL ?? 'http://www.example.com/images';
    this.tokenFirebase = tokenFirebase ?? 'exampletoken';
    this.headersAPI = headersAPI ?? {'Content-Type': 'application/x-www-form-urlencoded'};
  }
}

final appConfig = AppConfig();
