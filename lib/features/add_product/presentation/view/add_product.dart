
import 'package:flutter/material.dart';
import 'package:fruits_hub_dashboard/core/helper_functions/custom_appbar.dart';
import 'package:fruits_hub_dashboard/core/widgets/custom_button.dart';
import 'package:fruits_hub_dashboard/features/add_product/presentation/view/widgets/custom_text_form_field.dart';

import '../../../../core/utils/app_text_styles.dart';
import 'widgets/upload_image.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({super.key});
  static const routeName = '/add-product';

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  bool isChecked = false;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context: context, title: 'Add Product'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Form(
            key: formKey,
            autovalidateMode: autovalidateMode,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomTextFormField(
                  hintText: 'name',
                  textInputType: TextInputType.text,
                  onSaved: (value) {},
                ),
                CustomTextFormField(
                  hintText: 'price',
                  textInputType: TextInputType.number,
                  onSaved: (value) {},
                ),
                CustomTextFormField(
                  hintText: 'Code',
                  textInputType: TextInputType.text,
                  onSaved: (value) {},
                ),
                CustomTextFormField(
                  maxLines: 5,
                  hintText: 'description',
                  textInputType: TextInputType.text,
                  onSaved: (value) {},
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Checkbox(
                      
                      value: isChecked,
                      onChanged: (value) {
                        isChecked = value!;
                        setState(() {});
                      },
                    ),
                    Text(
                      'Is featured?',
                      style: Styles.bold13,
                    )
                  ],
                ),
                UploadImage(),
                SizedBox(
                  height: 16,
                ),
                CustomButton(
                    text: 'Add',
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        formKey.currentState!.save();
                      } else {
                        autovalidateMode = AutovalidateMode.always;
                      }
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
