import '../../../models/home/user_list_model.dart';
import '../../../res/app_url/app_url.dart';
import '../../network/network_ap_service.dart';

class HomeRepository {
  final _apiService = NetworkApiService();

  Future<UserListModel> userListApi() async {
    dynamic response = _apiService.getApi( AppUrl.userApiUrl);
    return UserListModel.fromJson(response);
  }
}

