import 'package:flutter/widgets.dart';
import 'package:maps_flutter/app/ui/pages/home/home_page.dart';
import 'package:maps_flutter/app/ui/pages/request_permission/request_permission_page.dart';
import 'package:maps_flutter/app/ui/pages/splash/splash_page.dart';
import 'package:maps_flutter/app/ui/routes/routes.dart';


Map<String, Widget Function(BuildContext)> appRoutes(){
  return {
    Routes.SPLASH:(_) => const SplashPage(),
    Routes.PERMISSIONS:(_) => const RequestPermissionPage(),
    Routes.HOME:(_) => const HomePage()
  };
}