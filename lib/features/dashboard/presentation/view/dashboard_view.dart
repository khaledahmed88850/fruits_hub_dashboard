import 'package:flutter/material.dart';
import 'package:fruits_hub_dashboard/core/helper_functions/custom_appbar.dart';
import 'package:fruits_hub_dashboard/core/widgets/custom_button.dart';
import 'package:fruits_hub_dashboard/features/add_product/presentation/view/add_product.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});
  static const routeName = '/dashboard';

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: customAppBar(context: context, title: 'Dashboard'),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Center(child: CustomButton(
          onPressed: () {
            Navigator.pushNamed(context, AddProduct.routeName);
          },
          text: 'Add product')),
      ),
    );
  }
}