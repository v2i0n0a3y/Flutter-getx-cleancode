import 'package:getxcleancode/data/network/network_ap_service.dart';
import '../../../res/app_url/app_url.dart';

class LoginRepository {
  final _apiService = NetworkApiService();

  Future<dynamic> loginApi(var data) async {
    dynamic responce = await _apiService.postApi(data, AppUrl.loginApi);
    return responce;
  }
}

