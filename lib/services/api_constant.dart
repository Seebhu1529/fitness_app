 import 'package:get/get.dart';
import 'package:fitness_app/services/api_service.dart';


class ApiConstant extends GetxController {
  var isloading = true.obs;
  var data = [].obs;

    fetchData() async {
      try {
        isloading(true);
      } catch (e) {
        // Handle the exception here
        print('An error occurred: $e');
      } finally {
        // This code will be executed regardless of whether an exception was thrown
        isloading(false);
      }
    }
  }