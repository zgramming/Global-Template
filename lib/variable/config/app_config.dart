class AppConfig {
  final String indonesiaLocale = 'id_ID';

  String _urlImageAsset = 'asset/images',
      _urlLogoAsset = 'logo.png',
      _headerFont = 'LexendDeca',
      _defaultFont = 'Poppins',
      _defaultImageNetwork = 'https://homepages.cae.wisc.edu/~ece533/images/airplane.png';

  String get headerFont => _headerFont;
  String get defaultFont => _defaultFont;
  String get defaultImageNetwork => _defaultImageNetwork;
  String get urlImageAsset => _urlImageAsset;
  String get urlLogoAsset => _urlLogoAsset;

  void configuration({
    String headerFont,
    String defaultFont,
    String defaultImageNetwork,
    String urlImageAsset,
    String urlLogoAsset,
  }) {
    _headerFont = headerFont;
    _defaultFont = defaultFont;
    _defaultImageNetwork = defaultImageNetwork;
    _urlImageAsset = urlImageAsset;
    _urlLogoAsset = urlLogoAsset;
  }
}
