import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/live_reading.dart';
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.location_on, color: Colors.green, size: Dimensions.width20,),
                          SizedBox(width: Dimensions.width10-7,),
                          Text("Location", style: TextStyle(fontWeight: FontWeight.w600, fontSize: Dimensions.font16, color: Colors.black54),)
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: Dimensions.width10-7),
                        child: Text("23 lekki, ajah lagos", style: TextStyle(fontSize: Dimensions.font16-2, fontWeight: FontWeight.w400, color: Colors.black),),
                      )
                    ],
                  ),
                  Container(
                    width: Dimensions.width45-5,
                    height: Dimensions.height45-5,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.4),
                      shape: BoxShape.circle
                    ),
                    child: Center(
                      child: Icon(Icons.notifications, color: Colors.black, size: Dimensions.width20+4,),
                    ),
                  )
                ],
              ),
              SizedBox(height: Dimensions.height20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: Dimensions.width20*10+60, // Adjust the width as needed
                    height: Dimensions.height45-5, // Adjust the height as needed
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search here',
                        prefixIcon: const Icon(Icons.search),
                        contentPadding: EdgeInsets.symmetric(vertical: Dimensions.height10-2, horizontal: Dimensions.width10),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(Dimensions.radius15-5),
                          borderSide: const BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: Dimensions.height45-5,
                    width: Dimensions.width45-5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius15-5),
                      color: Colors.green
                    ),
                    child: Center(
                      child: Icon(Icons.equalizer, color: Colors.white,),
                    ),
                  )
                ],
              ),
              SizedBox(height: Dimensions.height20,),
              GestureDetector(
                onTap: () {
                  Get.to(()=>const NotificationPage());
                },
                child: Container(
                  height: Dimensions.height100*2,
                  width: double.maxFinite,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                    color: Colors.green
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("New Notification", style: TextStyle(fontWeight: FontWeight.w700, fontSize: Dimensions.font20, color: Colors.white),),
                      SizedBox(height: Dimensions.height10,),
                      Row(
                        children: [
                          Container(
                            height: Dimensions.height20*3,
                            width: Dimensions.width20*3,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle
                            ),
                            child: Center(
                              child: Icon(Icons.person, color: Colors.black, size: Dimensions.width45-5,),
                            ),
                          ),
                          SizedBox(width: Dimensions.width10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                            Text("Dr Usman bala", style: TextStyle(fontWeight: FontWeight.w400, fontSize: Dimensions.font16+2, color: Colors.white),),
                            Text("NeuroSurgeon", style: TextStyle(fontWeight: FontWeight.w400, fontSize: Dimensions.font16-2, color: Colors.white),)
                          ],)
                        ],
                      ),
                      SizedBox(height: Dimensions.height20),
                      Container(
                        height: Dimensions.height30,
                        width: double.maxFinite,
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(Dimensions.radius15-10),
                          color: Colors.white.withOpacity(0.2)
                        ),
                        child: Center(
                          child: Row(
                            children: [
                              Icon(Icons.calendar_month, color: Colors.white, size: Dimensions.width20-4,),
                              SizedBox(width: Dimensions.width10-5,),
                              Text("Sunday, 12 August", style: TextStyle(fontSize: Dimensions.font16, fontWeight: FontWeight.w400, color: Colors.white),),
                              SizedBox(width: Dimensions.width10,),
                              Text("|", style: TextStyle(fontSize: Dimensions.font16, fontWeight: FontWeight.w400, color: Colors.white),),
                              SizedBox(width: Dimensions.width10,),
                              Text("Tap to view", style: TextStyle(fontSize: Dimensions.font16, fontWeight: FontWeight.w400, color: Colors.white),),
                            ],
                          )
                        ),
                      ),
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
                      const Icon(Icons.monitor_heart, color: Colors.green,),
                      SizedBox(width: Dimensions.width10,),
                      Text("Featured Services", style: TextStyle(fontWeight: FontWeight.w400, fontSize: Dimensions.font20-1, color: Colors.black),)
                    ],),
                  ),
                  Text("See all", style: TextStyle(fontSize: Dimensions.font20, fontWeight: FontWeight.w400, color: Colors.green),)
                ],
              ),
              SizedBox(height: Dimensions.height10,),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(()=>const LiveReading());
                    },
                    child: Column(
                      children: [
                        Container(
                          height: Dimensions.height20*3,
                          width: Dimensions.width20*3,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey.withGreen(180).withOpacity(0.4)
                          ),
                          child: Center(
                            child: Icon(Icons.note_alt, color: Colors.green,),
                          ),
                        ),
                        SizedBox(height: Dimensions.height10,),
                        Text("Live Readings", style: TextStyle(fontWeight: FontWeight.w400, fontSize: Dimensions.font16-6, color: Colors.black),)
                      ],
                    ),
                  ),
                  SizedBox(width: Dimensions.width20+1,),
                  Column(
                    children: [
                      Container(
                        height: Dimensions.height20*3,
                        width: Dimensions.width20*3,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey.withGreen(180).withOpacity(0.4)
                        ),
                        child: const Center(
                          child: Icon(Icons.copy, color: Colors.green,),
                        ),
                      ),
                      SizedBox(height: Dimensions.height10,),
                      Text("Take Readings", style: TextStyle(fontWeight: FontWeight.w400, fontSize: Dimensions.font16-6, color: Colors.black),)
                    ],
                  ),
                  SizedBox(width: Dimensions.width20+1,),
                  Column(
                    children: [
                      Container(
                        height: Dimensions.height20*3,
                        width: Dimensions.width20*3,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey.withGreen(180).withOpacity(0.4)
                        ),
                        child: const Center(
                          child: Icon(Icons.history, color: Colors.green,),
                        ),
                      ),
                      SizedBox(height: Dimensions.height10,),
                      Text("Reading History", style: TextStyle(fontWeight: FontWeight.w400, fontSize: Dimensions.font16-6, color: Colors.black),)
                    ],
                  ),
                  SizedBox(width: Dimensions.width20+1,),
                  Column(
                    children: [
                      Container(
                        height: Dimensions.height20*3,
                        width: Dimensions.width20*3,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey.withGreen(180).withOpacity(0.4)
                        ),
                        child: const Center(
                          child: Icon(Icons.tips_and_updates, color: Colors.green,),
                        ),
                      ),
                      SizedBox(height: Dimensions.height10,),
                      Text("Health tips", style: TextStyle(fontWeight: FontWeight.w400, fontSize: Dimensions.font16-6, color: Colors.black),)
                    ],
                  ),
                  SizedBox(width: Dimensions.width20,),
                ],
              ),
              SizedBox(height: Dimensions.height30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Row(children: [
                      const Icon(Icons.monitor_heart, color: Colors.green,),
                      SizedBox(width: Dimensions.width10,),
                      Text("Featured Specialists", style: TextStyle(fontWeight: FontWeight.w400, fontSize: Dimensions.font20-1, color: Colors.black),)
                    ],),
                  ),
                  Text("See all", style: TextStyle(fontSize: Dimensions.font20, fontWeight: FontWeight.w400, color: Colors.green),)
                ],
              ),
              SizedBox(height: Dimensions.height10,),
              Container(
                height: Dimensions.height100+50,
                width: double.maxFinite,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius15-5),
                  color: Colors.white
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: Dimensions.height100-10,
                          width: Dimensions.width10*10,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(Dimensions.radius15-10),
                            color: Colors.grey
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
                    SizedBox(height: Dimensions.height10,),
                    Container(
                      height: Dimensions.height30,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimensions.radius15-10),
                        color: Colors.grey.withGreen(180).withOpacity(0.4)
                      ),
                      child: Center(
                        child: Text("Book Appointment", style: TextStyle(fontWeight: FontWeight.w400, fontSize: Dimensions.font16, color: Colors.green),),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: Dimensions.height10,),
              Container(
                height: Dimensions.height100+50,
                width: double.maxFinite,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius15-5),
                    color: Colors.white
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: Dimensions.height100-10,
                          width: Dimensions.width10*10,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(Dimensions.radius15-10),
                              color: Colors.grey
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
                    SizedBox(height: Dimensions.height10,),
                    Container(
                      height: Dimensions.height30,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(Dimensions.radius15-10),
                          color: Colors.grey.withGreen(180).withOpacity(0.4)
                      ),
                      child: Center(
                        child: Text("Book Appointment", style: TextStyle(fontWeight: FontWeight.w400, fontSize: Dimensions.font16, color: Colors.green),),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: Dimensions.height10,),
              Container(
                height: Dimensions.height100+50,
                width: double.maxFinite,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius15-5),
                    color: Colors.white
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: Dimensions.height100-10,
                          width: Dimensions.width10*10,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(Dimensions.radius15-10),
                              color: Colors.grey
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
                    SizedBox(height: Dimensions.height10,),
                    Container(
                      height: Dimensions.height30,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(Dimensions.radius15-10),
                          color: Colors.grey.withGreen(180).withOpacity(0.4)
                      ),
                      child: Center(
                        child: Text("Book Appointment", style: TextStyle(fontWeight: FontWeight.w400, fontSize: Dimensions.font16, color: Colors.green),),
                      ),
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
