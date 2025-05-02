class NavigationMenu {
  const NavigationMenu({
    required this.title,
    required this.icon,
    required this.route,
  });

  final String title;
  final String icon;
  final String route;

  static const List<NavigationMenu> items = [
    NavigationMenu(
      title: 'Home',
      icon: 'assets/icons/home.png',
      route: '/home',
    ),
    NavigationMenu(
      title: 'Settings',
      icon: 'assets/icons/settings.png',
      route: '/settings',
    ),
    NavigationMenu(
      title: 'Profile',
      icon: 'assets/icons/profile.png',
      route: '/profile',
    ),
  ];
}
