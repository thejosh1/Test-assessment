import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/utils/color.dart';
import 'package:untitled/utils/dimensions.dart';
import 'package:untitled/widget/app_text_field.dart';
import 'package:untitled/widget/big_text.dart';

import 'main_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController _usernameController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();

    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          physics: const  BouncingScrollPhysics(),
          child: Column(
            children: <Widget>[
              SizedBox(height: Dimensions.screenHeight*0.05,),
              //app logo
              Container(
                height: Dimensions.screenHeight*0.25,
                child: Center(
                  child: CircleAvatar(
                    radius: Dimensions.height100-20,
                    backgroundColor: Colors.white,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: Dimensions.width20, bottom: Dimensions.height20),
                child: Column(
                  children: [
                    Text("Hello", style: TextStyle(fontSize: Dimensions.font20*3 + Dimensions.font20/2, fontWeight: FontWeight.bold),),
                    Text("Sign in to your account", style: TextStyle(fontSize: Dimensions.font20, color: Colors.grey[500]))
                  ],
                ),
              ),
              //email
              AppTextField(textEditingController: _usernameController, hintText: "Username", iconData: Icons.email, color: AppColors.yellowColor),
              SizedBox(height: Dimensions.height20,),
              //password
              AppTextField(textEditingController: _passwordController, hintText: "password", iconData: Icons.password_sharp, color: AppColors.yellowColor, isObscure: true,),
              SizedBox(height: Dimensions.screenHeight*0.10,),
              //login
              GestureDetector(
                onTap: () {
                  // _login(_authController);
                  Get.to(()=>MainPage());
                },
                child: Container(
                  width: Dimensions.screenWidth/2,
                  height: Dimensions.screenHeight/13,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius30),
                      color: AppColors.mainColor
                  ),
                  child: Center(child: BigText(text: "Login", size: Dimensions.font20+Dimensions.font20/2, color: Colors.white,)),
                ),
              ),
            ],
          ),
        )
    );
  }
}