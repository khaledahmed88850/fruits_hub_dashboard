import 'package:flutter/material.dart';
import 'package:fruits_hub_dashboard/features/dashboard/presentation/view/dashboard_view.dart';

import '../../features/add_product/presentation/view/add_product.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case DashboardView.routeName:
      return MaterialPageRoute(builder: (_) => const DashboardView());
    case AddProduct.routeName:
      return MaterialPageRoute(builder: (_) => const AddProduct());
    default:
      return MaterialPageRoute(builder: (_) => const Placeholder());
  }
}
