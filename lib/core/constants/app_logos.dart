class AppLogos {
  static const String _pathLogos = 'assets/images/logos';

  static String _buildPathLogo(String logo, [String extension = 'png']) {
    return '$_pathLogos/$logo.$extension';
  }

  static String wakkeLogoBranca = _buildPathLogo('logo-wakke-branca');
  static String wakkeLogoRoxa = _buildPathLogo('logo-wakke-roxa');
  static String wakkeManagerLogoRoxa =
      _buildPathLogo('logo-wakke-manager-roxa');
  static String wakkeManagerLogoRoxaClara = _buildPathLogo('logo-wakke-manager-roxa-clara');
}
