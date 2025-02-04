
import 'package:flutter/material.dart';
import 'package:fruits_hub_dashboard/core/utils/app_text_styles.dart';

AppBar customAppBar({required BuildContext context, required String title , bool notificationsActivated =false}) {
  return AppBar(
    leading: IconButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        icon: const Icon(
          Icons.arrow_back_ios_new_sharp,
        )),
    title: Text(
      title,
      style: Styles.bold19,
    ),
    centerTitle: true,
   
  );
}
