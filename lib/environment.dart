class AppEnvironment {
  static bool isProduction = const bool.fromEnvironment(
    'IS_PRD',
    defaultValue: false,
  );

  static String apiManager = const String.fromEnvironment(
    'API_MANAGER',
    defaultValue: 'https://backmanager.sistemaescolaweb.com.br/manager/api/v1/',
  );
}
