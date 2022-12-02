class AppImages {
  static const String _pathImages = 'images';

  static String _buildPathLogo(String image, [String extension = 'png']) {
    return '$_pathImages/$image.$extension';
  }

  static String iconLock = _buildPathLogo('icons/icon-lock');
  static String iconUser = _buildPathLogo('icons/icon-user');
}
