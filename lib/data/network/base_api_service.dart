abstract class BaseAPiService {
  Future<dynamic> getApi(String url);

  Future<dynamic> postApi(dynamic data, String url);



}
