import 'package:flutter/material.dart';
import 'package:untitled/utils/dimensions.dart';

class LiveReading extends StatelessWidget {
  const LiveReading({super.key});

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
            Text("Live Readings", style: TextStyle(fontWeight: FontWeight.w500, fontSize: Dimensions.font20, color: Colors.black),),
            Container(
              height: Dimensions.height45,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    height: Dimensions.height45,
                    width: Dimensions.width30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius15-10),
                      color: Colors.green
                    ),
                    child: Center(
                      child: Text("R1", style: TextStyle(color: Colors.white),),
                    ),
                  ),
                  SizedBox(width: Dimensions.width10,),
                  Container(
                    height: Dimensions.height45,
                    width: Dimensions.width30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius15-10),
                      color: Colors.white,
                      border: Border.all(color: Colors.black12, width: 2)
                    ),
                    child: Center(
                      child: Text("R2", style: TextStyle(color: Colors.black),),
                    ),
                  ),
                  SizedBox(width: Dimensions.width10,),
                  Container(
                    height: Dimensions.height45,
                    width: Dimensions.width30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimensions.radius15-10),
                        color: Colors.white,
                        border: Border.all(color: Colors.black12, width: 2)
                    ),
                    child: Center(
                      child: Text("R3", style: TextStyle(color: Colors.black),),
                    ),
                  ),
                  SizedBox(width: Dimensions.width10,),
                  Container(
                    height: Dimensions.height45,
                    width: Dimensions.width30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimensions.radius15-10),
                        color: Colors.white,
                        border: Border.all(color: Colors.black12, width: 2)
                    ),
                    child: Center(
                      child: Text("R4", style: TextStyle(color: Colors.black),),
                    ),
                  ),
                  SizedBox(width: Dimensions.width10,),
                  Container(
                    height: Dimensions.height45,
                    width: Dimensions.width30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimensions.radius15-10),
                        color: Colors.white,
                        border: Border.all(color: Colors.black12, width: 2)
                    ),
                    child: Center(
                      child: Text("R5", style: TextStyle(color: Colors.black),),
                    ),
                  ),
                  SizedBox(width: Dimensions.width10,),
                  Container(
                    height: Dimensions.height45,
                    width: Dimensions.width30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimensions.radius15-10),
                        color: Colors.white,
                        border: Border.all(color: Colors.black12, width: 2)
                    ),
                    child: Center(
                      child: Text("R5", style: TextStyle(color: Colors.black),),
                    ),
                  ),
                  SizedBox(width: Dimensions.width10,),
                  Container(
                    height: Dimensions.height45,
                    width: Dimensions.width30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimensions.radius15-10),
                        color: Colors.white,
                        border: Border.all(color: Colors.black12, width: 2)
                    ),
                    child: Center(
                      child: Text("R6", style: TextStyle(color: Colors.black),),
                    ),
                  ),
                  SizedBox(width: Dimensions.width10,),
                  Container(
                    height: Dimensions.height45,
                    width: Dimensions.width30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimensions.radius15-10),
                        color: Colors.white,
                        border: Border.all(color: Colors.black12, width: 2)
                    ),
                    child: Center(
                      child: Text("R7", style: TextStyle(color: Colors.black),),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: Dimensions.height20,),
            Container(
              height: Dimensions.height45,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    height: Dimensions.height45,
                    width: Dimensions.width30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimensions.radius15-10),
                        color: Colors.green
                    ),
                    child: Center(
                      child: Text("R1", style: TextStyle(color: Colors.white),),
                    ),
                  ),
                  SizedBox(width: Dimensions.width10,),
                  Container(
                    height: Dimensions.height45,
                    width: Dimensions.width30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimensions.radius15-10),
                        color: Colors.white,
                        border: Border.all(color: Colors.black12, width: 2)
                    ),
                    child: Center(
                      child: Text("R2", style: TextStyle(color: Colors.black),),
                    ),
                  ),
                  SizedBox(width: Dimensions.width10,),
                  Container(
                    height: Dimensions.height45,
                    width: Dimensions.width30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimensions.radius15-10),
                        color: Colors.white,
                        border: Border.all(color: Colors.black12, width: 2)
                    ),
                    child: Center(
                      child: Text("R3", style: TextStyle(color: Colors.black),),
                    ),
                  ),
                  SizedBox(width: Dimensions.width10,),
                  Container(
                    height: Dimensions.height45,
                    width: Dimensions.width30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimensions.radius15-10),
                        color: Colors.white,
                        border: Border.all(color: Colors.black12, width: 2)
                    ),
                    child: Center(
                      child: Text("R4", style: TextStyle(color: Colors.black),),
                    ),
                  ),
                  SizedBox(width: Dimensions.width10,),
                  Container(
                    height: Dimensions.height45,
                    width: Dimensions.width30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimensions.radius15-10),
                        color: Colors.white,
                        border: Border.all(color: Colors.black12, width: 2)
                    ),
                    child: Center(
                      child: Text("R5", style: TextStyle(color: Colors.black),),
                    ),
                  ),
                  SizedBox(width: Dimensions.width10,),
                  Container(
                    height: Dimensions.height45,
                    width: Dimensions.width30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimensions.radius15-10),
                        color: Colors.white,
                        border: Border.all(color: Colors.black12, width: 2)
                    ),
                    child: Center(
                      child: Text("R5", style: TextStyle(color: Colors.black),),
                    ),
                  ),
                  SizedBox(width: Dimensions.width10,),
                  Container(
                    height: Dimensions.height45,
                    width: Dimensions.width30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimensions.radius15-10),
                        color: Colors.white,
                        border: Border.all(color: Colors.black12, width: 2)
                    ),
                    child: Center(
                      child: Text("R6", style: TextStyle(color: Colors.black),),
                    ),
                  ),
                  SizedBox(width: Dimensions.width10,),
                  Container(
                    height: Dimensions.height45,
                    width: Dimensions.width30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimensions.radius15-10),
                        color: Colors.white,
                        border: Border.all(color: Colors.black12, width: 2)
                    ),
                    child: Center(
                      child: Text("R7", style: TextStyle(color: Colors.black),),
                    ),
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
