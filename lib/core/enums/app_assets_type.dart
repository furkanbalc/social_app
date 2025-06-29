enum AppAssetsType {
  png('assets/images/png/', '.png'),
  svg('assets/images/svg/', '.svg'),
  lottie('assets/images/lotties/', '.json'),
  ;

  const AppAssetsType(this.basePath, this.format);

  final String basePath;
  final String format;
}
