
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:med_aid_ngo_1/routes/routes.dart';

class RouteObservers extends GetObserver {
  @override
  void didPop(Route<dynamic>? route, Route<dynamic>? previousRoute) {
    // final sidebarController = Get.put(SidebarController());

    if (previousRoute != null) {
      for (var routeName in AppRoutes.sidebarMenuItems) {
        if (previousRoute.settings.name == routeName) {
          // sidebarController.activeItem.value = routeName;
        }
      }
    }
  }
}
