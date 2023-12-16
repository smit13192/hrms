enum AppRoutes {
  splash('splash', '/splash'),
  login('login', '/login'),
  home('home', '/home');

  final String name;
  final String path;
  const AppRoutes(this.name, this.path);
}
