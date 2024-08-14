import 'package:fitness_app/models/fitness_api_model.dart';
import 'package:http/http.dart' as http;
import 'package:fitness_app/services/api_constant.dart';

class ApiService {
  Future<List<FitnessApi>?> fetchData() async {
    var url = Uri.parse(ApiConstant.baseUrl + ApiConstant.UserEndPoint);
    var response = await http.get(url);
    if (response.statusCode == 200) {
      List<FitnessApi> fitnessApi = fitnessApiFromJson(response.body);
      return fitnessApi;
    }
    else {
      throw Exception('Failed to load data');
    }
  }
}