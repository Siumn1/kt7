import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kt7/app/data/models/car.dart';
import 'package:kt7/app/routes/app_pages.dart';

class CarTile extends StatelessWidget {
  final car;
  final index;
  const CarTile({super.key, required this.car, required this.index});

  @override
  Widget build(BuildContext context) {
     return Card(
        color: Color.fromARGB(255, 255, 255, 255),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: BorderSide(
              color: const Color.fromARGB(255, 0, 0, 0),
              width: 2,
            )),
        child: ListTile(
          onTap: () => Get.toNamed(Routes.CAR_DETAILS, arguments: car),  
          leading: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("$index")]),
          title: Text(
            '${car.brand} ${car.model}',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Price: ${car.price}\$",
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
          trailing: car.availability == true
              ? Icon(
                  Icons.mood,
                  color: Colors.green,
                )
              : Icon(
                  Icons.mood_bad,
                  color: Colors.red,
                ),
        ));
  }
}
