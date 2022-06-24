import 'dart:developer';

import 'package:get/get.dart';
import 'package:login_firebase/helper/api_res_service.dart';
import 'package:login_firebase/model/search_model.dart';

class Controller extends GetxController {
  Rx<SearchModel> searchModel = SearchModel().obs;
  RxList<PayloadWeight> payloadWeight = <PayloadWeight>[].obs;
  RxList<String> flickrImages = <String>[].obs;
  RxList<Engines> engines = <Engines>[].obs;
  Rx<bool> isLoader = false.obs;

  @override
  void onInit() {
    userGetApiCall();
    super.onInit();
  }

  Future<void> userGetApiCall() async {
    try {
      isLoader.value = true;
      searchModel.value = await ApiResService.userGetApiCall();
      payloadWeight.addAll(searchModel.value.payloadWeights ?? []);
      // payloadWeight.addAll(searchModel.value.sr. ?? []);
      flickrImages.addAll(searchModel.value.flickrImages ?? []);
      // engines.addAll(searchModel.value.engines??[]);
    } catch (e, st) {
      isLoader.value = false;
      log("Error Message11: $e : $st");
    } finally {
      isLoader.value = false;
    }
  }
}
