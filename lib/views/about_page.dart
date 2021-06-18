import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/views/my_home_page.dart';
import '../controllers/my_home_page_controller.dart';

class AboutPage extends StatelessWidget {
  final MyHomePageController controller = Get.put(MyHomePageController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About GetX'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'GetX is an extra-light and powerful solution for Flutter. It combines high performance state management, intelligent dependency injection, and route management in a quick and practical way.',
              ),
            ),
            TextButton(
                onPressed: () {
                  print("sair");

                  Get.off(MyHomePage());
                },
                child: Text('Go Home'))
          ],
        ),
      ),
    );
  }
}
