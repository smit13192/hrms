enum AppRoutes {
  splash('splash', '/splash'),
  choice('choice', '/choice'),
  signIn('sign-in', '/sign-in'),
  home('home', '/home');

  final String name;
  final String path;
  const AppRoutes(this.name, this.path);
}
