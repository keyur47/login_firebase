import 'dart:developer';
import 'package:login_firebase/model/search_model.dart';
import 'network_helper.dart';

class ApiResService {
  static final NetworkAPICall _networkAPICall = NetworkAPICall();

  static Future<SearchModel> userGetApiCall() async {
    final header = {"Authorization": "Some token"};
    try {

      final request = await _networkAPICall.get('',header: header);
      if (request != null) {
        return SearchModel.fromJson(request);
      }
    } catch (e) {
      log("Discover Api Error $e");
      rethrow;
    } finally {
      //loader end
    }
    return SearchModel();
  }
}
