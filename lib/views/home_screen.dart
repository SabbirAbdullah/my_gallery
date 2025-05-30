import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../util/custom_button.dart';
import '../util/welcome_widget.dart';
import 'gallery_screen.dart';
import 'add_image_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(top: 50.0),
                child: WelcomeHome(),
              )),
          Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  height: 150,
                  child: Column(
                    children: [
                      CustomButton.Button(() async {
                        Get.to(() => GalleryScreen());
                      }, 'View Gallery'),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomButton.Button(() async {
                        Get.to(() => AddImageScreen());
                      }, ' Add New Image'),
                    ],
                  ),
                ),
              )),

          /*    Column(children: [




                          ],),*/
        ],
      ),
    );
  }
}
