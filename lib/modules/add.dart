import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:login_firebase/helper/api_res_controller.dart';

class Add extends StatelessWidget {
  Add(
      {required this.image,
      required this.text,
      required this.title,
      required this.kg});

  Controller controller = Get.find();

  String image;
  String text;
  String title;
  String kg;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(text.toUpperCase()),
      ),
      body: Center(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 40, right: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40,
                ),
                Center(child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(width: 2),
                    ),
                    padding: EdgeInsets.all(4),
                    child: Image.network(image, height: 150))),
                SizedBox(
                  height: 15,
                ),
                Divider(color: Colors.black, thickness: 1),
                SizedBox(height: 2,),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  color: Colors.black12,
                  ),
                  padding: EdgeInsets.all(5),
                  child: Flexible(
                    child: RichText(
                      overflow: TextOverflow.ellipsis,
                      strutStyle: StrutStyle(fontSize: 12.0),
                      text: TextSpan(
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 18),
                          text: "Name:- ${title}"),
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.black12,
                  ),
                  padding: EdgeInsets.all(5),
                  child: Text(
                    "Dob:- ${dateTimeformat(controller.searchModel.value.firstFlight)}",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 18),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.black12,
                  ),
                  padding: EdgeInsets.all(5),
                  child: Text(
                    "Email:- ${text}@gmail.com",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 18),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.black12,
                  ),
                  padding: EdgeInsets.all(5),
                  child: Text(
                    "Country:- ${controller.searchModel.value.country}",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 18),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.black12,
                  ),
                  padding: EdgeInsets.all(5),
                  child: Text(
                    "Kg:- ${kg}",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 18),
                  ),
                )
              ],
            ),
          ),
        ),
        // child: ListTile(
        //   leading: Container(
        //       decoration: BoxDecoration(
        //           borderRadius: BorderRadius.circular(20)),
        //       child: Image.network(
        //        image,
        //         width: 60,
        //       )),
        //   title: Text(
        //     "${text}",
        //     style: const TextStyle(color: Colors.black),
        //   ),
        //   subtitle: Text(
        //     "${title}",
        //     style: const TextStyle(color: Colors.black),
        //   ),
        // ),
      ),
    );
  }

  dateTimeformat(DateTime? date) {
    final DateFormat formatter = DateFormat('yyyy-MM-dd');
    final String formatted = formatter.format(date!);
    // print("-----------$formatted");
    return formatted;
  }
}
