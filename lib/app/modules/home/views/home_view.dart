import 'package:flutter/material.dart';
import '../../../data/widgets/carTile.dart';
import 'package:get/get.dart';
import '../../../data/enums/netStatus.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Obx(
                () => Text(
                  "Status: ${controller.networkStatus.value.name}",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 16),
              if (controller.networkStatus.value.name == NetworkStatus.loading)
                const CircularProgressIndicator()
              else
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8))),
                    onPressed: () => controller.getData(),
                    child: const Text(
                      "Reload",
                    )),
              Obx(() => ListView.builder(
                    primary: false,
                    shrinkWrap: true,
                    itemCount: controller.cars.length,
                    itemBuilder: (context, index) {
                      return CarTile(
                          car: controller.cars[index], index: index + 1);
                    },
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
