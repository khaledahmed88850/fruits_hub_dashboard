import 'package:flutter/material.dart';
import 'package:fruits_hub_dashboard/core/helper_functions/on_generate_route.dart';
import 'package:fruits_hub_dashboard/features/dashboard/presentation/view/dashboard_view.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: DashboardView.routeName,
      onGenerateRoute: onGenerateRoute,
    );
  }
}