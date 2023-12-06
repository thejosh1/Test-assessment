import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/utils/dimensions.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                SizedBox(
                  height: (Dimensions.height20+9)*10,
                  width: double.maxFinite,
                ),
                Container(
                  height: Dimensions.height100*2+50,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(Dimensions.radius30), bottomRight: Radius.circular(Dimensions.radius30)),
                    color: Colors.blue
                  ),
                ),
                Positioned(
                  left: 30,
                  top: 50,
                  child: GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Container(
                      height: Dimensions.height45-5,
                      width: Dimensions.width45-5,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white.withOpacity(0.2)
                      ),
                      child: Center(
                          child: Icon(Icons.arrow_back_ios, size: Dimensions.width20+4, color: Colors.white,)
                      ),
                    ),
                  ),
                ),
                Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: Dimensions.height100,
                      width: Dimensions.width10*10,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Container(
                          width: Dimensions.width20*4+10,
                          height: Dimensions.height20*4+10,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage("assets/images/avatar.png"),
                                  fit: BoxFit.contain
                              )
                          ),
                        ),
                      ),
                    )
                )
              ],
            ),
            SizedBox(height: Dimensions.height20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Dr. Muiz Sanni", style: TextStyle(fontWeight: FontWeight.w600, fontSize: Dimensions.font20, color: Colors.black),),
                Text("Cardiovascular surgeon", style: TextStyle(fontSize: Dimensions.font16-2, fontWeight: FontWeight.w400, color: Colors.grey),),
                SizedBox(height: Dimensions.height20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: Dimensions.width30,
                      height: Dimensions.height30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey.withBlue(200).withOpacity(0.6)
                      ),
                      child: Icon(Icons.phone, color: Colors.blue, size: Dimensions.width20,),
                    ),
                    SizedBox(width: Dimensions.width20,),
                    Container(
                      width: Dimensions.width30,
                      height: Dimensions.height30,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey.withBlue(200).withOpacity(0.6)
                      ),
                      child: Icon(Icons.message, color: Colors.blue, size: Dimensions.width20,),
                    ),
                    SizedBox(width: Dimensions.width20,),
                    Container(
                      width: Dimensions.width30,
                      height: Dimensions.height30,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey.withBlue(200).withOpacity(0.6)
                      ),
                      child: Icon(Icons.medication, color: Colors.blue, size: Dimensions.width20,),
                    ),
                    SizedBox(width: Dimensions.width20,),
                    Container(
                      width: Dimensions.width30,
                      height: Dimensions.height30,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey.withBlue(200).withOpacity(0.6)
                      ),
                      child: Icon(Icons.house, color: Colors.blue, size: Dimensions.width20,),
                    ),
                    SizedBox(width: Dimensions.width20,),
                  ],
                )
              ],
            ),
            SizedBox(height: Dimensions.height20),
            Padding(
              padding: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("About Us", style: TextStyle(fontWeight: FontWeight.w700, fontSize: Dimensions.font20, color: Colors.black),),
                  Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque rutrum tempor erat id interdum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.",
                  style: TextStyle(fontSize: Dimensions.font16, fontWeight: FontWeight.w400, color: Colors.grey),
                  ),
                  SizedBox(height: Dimensions.height20,),
                  Row(
                    children: [
                      Container(
                        height: Dimensions.height45-5,
                        width: Dimensions.width20*4,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(Dimensions.radius30),
                            color: Colors.grey.withOpacity(0.4)
                        ),
                        child: Center(
                            child: Text("MBBS", style: TextStyle(fontWeight: FontWeight.w400, fontSize: Dimensions.font16, color: Colors.grey),)
                        ),
                      ),
                      SizedBox(width: Dimensions.width20,),
                      Container(
                        height: Dimensions.height45-5,
                        width: Dimensions.width20*5,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(Dimensions.radius30),
                            color: Colors.grey.withOpacity(0.4)
                        ),
                        child: Center(
                            child: Text("CONSULTANT", style: TextStyle(fontWeight: FontWeight.w400, fontSize: Dimensions.font16, color: Colors.grey),)
                        ),
                      ),
                      SizedBox(width: Dimensions.width20,),
                      Container(
                        height: Dimensions.height45-5,
                        width: Dimensions.width20*4,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(Dimensions.radius30),
                            color: Colors.grey.withOpacity(0.4)
                        ),
                        child: Center(
                            child: Text("MIA", style: TextStyle(fontWeight: FontWeight.w400, fontSize: Dimensions.font16, color: Colors.grey),)
                        ),
                      ),
                      SizedBox(width: Dimensions.width20,),
                    ],
                  ),
                  SizedBox(height: Dimensions.height10,),
                  Row(
                    children: [
                      Container(
                        height: Dimensions.height45-5,
                        width: Dimensions.width20*6,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(Dimensions.radius30),
                            color: Colors.grey.withOpacity(0.4)
                        ),
                        child: Center(
                            child: Text("MRC (UK)", style: TextStyle(fontWeight: FontWeight.w400, fontSize: Dimensions.font16, color: Colors.grey),)
                        ),
                      ),
                      SizedBox(width: Dimensions.width20,),
                      Container(
                        height: Dimensions.height45-5,
                        width: Dimensions.width20*6,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(Dimensions.radius30),
                            color: Colors.grey.withOpacity(0.4)
                        ),
                        child: Center(
                            child: Text("FCPS(PAKI)", style: TextStyle(fontWeight: FontWeight.w400, fontSize: Dimensions.font16, color: Colors.grey),)
                        ),
                      ),
                      SizedBox(width: Dimensions.width20,),

                    ],
                  ),
                  SizedBox(height: Dimensions.height20,),
                  Text("Patient Reiews", style: TextStyle(fontWeight: FontWeight.w700, fontSize: Dimensions.font20, color: Colors.black),),
                  SizedBox(height: Dimensions.height20,),
                ],
              ),
            ),
            Container(
              height: Dimensions.height100+50,
              width: double.maxFinite,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    height: Dimensions.height100+50,
                    width: Dimensions.width30*10,
                    margin: EdgeInsets.only(left: Dimensions.width20,),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius15-5),
                      border: Border.all(color: Colors.grey, width: 1)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Row(
                                children: [
                                  Container(
                                    height: Dimensions.height30,
                                    width: Dimensions.width30,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                            image: AssetImage("assets/images/avatar.png"),
                                            fit: BoxFit.cover
                                        )
                                    ),
                                  ),
                                  SizedBox(width: Dimensions.width10,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Richard Okafor", style: TextStyle(fontSize: Dimensions.font16, fontWeight: FontWeight.w600, color: Colors.black),),
                                      Row(
                                        children: List.generate(5, (index) => Icon(Icons.star, color: Colors.amber, size: Dimensions.width15,)),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Text("23 July 2022", style: TextStyle(fontWeight: FontWeight.w600, fontSize: Dimensions.font16-3, color: Colors.blue),)
                          ],
                        ),
                        SizedBox(height: Dimensions.height20,),
                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque rutrum tempor erat id interdum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.",
                          style: TextStyle(fontSize: Dimensions.font16-4, fontWeight: FontWeight.w400, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: Dimensions.height100+50,
                    width: Dimensions.width30*10,
                    margin: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimensions.radius15-5),
                        border: Border.all(color: Colors.grey, width: 1)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Row(
                                children: [
                                  Container(
                                    height: Dimensions.height30,
                                    width: Dimensions.width30,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                            image: AssetImage("assets/images/avatar.png"),
                                            fit: BoxFit.cover
                                        )
                                    ),
                                  ),
                                  SizedBox(width: Dimensions.width10,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Richard Okafor", style: TextStyle(fontSize: Dimensions.font16, fontWeight: FontWeight.w600, color: Colors.black),),
                                      Row(
                                        children: List.generate(5, (index) => Icon(Icons.star, color: Colors.amber, size: Dimensions.width15,)),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Text("23 July 2022", style: TextStyle(fontWeight: FontWeight.w600, fontSize: Dimensions.font16-3, color: Colors.blue),)
                          ],
                        ),
                        SizedBox(height: Dimensions.height20,),
                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque rutrum tempor erat id interdum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.",
                          style: TextStyle(fontSize: Dimensions.font16-4, fontWeight: FontWeight.w400, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20, top: Dimensions.height20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Write a review", style: TextStyle(fontWeight: FontWeight.w700, fontSize: Dimensions.font20, color: Colors.black),),
                  SizedBox(height: Dimensions.height20,),
                  Container(
                    height: Dimensions.height100,
                    width: double.maxFinite,
                    padding: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20, top: Dimensions.height20, bottom: Dimensions.height10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius15-5),
                      color: Colors.grey.withOpacity(0.4)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: List.generate(5, (index) => Icon(Icons.star, color: Colors.grey, size: Dimensions.width30+2,)),
                        ),
                        SizedBox(height: Dimensions.height10,),
                        Text("Slide accross to leave a rating", style: TextStyle(fontSize: Dimensions.font16, fontWeight: FontWeight.w400, color: Colors.grey),)
                      ],
                    ),
                  ),
                  SizedBox(height: Dimensions.height10,),
                  Container(
                    height: Dimensions.height100-30,
                    width: double.maxFinite,
                    padding: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20, top: Dimensions.height20, bottom: Dimensions.height10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimensions.radius15-5),
                        color: Colors.grey.withOpacity(0.4)
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Add Your name here', // Grey hint text
                        hintStyle: TextStyle(color: Colors.grey),
                        contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                        border: InputBorder.none, // Remove the default border
                      )
                    )
                  ),
                  SizedBox(height: Dimensions.height10,),
                  Container(
                      height: Dimensions.height100+50,
                      width: double.maxFinite,
                      padding: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20, top: Dimensions.height20, bottom: Dimensions.height10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(Dimensions.radius15-5),
                          color: Colors.grey.withOpacity(0.4)
                      ),
                      child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Write your review here', // Grey hint text
                            hintStyle: TextStyle(color: Colors.grey),
                            border: InputBorder.none, // Remove the default border
                          )
                      )
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
