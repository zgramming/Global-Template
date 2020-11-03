class AppConfig {
  /// id
  String indonesiaLocale;

  /// ttp://www.example.com
  String baseAPIURL;

  /// http://www.example.com/images
  String baseImageURL;

  /// exampletoken
  String tokenFirebase;

  /// asset/images
  String urlImageAsset;

  /// logo.png
  String urlLogoAsset;

  /// LexendDeca
  String headerFont;

  /// Poppins
  String defaultFont;

  /// https://homepages.cae.wisc.edu/~ece533/images/airplane.png
  String defaultImageNetwork;

  /// {'Content-Type': 'application/x-www-form-urlencoded'}
  Map<String, String> headersAPI;

  AppConfig({
    /// id

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
    /// asset/images
    String urlImageAsset,

    /// logo.png
    String urlLogoAsset,

    /// ttp://www.example.com
    String baseAPIURL,

    /// http://www.example.com/images
    String baseImageURL,

    /// exampletoken
    String tokenFirebase,

    /// LexendDeca
    String headerFont,

    /// Poppins
    String defaultFont,

    /// https://homepages.cae.wisc.edu/~ece533/images/airplane.png
    String defaultImageNetwork,

    /// {'Content-Type': 'application/x-www-form-urlencoded'}
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
