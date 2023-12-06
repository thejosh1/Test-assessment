import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/about_page.dart';
import 'package:untitled/utils/dimensions.dart';

class TakeACheckUp extends StatelessWidget {
  const TakeACheckUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Container(
            height: Dimensions.height30,
            width: Dimensions.width30,
            margin: EdgeInsets.only(left: Dimensions.width20),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey.withOpacity(0.5)
            ),
            child: Center(
              child: Icon(Icons.arrow_back_ios, color: Colors.black, size: Dimensions.width10,),
            ),
          ),
        ),
        title: Text("Take a quick checkup", style: TextStyle(fontWeight: FontWeight.w700, fontSize: Dimensions.font20, color: Colors.black),),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20,top: Dimensions.height30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: Dimensions.height100,
              width: double.maxFinite,
              padding: EdgeInsets.only(left: Dimensions.width20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius15-5),
                border: Border.all(color: Colors.grey, width: 1),
                color: Colors.white
              ),
              child: Row(
                children: [
                  Container(
                    height: Dimensions.height45+5,
                    width: Dimensions.width45+5,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue.withOpacity(0.4)
                    ),
                    child: Center(
                      child: Icon(Icons.search, color: Colors.blue, size: Dimensions.width20+4,),
                    ),
                  ),
                  SizedBox(width: Dimensions.width30,),
                  Text("Search for doctors/hospitals/\npharmacies by their names", style: TextStyle(fontSize: Dimensions.font16-4, fontWeight: FontWeight.w400, color: Colors.black),)
                ],
              ),
            ),
            SizedBox(height: Dimensions.height45-5,),
            Text("Affiliated Medical Personnels", style: TextStyle(fontWeight: FontWeight.w700, fontSize: Dimensions.font16, color: Colors.black),),
            SizedBox(height: Dimensions.height20,),
            GestureDetector(
              onTap: () {
                Get.to(()=> const AboutPage());
              },
              child: Row(
                children: [
                  Container(
                    width: Dimensions.width45-5,
                    height: Dimensions.height45-5,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey,
                      image: DecorationImage(
                          image: AssetImage("assets/images/avatar.png",),
                          fit: BoxFit.cover
                      )
                    ),
                  ),
                  SizedBox(width: Dimensions.width20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Dr. Nelson Yang", style: TextStyle(fontSize: Dimensions.font16-2, fontWeight: FontWeight.w500, color: Colors.black),),
                      Text("Cardiologist surgeon, Freelance Specialist", style: TextStyle(fontSize: Dimensions.font16-4, fontWeight: FontWeight.w400, color: Colors.grey),)
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: Dimensions.height10,),
            const Divider(),
            SizedBox(height: Dimensions.height20,),
            Row(
              children: [
                Container(
                  width: Dimensions.width45-5,
                  height: Dimensions.height45-5,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey,
                      image: DecorationImage(
                          image: AssetImage("assets/images/avatar.png",),
                          fit: BoxFit.cover
                      )
                  ),
                ),
                SizedBox(width: Dimensions.width20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Dr. Muiz Sanni", style: TextStyle(fontSize: Dimensions.font16-2, fontWeight: FontWeight.w500, color: Colors.black),),
                    Text("Design doctor, Walls and Gates hospital", style: TextStyle(fontSize: Dimensions.font16-4, fontWeight: FontWeight.w400, color: Colors.grey),)
                  ],
                )
              ],
            ),
            SizedBox(height: Dimensions.height10,),
            const Divider(),
            SizedBox(height: Dimensions.height20,),
            Row(
              children: [
                Container(
                  width: Dimensions.width45-5,
                  height: Dimensions.height45-5,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey,
                      image: DecorationImage(
                          image: AssetImage("assets/images/avatar.png",),
                          fit: BoxFit.cover
                      )
                  ),
                ),
                SizedBox(width: Dimensions.width20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("New Life Medical Hospital Center", style: TextStyle(fontSize: Dimensions.font16-2, fontWeight: FontWeight.w500, color: Colors.black),),
                    Text("Hospital", style: TextStyle(fontSize: Dimensions.font16-4, fontWeight: FontWeight.w400, color: Colors.grey),)
                  ],
                )
              ],
            ),
            SizedBox(height: Dimensions.height10,),
            const Divider(),
            SizedBox(height: Dimensions.height20,),
            Row(
              children: [
                Container(
                  width: Dimensions.width45-5,
                  height: Dimensions.height45-5,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey,
                      image: DecorationImage(
                          image: AssetImage("assets/images/avatar.png",),
                          fit: BoxFit.cover
                      )
                  ),
                ),
                SizedBox(width: Dimensions.width20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Rx Pharmacy", style: TextStyle(fontSize: Dimensions.font16-2, fontWeight: FontWeight.w500, color: Colors.black),),
                    Text("Pharmacy", style: TextStyle(fontSize: Dimensions.font16-4, fontWeight: FontWeight.w400, color: Colors.grey),)
                  ],
                )
              ],
            ),
            SizedBox(height: Dimensions.height10,),
            const Divider(),
          ],
        ),
      ),
    );
  }
}
