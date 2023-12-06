import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/request_a_device.dart';
import 'package:untitled/take_a_checkup.dart';
import 'package:untitled/notification_page.dart';
import 'package:untitled/utils/dimensions.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20, top: Dimensions.height45),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Container(
                          height: Dimensions.height30,
                          width: Dimensions.width30,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey,
                            image: DecorationImage(
                              image: AssetImage("assets/images/avatar.png"),
                              fit: BoxFit.cover
                            )
                          ),
                        ),
                        SizedBox(width: Dimensions.width10),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Good Morning", style: TextStyle(fontWeight: FontWeight.w400, fontSize: Dimensions.font16-2, color: Colors.black)),
                              Text("Sanni Muiz", style: TextStyle(fontSize: Dimensions.font20, fontWeight: FontWeight.w700, color: Colors.black),)
                            ]
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Icon(Icons.people, color: Colors.black, size: Dimensions.width30,),
                      SizedBox(width: Dimensions.width10,),
                      Icon(Icons.notifications, color: Colors.black, size: Dimensions.width30,)
                    ],
                  )
                ],
              ),
              SizedBox(height: Dimensions.height30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(()=>const TakeACheckUp());
                    },
                    child: Container(
                      width: Dimensions.width15*10,
                      height: Dimensions.height45-5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimensions.radius15-5),
                        color: Colors.pink.withOpacity(0.4)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: Dimensions.width30,
                            height: Dimensions.height30,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.pink
                            ),
                            child: Center(
                              child: Icon(Icons.electric_bolt, color: Colors.white, size: Dimensions.width15+3,),
                            ),
                          ),
                          Text("Take a quick check-up", style: TextStyle(fontWeight: FontWeight.w400, fontSize: Dimensions.font16-6, color: Colors.pink),)
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: Dimensions.width10,),
                  GestureDetector(
                    onTap: () {
                      Get.to(()=> const RequestADevice());
                    },
                    child: Container(
                      width: Dimensions.width15*10,
                      height: Dimensions.height45-5,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(Dimensions.radius15-5),
                          color: Colors.purple.withOpacity(0.2)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: Dimensions.width30,
                            height: Dimensions.height30,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.purple
                            ),
                            child: Center(
                              child: Icon(Icons.computer, color: Colors.white, size: Dimensions.width15+3,),
                            ),
                          ),
                          Text("Request a device", style: TextStyle(fontWeight: FontWeight.w400, fontSize: Dimensions.font16-6, color: Colors.purple),)
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: Dimensions.height45-5,),
              GestureDetector(
                onTap: () {
                  Get.to(()=>const NotificationPage());
                },
                child: Container(
                  height: Dimensions.height100-30,
                  width: double.maxFinite,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                    color: Colors.white,
                    border: Border.all(color: Colors.grey.withOpacity(0.4), width: 1)
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Container(
                              width: Dimensions.width30,
                              height: Dimensions.height30,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey.withBlue(220).withOpacity(0.4)
                              ),
                              child: Center(
                                child: Icon(Icons.messenger_rounded, color: Colors.blue, size: Dimensions.width20-2,),
                              ),
                            ),
                            SizedBox(width: Dimensions.width10,),
                            Text("You have a new message from Dr Kelvin", style: TextStyle(fontWeight: FontWeight.w400, fontSize: Dimensions.font16-4, color: Colors.black),),
                          ],
                        )
                      ),
                      Icon(Icons.arrow_forward_ios, color: Colors.blue, size: Dimensions.width20+4,)
                    ],
                  ),
                ),
              ),
              SizedBox(height: Dimensions.height10-5,),
              GestureDetector(
                onTap: () {
                  Get.to(()=>const NotificationPage());
                },
                child: Container(
                  height: Dimensions.height100-30,
                  width: double.maxFinite,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                      color: Colors.white,
                      border: Border.all(color: Colors.grey.withOpacity(0.4), width: 1)
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Container(
                              width: Dimensions.width30,
                              height: Dimensions.height30,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey.withBlue(220).withOpacity(0.4)
                              ),
                              child: Center(
                                child: Icon(Icons.medication, color: Colors.blue, size: Dimensions.width20-2,),
                              ),
                            ),
                            SizedBox(width: Dimensions.width10,),
                            Text("Your malaria drugs have been exhausted", style: TextStyle(fontWeight: FontWeight.w400, fontSize: Dimensions.font16-4, color: Colors.black),),
                          ],
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios, color: Colors.blue, size: Dimensions.width20+4,)
                    ],
                  ),
                ),
              ),
              SizedBox(height: Dimensions.height10-5,),
              GestureDetector(
                onTap: () {
                  Get.to(()=>const NotificationPage());
                },
                child: Container(
                  height: Dimensions.height100-30,
                  width: double.maxFinite,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                      color: Colors.white,
                      border: Border.all(color: Colors.grey.withOpacity(0.4), width: 1)
                  ),
                  child: Row(
                    children: [
                      Expanded(
                          child: Row(
                            children: [
                              Container(
                        width: Dimensions.width30,
                        height: Dimensions.height30,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey.withBlue(220).withOpacity(0.4)
                        ),
                        child: Center(
                          child: Icon(Icons.person, color: Colors.blue, size: Dimensions.width20-2,),
                        ),
                      ),
                              SizedBox(width: Dimensions.width10,),
                              Text("Your Device is ready for pickup", style: TextStyle(fontWeight: FontWeight.w400, fontSize: Dimensions.font16-4, color: Colors.black),),
                            ],
                          )
                      ),
                      Icon(Icons.arrow_forward_ios, color: Colors.blue, size: Dimensions.width20+4,)
                    ],
                  ),
                ),
              ),
              SizedBox(height: Dimensions.height30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Row(children: [
                      Text("Vital Readings", style: TextStyle(fontWeight: FontWeight.w400, fontSize: Dimensions.font20-1, color: Colors.black),)
                    ],),
                  ),
                  Text("See history", style: TextStyle(fontSize: Dimensions.font16-2, fontWeight: FontWeight.w400, color: Colors.blue),)
                ],
              ),
              SizedBox(height: Dimensions.height20,),
              Container(
                width: double.maxFinite,
                height: Dimensions.height100*2,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      height: Dimensions.height100*2,
                      width: Dimensions.width15*10,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimensions.radius15-5),
                        border: Border.all(color: Colors.pink, width: 1)
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Row(
                              children: [
                                const Spacer(),
                                Container(
                                  width: Dimensions.width45-5,
                                  height: Dimensions.height45-5,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.pink
                                  ),
                                  child: Center(
                                    child: Icon(Icons.heart_broken, color: Colors.white, size: Dimensions.width20+4,),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: Dimensions.width10),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("77", style: TextStyle(fontSize: Dimensions.font20+10, fontWeight: FontWeight.w700, color: Colors.pink),),
                                Column(
                                  children: [
                                    SizedBox(height: Dimensions.height10-5,),
                                    Text("bpm", style: TextStyle(fontSize: Dimensions.font16-4, fontWeight: FontWeight.w400, color: Colors.pink),),
                                  ],
                                ),

                              ],
                            ),
                          ),
                          Spacer(),
                          Container(
                            width: double.maxFinite,
                            height: Dimensions.height20*3+20,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(Dimensions.radius15-5), bottomRight: Radius.circular(Dimensions.radius15-5),),
                              color: Colors.pink
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(top: Dimensions.height10, left: Dimensions.width20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Heart Rate (ECG)", style: TextStyle(fontWeight: FontWeight.w700, fontSize: Dimensions.font16, color: Colors.white),),
                                  SizedBox(height: Dimensions.height10-5,),
                                  Text("Measured 10 mins ago", style: TextStyle(fontSize: Dimensions.font16-8, fontWeight: FontWeight.w400, color: Colors.white.withOpacity(0.6)),),
                                  SizedBox(height: Dimensions.height10,),
                                  Container(
                                    width: Dimensions.width20*3,
                                    height: Dimensions.height20,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                                      color: Colors.white.withOpacity(0.4)
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Icon(Icons.emoji_emotions, color: Colors.white, size: Dimensions.width10,),
                                        Text("NORMAL", style: TextStyle(fontWeight: FontWeight.w700, fontSize: Dimensions.font16-6, color: Colors.white),)
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: Dimensions.width20,),
                    Container(
                      height: Dimensions.height100*2,
                      width: Dimensions.width15*10,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(Dimensions.radius15-5),
                          border: Border.all(color: Colors.purple, width: 1)
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Row(
                              children: [
                                const Spacer(),
                                Container(
                                  width: Dimensions.width45-5,
                                  height: Dimensions.height45-5,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.purple
                                  ),
                                  child: Center(
                                    child: Icon(Icons.water_drop_rounded, color: Colors.white, size: Dimensions.width20+4,),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: Dimensions.width10),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("90/60", style: TextStyle(fontSize: Dimensions.font20+10, fontWeight: FontWeight.w700, color: Colors.purple),),
                                Column(
                                  children: [
                                    SizedBox(height: Dimensions.height10-5,),
                                    Text("mmHg", style: TextStyle(fontSize: Dimensions.font16-4, fontWeight: FontWeight.w400, color: Colors.purple),),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const Spacer(),
                          Container(
                            width: double.maxFinite,
                            height: Dimensions.height20*3+20,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(Dimensions.radius15-5), bottomRight: Radius.circular(Dimensions.radius15-5),),
                                color: Colors.purple
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(top: Dimensions.height10, left: Dimensions.width20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Blood Pressure", style: TextStyle(fontWeight: FontWeight.w700, fontSize: Dimensions.font16, color: Colors.white),),
                                  SizedBox(height: Dimensions.height10-5,),
                                  Text("5 days ago", style: TextStyle(fontSize: Dimensions.font16-8, fontWeight: FontWeight.w400, color: Colors.white.withOpacity(0.6)),),
                                  SizedBox(height: Dimensions.height10,),
                                  Container(
                                    width: Dimensions.width20*3+10,
                                    height: Dimensions.height20,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(Dimensions.radius20),
                                        color: Colors.white.withOpacity(0.4)
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Icon(Icons.warning, color: Colors.white, size: Dimensions.width10,),
                                        Text("ABNORMAL", style: TextStyle(fontWeight: FontWeight.w700, fontSize: Dimensions.font16-6, color: Colors.white),)
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: Dimensions.width20,),
                    Container(
                      height: Dimensions.height100*2,
                      width: Dimensions.width15*10,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(Dimensions.radius15-5),
                          border: Border.all(color: Colors.deepPurple, width: 1)
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Row(
                              children: [
                                const Spacer(),
                                Container(
                                  width: Dimensions.width45-5,
                                  height: Dimensions.height45-5,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.deepPurple
                                  ),
                                  child: Center(
                                    child: Icon(Icons.air, color: Colors.white, size: Dimensions.width20+4,),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: Dimensions.width10),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("95%", style: TextStyle(fontSize: Dimensions.font20+10, fontWeight: FontWeight.w700, color: Colors.deepPurple),),
                              ],
                            ),
                          ),
                          Spacer(),
                          Container(
                            width: double.maxFinite,
                            height: Dimensions.height20*3+20,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(Dimensions.radius15-5), bottomRight: Radius.circular(Dimensions.radius15-5),),
                                color: Colors.deepPurple
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(top: Dimensions.height10, left: Dimensions.width20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Oxygen Saturation", style: TextStyle(fontWeight: FontWeight.w700, fontSize: Dimensions.font16, color: Colors.white),),
                                  SizedBox(height: Dimensions.height10-5,),
                                  Text("2 days ago", style: TextStyle(fontSize: Dimensions.font16-8, fontWeight: FontWeight.w400, color: Colors.white.withOpacity(0.6)),),
                                  SizedBox(height: Dimensions.height10,),
                                  Container(
                                    width: Dimensions.width20*3,
                                    height: Dimensions.height20,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(Dimensions.radius20),
                                        color: Colors.white.withOpacity(0.4)
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Icon(Icons.emoji_emotions, color: Colors.white, size: Dimensions.width10,),
                                        Text("NORMAL", style: TextStyle(fontWeight: FontWeight.w700, fontSize: Dimensions.font16-6, color: Colors.white),)
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: Dimensions.width10,),
                    Container(
                      height: Dimensions.height100*2,
                      width: Dimensions.width15*10,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(Dimensions.radius15-5),
                          border: Border.all(color: Colors.redAccent, width: 1)
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Row(
                              children: [
                                const Spacer(),
                                Container(
                                  width: Dimensions.width45-5,
                                  height: Dimensions.height45-5,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.redAccent
                                  ),
                                  child: Center(
                                    child: Icon(Icons.electric_bolt, color: Colors.white, size: Dimensions.width20+4,),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: Dimensions.width10),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("50", style: TextStyle(fontSize: Dimensions.font20+10, fontWeight: FontWeight.w700, color: Colors.redAccent),),
                                Column(
                                  children: [
                                    SizedBox(height: Dimensions.height10-5,),
                                    Text("milliseconds", style: TextStyle(fontSize: Dimensions.font16-4, fontWeight: FontWeight.w400, color: Colors.redAccent),),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const Spacer(),
                          Container(
                            width: double.maxFinite,
                            height: Dimensions.height20*3+20,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(Dimensions.radius15-5), bottomRight: Radius.circular(Dimensions.radius15-5),),
                                color: Colors.redAccent
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(top: Dimensions.height10, left: Dimensions.width20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Stress (HRV rate)", style: TextStyle(fontWeight: FontWeight.w700, fontSize: Dimensions.font16, color: Colors.white),),
                                  SizedBox(height: Dimensions.height10-5,),
                                  Text("Measured 10 mins ago", style: TextStyle(fontSize: Dimensions.font16-8, fontWeight: FontWeight.w400, color: Colors.white.withOpacity(0.6)),),
                                  SizedBox(height: Dimensions.height10,),
                                  Container(
                                    width: Dimensions.width20*3+10,
                                    height: Dimensions.height20,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(Dimensions.radius20),
                                        color: Colors.white.withOpacity(0.4)
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Icon(Icons.warning, color: Colors.white, size: Dimensions.width10,),
                                        Text("ABNORMAL", style: TextStyle(fontWeight: FontWeight.w700, fontSize: Dimensions.font16-6, color: Colors.white),)
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: Dimensions.width20,),
                    Container(
                      height: Dimensions.height100*2,
                      width: Dimensions.width15*10,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(Dimensions.radius15-5),
                          border: Border.all(color: Colors.blue, width: 1)
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Row(
                              children: [
                                const Spacer(),
                                Container(
                                  width: Dimensions.width45-5,
                                  height: Dimensions.height45-5,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.blue
                                  ),
                                  child: Center(
                                    child: Icon(Icons.water_drop_rounded, color: Colors.white, size: Dimensions.width20+4,),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: Dimensions.width10),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("70-80", style: TextStyle(fontSize: Dimensions.font20+10, fontWeight: FontWeight.w700, color: Colors.blue),),
                                Column(
                                  children: [
                                    SizedBox(height: Dimensions.height10-5,),
                                    Text("mg/DL", style: TextStyle(fontSize: Dimensions.font16-4, fontWeight: FontWeight.w400, color: Colors.blue),),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const Spacer(),
                          Container(
                            width: double.maxFinite,
                            height: Dimensions.height20*3+20,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(Dimensions.radius15-5), bottomRight: Radius.circular(Dimensions.radius15-5),),
                                color: Colors.blue
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(top: Dimensions.height10, left: Dimensions.width20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Blood Glucose", style: TextStyle(fontWeight: FontWeight.w700, fontSize: Dimensions.font16, color: Colors.white),),
                                  SizedBox(height: Dimensions.height10-5,),
                                  Text("Measured 10 mins ago", style: TextStyle(fontSize: Dimensions.font16-8, fontWeight: FontWeight.w400, color: Colors.white.withOpacity(0.6)),),
                                  SizedBox(height: Dimensions.height10,),
                                  Container(
                                    width: Dimensions.width20*3,
                                    height: Dimensions.height20,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(Dimensions.radius20),
                                        color: Colors.white.withOpacity(0.4)
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Icon(Icons.emoji_emotions, color: Colors.white, size: Dimensions.width10,),
                                        Text("NORMAL", style: TextStyle(fontWeight: FontWeight.w700, fontSize: Dimensions.font16-6, color: Colors.white),)
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: Dimensions.width20,),
                  ],
                ),
              ),
              SizedBox(height: Dimensions.height30),
              Text("Health tips", style: TextStyle(fontWeight: FontWeight.w600, fontSize: Dimensions.font16, color: Colors.black),),
              SizedBox(height: Dimensions.height10,),
              Container(
                height: Dimensions.height100+50,
                width: double.maxFinite,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  color: Colors.blue
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("An apple a day keeps the doctor away", style: TextStyle(fontSize: Dimensions.font16-4, fontWeight: FontWeight.w400, color: Colors.white)),
                        SizedBox(width: Dimensions.width20,),
                        Container(
                          width: Dimensions.width20,
                          height: Dimensions.height20,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white.withOpacity(0.2)
                          ),
                          child: Center(
                            child: Icon(Icons.arrow_forward_ios, color: Colors.white, size: Dimensions.width10)
                          )
                        ),
                      ]
                    ),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: Dimensions.height10-5,
                          width: Dimensions.width20*3,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(Dimensions.radius15-5),
                              color: Colors.white.withOpacity(0.4)
                          ),
                        ),
                        SizedBox(width: Dimensions.width10-8,),
                        Container(
                          height: Dimensions.height10-5,
                          width: Dimensions.width15,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(Dimensions.radius15-5),
                              color: Colors.white.withOpacity(0.4)
                          ),
                        ),
                        SizedBox(width: Dimensions.width10-8,),
                        Container(
                          height: Dimensions.height10-5,
                          width: Dimensions.width15,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(Dimensions.radius15-5),
                              color: Colors.white.withOpacity(0.4)
                          ),
                        ),
                        SizedBox(width: Dimensions.width10-8,),
                        Container(
                          height: Dimensions.height10-5,
                          width: Dimensions.width15,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(Dimensions.radius15-5),
                              color: Colors.white.withOpacity(0.4)
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
