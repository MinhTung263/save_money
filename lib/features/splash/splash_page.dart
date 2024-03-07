import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../routes/routers_src.dart';

class SplashPage extends GetView<GetxController> {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("This is splash page"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: InkWell(
              onTap: () => Get.toNamed(
                RoutesApp.routeBuilder,
              ),
              child: Container(
                height: 30,
                width: 220,
                decoration: const BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      20,
                    ),
                  ),
                ),
                child: const Center(
                  child: Text(
                    "Go to page builder",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
