import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:kt7/app/data/models/car.dart';
import 'package:kt7/app/data/models/getCars.dart';
import '../../../data/enums/netStatus.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
  Dio client = Dio();

  RxList<Car> cars = <Car>[].obs;
  Rx<NetworkStatus> networkStatus = NetworkStatus.init.obs;

  

  @override
  void onInit() {
    getData();
    super.onInit();
  }

  void getData() async {
    networkStatus.value = NetworkStatus.loading;
    var response = await client.get("https://myfakeapi.com/api/cars");
    if (response.statusCode != 200) {
      networkStatus.value = NetworkStatus.error;
      return;
    }
    var getCarsData = GetCars.fromJson(response.data);
    cars.value = getCarsData.cars;
    networkStatus.value = NetworkStatus.success;
  }
}
