import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_firebase/helper/api_res_controller.dart';
import 'package:login_firebase/modules/add.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  Controller controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Demo App"),
      ),
      body: Stack(
        children: [
          Obx(
            () => controller.isLoader.value
                ? const Center(child: CircularProgressIndicator())
                : ListView.builder(
                    itemCount:
                        controller.searchModel.value.payloadWeights?.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(top: 15,left: 15,right: 15),
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.black12,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(width: 2,color: Colors.brown),
                              ),
                              child: ListTile(
                                leading: GestureDetector(
                                  onTap: () {
                                    Get.to(Add(
                                      image: controller.flickrImages[index],
                                      text:
                                          "${controller.searchModel.value.payloadWeights?[index].id}",
                                      title:
                                          "${controller.searchModel.value.payloadWeights?[index].name}",
                                      kg: "${controller.searchModel.value.payloadWeights?[index].kg}",
                                    ));
                                  },
                                  child: Image.network(
                                    controller.flickrImages[index],
                                    width: 60,
                                  ),
                                ),
                                title: Text(
                                  "${controller.searchModel.value.payloadWeights?[index].id?.toUpperCase()}",
                                  style: const TextStyle(color: Colors.black),
                                ),
                                subtitle: Text(
                                  "${controller.searchModel.value.payloadWeights?[index].name}",
                                  style: const TextStyle(color: Colors.black),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
