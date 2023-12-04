import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/utils/dimensions.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back, color: Colors.black,),
        title: Text("Live Reading", style: TextStyle(fontSize: Dimensions.font26, fontWeight: FontWeight.w700, color: Colors.black),),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20, top: Dimensions.height45),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  height: Dimensions.height100,
                  width: Dimensions.width10*10,
                  decoration: const BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle
                  ),
                ),
                SizedBox(width: Dimensions.width10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Dr Usman bala", style: TextStyle(fontSize: Dimensions.font16-2, fontWeight: FontWeight.w400, color: Colors.black),),
                    SizedBox(height: Dimensions.height10,),
                    Text("Dentist", style: TextStyle(fontSize: Dimensions.font16-2, fontWeight: FontWeight.w400, color: Colors.black),),
                    SizedBox(height: Dimensions.height10,),
                    Row(
                      children:  List.generate(4, (index) => Icon(Icons.star, color: Colors.amber, size: Dimensions.width10+2,)),
                    )
                  ],
                )
              ],
            ),
            SizedBox(height: Dimensions.height30,),
            Text("Notification", style: TextStyle(fontSize: Dimensions.font20, fontWeight: FontWeight.w700, color: Colors.black),),
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi scelerisque, purus hendrerit dignissim cursus, sapien quam congue magna, tincidunt mattis ex ante sit amet nunc. Duis elementum, elit vel venenatis bibendum, lacus nibh commodo neque, id tincidunt velit sem et nisl. In id lacus eget libero sodales lobortis."
                ,style: TextStyle(fontWeight: FontWeight.w400, fontSize: Dimensions.font16, color: Colors.black),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Container(
                height: Dimensions.height30*2,
                width: double.maxFinite,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius15-10),
                    color: Colors.grey.withGreen(180).withOpacity(0.4)
                ),
                child: Center(
                  child: Text("Book Appointment", style: TextStyle(fontWeight: FontWeight.w400, fontSize: Dimensions.font16, color: Colors.green),),
                ),
              ),
            ),
            SizedBox(height: Dimensions.height20,)
          ],
        ),
      ),
    );
  }
}
