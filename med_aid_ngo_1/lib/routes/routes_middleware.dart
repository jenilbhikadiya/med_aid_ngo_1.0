import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RouteMiddleWare extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    return null;
    // return isAuthenticated ? null : RouteSettings(name: AppRoutes.login);
  }
}
