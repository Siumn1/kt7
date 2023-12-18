import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/car_details_controller.dart';

class CarDetailsView extends GetView<CarDetailsController> {
  const CarDetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('${controller.curCar.brand} ${controller.curCar.model}'),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              padding: EdgeInsets.all(6),
              child: Text(
                'BRAND: ${controller.curCar.brand}',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Container(
              padding: EdgeInsets.all(6),
              child: Text(
                'MODEL: ${controller.curCar.model}',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Container(
              padding: EdgeInsets.all(6),
              child: Text(
                'PRICE: ${controller.curCar.price} \$',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ]),
        ));
  }
}
