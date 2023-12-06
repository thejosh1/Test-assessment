import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/utils/dimensions.dart';

class RequestADevice extends StatefulWidget {
  const RequestADevice({super.key});

  @override
  State<RequestADevice> createState() => _RequestADeviceState();
}

class _RequestADeviceState extends State<RequestADevice> {
  late bool isTapped;
  @override
  void initState() {
    super.initState();
    isTapped = true;
  }

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
        titleSpacing: Dimensions.width30,
        title: Text("Request A Device", style: TextStyle(fontWeight: FontWeight.w700, fontSize: Dimensions.font20, color: Colors.black),),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20, top: Dimensions.height45),
          child: Column(
            children: [
              Container(
                width: double.maxFinite,
                height: Dimensions.height45+5,
                padding: EdgeInsets.only(left: isTapped?Dimensions.width30:Dimensions.width10-5, right: isTapped?Dimensions.width10-5:Dimensions.width30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  color: Colors.grey.withOpacity(0.6)
                ),
                child: GestureDetector(
                  onTap: () {
                    isTapped = !isTapped;
                    setState(() {});
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      isTapped?Text("Current orders", style: TextStyle(fontWeight: FontWeight.w400, fontSize: Dimensions.font16, color: Colors.grey),):Container(
                        height: Dimensions.height45-5,
                        width: Dimensions.width10*10+40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(Dimensions.radius20),
                            color: Colors.white
                        ),
                        child: Center(
                          child: Text("Current Orders", style: TextStyle(fontSize: Dimensions.font16, fontWeight: FontWeight.w400, color: Colors.black),),
                        ),
                      ),
                      SizedBox(width: Dimensions.width10,),
                      isTapped?Container(
                        height: Dimensions.height45-5,
                        width: Dimensions.width10*10+40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(Dimensions.radius20),
                            color: Colors.white
                        ),
                        child: Center(
                          child: Text("Order a Device", style: TextStyle(fontSize: Dimensions.font16, fontWeight: FontWeight.w400, color: Colors.black),),
                        ),
                      ):Text("Order a Device", style: TextStyle(fontWeight: FontWeight.w400, fontSize: Dimensions.font16, color: Colors.grey),),
                    ],
                  ),
                ),
              ),
              SizedBox(height: Dimensions.height30,),
              isTapped?Column(
                children: [
                  Container(
                    height: Dimensions.height100+50,
                    width: double.maxFinite,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(Dimensions.radius15-5),
                        color: Colors.white
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Wellue BP2 connect device", style: TextStyle(fontSize: Dimensions.font16, fontWeight: FontWeight.w600, color: Colors.black),),
                                Container(
                                  height: Dimensions.height30,
                                  width: Dimensions.width10*10,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(Dimensions.radius15-5),
                                      color: Colors.grey.withOpacity(0.8)
                                  ),
                                  child: Center(
                                    child: Text("Measures 1 vital", style: TextStyle(fontWeight: FontWeight.w400, fontSize: Dimensions.font16-4, color: Colors.black),),
                                  ),
                                ),
                                SizedBox(height: Dimensions.height10-5,),
                                Text("25,000", style: TextStyle(fontSize: Dimensions.font20, fontWeight: FontWeight.w700, color: Colors.blue),)
                              ],
                            ),
                            Container(
                              width: Dimensions.width45+5,
                              height: Dimensions.height45+5,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey.withOpacity(0.5)
                              ),
                            )
                          ],
                        ),
                        Container(
                          width: Dimensions.width10*10,
                          height: Dimensions.height45-5,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(Dimensions.radius15-5),
                              color: Colors.blue
                          ),
                          child: Center(
                            child: Text("Order Now", style: TextStyle(fontSize: Dimensions.font16, fontWeight: FontWeight.w400, color: Colors.white),),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: Dimensions.height20,),
                  Container(
                    height: Dimensions.height100+50,
                    width: double.maxFinite,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(Dimensions.radius15-5),
                        color: Colors.white
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Wellue BP2 connect device", style: TextStyle(fontSize: Dimensions.font16, fontWeight: FontWeight.w600, color: Colors.black),),
                                Container(
                                  height: Dimensions.height30,
                                  width: Dimensions.width10*10,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(Dimensions.radius15-5),
                                      color: Colors.grey.withOpacity(0.8)
                                  ),
                                  child: Center(
                                    child: Text("Measures 1 vital", style: TextStyle(fontWeight: FontWeight.w400, fontSize: Dimensions.font16-4, color: Colors.black),),
                                  ),
                                ),
                                SizedBox(height: Dimensions.height10-5,),
                                Text("25,000", style: TextStyle(fontSize: Dimensions.font20, fontWeight: FontWeight.w700, color: Colors.blue),)
                              ],
                            ),
                            Container(
                              width: Dimensions.width45+5,
                              height: Dimensions.height45+5,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey.withOpacity(0.5)
                              ),
                            )
                          ],
                        ),
                        Container(
                          width: Dimensions.width10*10,
                          height: Dimensions.height45-5,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(Dimensions.radius15-5),
                              color: Colors.blue
                          ),
                          child: Center(
                            child: Text("Order Now", style: TextStyle(fontSize: Dimensions.font16, fontWeight: FontWeight.w400, color: Colors.white),),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: Dimensions.height20,),
                  Container(
                    height: Dimensions.height100+50,
                    width: double.maxFinite,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(Dimensions.radius15-5),
                        color: Colors.white
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Wellue BP2 connect device", style: TextStyle(fontSize: Dimensions.font16, fontWeight: FontWeight.w600, color: Colors.black),),
                                Container(
                                  height: Dimensions.height30,
                                  width: Dimensions.width10*10,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(Dimensions.radius15-5),
                                      color: Colors.grey.withOpacity(0.8)
                                  ),
                                  child: Center(
                                    child: Text("Measures 1 vital", style: TextStyle(fontWeight: FontWeight.w400, fontSize: Dimensions.font16-4, color: Colors.black),),
                                  ),
                                ),
                                SizedBox(height: Dimensions.height10-5,),
                                Text("25,000", style: TextStyle(fontSize: Dimensions.font20, fontWeight: FontWeight.w700, color: Colors.blue),)
                              ],
                            ),
                            Container(
                              width: Dimensions.width45+5,
                              height: Dimensions.height45+5,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey.withOpacity(0.5)
                              ),
                            )
                          ],
                        ),
                        Container(
                          width: Dimensions.width10*10,
                          height: Dimensions.height45-5,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(Dimensions.radius15-5),
                              color: Colors.blue
                          ),
                          child: Center(
                            child: Text("Order Now", style: TextStyle(fontSize: Dimensions.font16, fontWeight: FontWeight.w400, color: Colors.white),),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: Dimensions.height20,),
                  Container(
                    height: Dimensions.height100+50,
                    width: double.maxFinite,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(Dimensions.radius15-5),
                        color: Colors.white
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Wellue BP2 connect device", style: TextStyle(fontSize: Dimensions.font16, fontWeight: FontWeight.w600, color: Colors.black),),
                                Container(
                                  height: Dimensions.height30,
                                  width: Dimensions.width10*10,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(Dimensions.radius15-5),
                                      color: Colors.grey.withOpacity(0.8)
                                  ),
                                  child: Center(
                                    child: Text("Measures 1 vital", style: TextStyle(fontWeight: FontWeight.w400, fontSize: Dimensions.font16-4, color: Colors.black),),
                                  ),
                                ),
                                SizedBox(height: Dimensions.height10-5,),
                                Text("25,000", style: TextStyle(fontSize: Dimensions.font20, fontWeight: FontWeight.w700, color: Colors.blue),)
                              ],
                            ),
                            Container(
                              width: Dimensions.width45+5,
                              height: Dimensions.height45+5,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey.withOpacity(0.5)
                              ),
                            )
                          ],
                        ),
                        Container(
                          width: Dimensions.width10*10,
                          height: Dimensions.height45-5,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(Dimensions.radius15-5),
                              color: Colors.blue
                          ),
                          child: Center(
                            child: Text("Order Now", style: TextStyle(fontSize: Dimensions.font16, fontWeight: FontWeight.w400, color: Colors.white),),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: Dimensions.height20,),
                  Container(
                    height: Dimensions.height100+50,
                    width: double.maxFinite,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(Dimensions.radius15-5),
                        color: Colors.white
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Wellue BP2 connect device", style: TextStyle(fontSize: Dimensions.font16, fontWeight: FontWeight.w600, color: Colors.black),),
                                Container(
                                  height: Dimensions.height30,
                                  width: Dimensions.width10*10,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(Dimensions.radius15-5),
                                      color: Colors.grey.withOpacity(0.8)
                                  ),
                                  child: Center(
                                    child: Text("Measures 1 vital", style: TextStyle(fontWeight: FontWeight.w400, fontSize: Dimensions.font16-4, color: Colors.black),),
                                  ),
                                ),
                                SizedBox(height: Dimensions.height10-5,),
                                Text("25,000", style: TextStyle(fontSize: Dimensions.font20, fontWeight: FontWeight.w700, color: Colors.blue),)
                              ],
                            ),
                            Container(
                              width: Dimensions.width45+5,
                              height: Dimensions.height45+5,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey.withOpacity(0.5)
                              ),
                            )
                          ],
                        ),
                        Container(
                          width: Dimensions.width10*10,
                          height: Dimensions.height45-5,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(Dimensions.radius15-5),
                              color: Colors.blue
                          ),
                          child: Center(
                            child: Text("Order Now", style: TextStyle(fontSize: Dimensions.font16, fontWeight: FontWeight.w400, color: Colors.white),),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: Dimensions.height20,),
                  Container(
                    height: Dimensions.height100+50,
                    width: double.maxFinite,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(Dimensions.radius15-5),
                        color: Colors.white
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Wellue BP2 connect device", style: TextStyle(fontSize: Dimensions.font16, fontWeight: FontWeight.w600, color: Colors.black),),
                                Container(
                                  height: Dimensions.height30,
                                  width: Dimensions.width10*10,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(Dimensions.radius15-5),
                                      color: Colors.grey.withOpacity(0.8)
                                  ),
                                  child: Center(
                                    child: Text("Measures 1 vital", style: TextStyle(fontWeight: FontWeight.w400, fontSize: Dimensions.font16-4, color: Colors.black),),
                                  ),
                                ),
                                SizedBox(height: Dimensions.height10-5,),
                                Text("25,000", style: TextStyle(fontSize: Dimensions.font20, fontWeight: FontWeight.w700, color: Colors.blue),)
                              ],
                            ),
                            Container(
                              width: Dimensions.width45+5,
                              height: Dimensions.height45+5,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey.withOpacity(0.5)
                              ),
                            )
                          ],
                        ),
                        Container(
                          width: Dimensions.width10*10,
                          height: Dimensions.height45-5,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(Dimensions.radius15-5),
                              color: Colors.blue
                          ),
                          child: Center(
                            child: Text("Order Now", style: TextStyle(fontSize: Dimensions.font16, fontWeight: FontWeight.w400, color: Colors.white),),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: Dimensions.height20,),
                ],
              ):Column(
                children: [
                  Container(
                    height: Dimensions.height100,
                    width: double.maxFinite,
                    padding: EdgeInsets.only(left: Dimensions.width20, top: Dimensions.height10, right: Dimensions.width20, bottom: Dimensions.height10),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(Dimensions.radius15-5),
                        color: Colors.white
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey
                          ),
                        ),
                        SizedBox(width: Dimensions.width30,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Wellue BP2 connect device", style: TextStyle(fontWeight: FontWeight.w400, fontSize: Dimensions.font16-4),),
                            SizedBox(height: Dimensions.height20,),
                            Text("Arriving on", style: TextStyle(fontSize: Dimensions.font16-6, fontWeight: FontWeight.w400, color: Colors.grey),),
                            SizedBox(height: Dimensions.height10,),
                            Text("25th june 2022", style: TextStyle(fontWeight: FontWeight.w400, fontSize: Dimensions.font16-4, color: Colors.blue),),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: Dimensions.height20,),
                  Container(
                    height: Dimensions.height100,
                    width: double.maxFinite,
                      padding: EdgeInsets.only(left: Dimensions.width20, top: Dimensions.height10, right: Dimensions.width20, bottom: Dimensions.height10),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(Dimensions.radius15-5),
                        color: Colors.white
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey
                          ),
                        ),
                        SizedBox(width: Dimensions.width30,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Wellue BP2 connect device", style: TextStyle(fontWeight: FontWeight.w400, fontSize: Dimensions.font16-4),),
                            SizedBox(height: Dimensions.height20,),
                            Text("Arriving on", style: TextStyle(fontSize: Dimensions.font16-6, fontWeight: FontWeight.w400, color: Colors.grey),),
                            SizedBox(height: Dimensions.height10,),
                            Text("25th june 2022", style: TextStyle(fontWeight: FontWeight.w400, fontSize: Dimensions.font16-4, color: Colors.blue),),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: Dimensions.height20,),
                  Container(
                    height: Dimensions.height100,
                    width: double.maxFinite,
                    padding: EdgeInsets.only(left: Dimensions.width20, top: Dimensions.height10, right: Dimensions.width20, bottom: Dimensions.height10),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(Dimensions.radius15-5),
                        color: Colors.white
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey
                          ),
                        ),
                        SizedBox(width: Dimensions.width30,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Wellue BP2 connect device", style: TextStyle(fontWeight: FontWeight.w400, fontSize: Dimensions.font16-4),),
                            SizedBox(height: Dimensions.height20,),
                            Text("Arriving on", style: TextStyle(fontSize: Dimensions.font16-6, fontWeight: FontWeight.w400, color: Colors.grey),),
                            SizedBox(height: Dimensions.height10,),
                            Text("25th june 2022", style: TextStyle(fontWeight: FontWeight.w400, fontSize: Dimensions.font16-4, color: Colors.blue),),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: Dimensions.height20,),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
