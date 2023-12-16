enum AppRoutes {
  splash('splash', '/splash'),
  choice('choice', '/choice'),
  login('login', '/login'),
  home('home', '/home');

  final String name;
  final String path;
  const AppRoutes(this.name, this.path);
}
