import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meeting_room_app/app/modules/home_module/home_controller.dart';
import 'package:meeting_room_app/app/utils/widgets/app_button/app_button.dart';
import 'package:meeting_room_app/app/utils/widgets/app_text_field/app_text_field.dart';

class HomePage extends GetWidget<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const AppTextField(),
            const SizedBox(height: 16),
            AppButton(
              onPressed: () {},
              text: 'Click',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
