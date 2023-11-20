import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:get/get.dart';
import 'package:untitled/utils/color.dart';
import 'package:untitled/utils/dimensions.dart';
import 'package:untitled/widget/app_column.dart';
import 'package:untitled/widget/big_text.dart';
import 'package:untitled/widget/small_text.dart';
import 'package:url_launcher/url_launcher.dart';

import 'controller/repo_controller.dart';
import 'model/repo_model.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  PageController pageController = PageController(viewportFraction: 0.85);

  var _currentPageValue = 0.0;
  var _scaleFactor = 0.8;
  double _height = Dimensions.pageContainer;


  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currentPageValue = pageController.page!;
      });
    });

    @override
    void dispose() {
      super.dispose();
      pageController.dispose();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            GetBuilder<RepoController>(builder: (repo) {
              repo.fetchGitRepo();
              return repo.isLoaded?Container(
                  height: Dimensions.pageView,
                  margin: EdgeInsets.only(top: Dimensions.height30),
                  child: PageView.builder(
                    controller: pageController,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return _buildPageItem(index, repo.projects[index]);
                    },)
              ):CircularProgressIndicator(color: AppColors.mainColor,);
            }),
            GetBuilder<RepoController>(builder: (repo){
              repo.fetchGitRepo();
              return  DotsIndicator(
                dotsCount: repo.projects.isEmpty?1:4,
                position: _currentPageValue.toInt(),
                decorator: DotsDecorator(
                  activeColor: AppColors.mainColor,
                  size: const Size.square(9.0),
                  activeSize: const Size(18.0, 9.0),
                  activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)
                  ),
                ),
              );
            }),
            //Popular text
            SizedBox(height: Dimensions.height30,),
            Container(
              margin: EdgeInsets.only(left: Dimensions.width30),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  BigText(text: "My repositories"),
                  SizedBox(width: Dimensions.width10,),
                ],
              ),
            ),
            SizedBox(height: Dimensions.height10,),
            GetBuilder<RepoController>(builder: (repo) {
              return repo.isLoaded?ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: repo.projects.length,
                  itemBuilder: (context, index,) {
                    return GestureDetector(
                      onTap: () async {
                        final Uri url = Uri.parse(repo.projects[index].url);
                        if(!await launchUrl(url)) {
                          Get.snackbar("Could not launch url", "Could not launch url");
                        }
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20, bottom: Dimensions.height10),
                        child: Row(
                          children: [
                            //image section
                            Container(
                              height: Dimensions.listViewSize,
                              width: Dimensions.listViewSize,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(Dimensions.radius20),
                                color: Colors.blueGrey,
                                // image: DecorationImage(
                                //     image: NetworkImage (
                                //         [index].img!
                                //     ), fit: BoxFit.cover
                                // )
                              ),
                            ),
                            //text Section
                            Expanded(
                              child: Container(
                                height: Dimensions.height100,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(Dimensions.radius20), bottomRight: Radius.circular(Dimensions.radius20))
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(left: Dimensions.width10, right: Dimensions.width10),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      BigText(text: repo.projects[index].fullName!, overflow: TextOverflow.ellipsis,),
                                      SizedBox(height: Dimensions.height10,),
                                      SmallText(text: repo.projects[index].description!),
                                      SizedBox(height: Dimensions.height10,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Wrap(children:
                                          List.generate(5, (index) => Icon(Icons.star, color: AppColors.mainColor, size: 15,))
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }):CircularProgressIndicator(color: AppColors.mainColor,);
            })

          ],
        ),
      ),
    );
  }
  Widget _buildPageItem(int index, RepoModel popularRepo){
    Matrix4 matrix = new Matrix4.identity();
    if(index==_currentPageValue.floor()){
      var _currScale = 1-(_currentPageValue - index) * (1 - _scaleFactor);
      var _currTrans = _height*(1-_currScale)/2;
      matrix = Matrix4.diagonal3Values(1, _currScale, 1)..setTranslationRaw(0, _currTrans, 0);
    } else if (index==_currentPageValue.floor()+1) {
      var _currScale = _scaleFactor+(_currentPageValue - index + 1) * (1 - _scaleFactor);
      var _currTrans = _height*(1-_currScale)/2;
      matrix = Matrix4.diagonal3Values(1, _currScale, 1)..setTranslationRaw(1, _currTrans, 1);
    } else if (index==_currentPageValue.floor()-1) {
      var _currScale = 1-(_currentPageValue - index) * (1 - _scaleFactor);
      var _currTrans = _height*(1-_currScale)/2;
      matrix = Matrix4.diagonal3Values(1, _currScale, 1)..setTranslationRaw(1, _currTrans, 1);
    } else {
      var _currScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, _currScale, 1)..setTranslationRaw(0, _height*(1 - _currScale), 1);
    }
    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          Container(
            height: Dimensions.pageContainer,
            margin: EdgeInsets.only(left: Dimensions.width10, right: Dimensions.width10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius30),
                color: index.isEven?Colors.blue:Color(0xFF9294cc),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: Dimensions.pageTextContainer,
              margin: EdgeInsets.only(left: Dimensions.width30, right: Dimensions.width30, bottom: Dimensions.height30),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xFFe8e8e8),
                        blurRadius: 5.0,
                        offset: Offset(0, 5)
                    ),
                    BoxShadow(
                        color: Colors.white,
                        offset: Offset(-5, 0)
                    ),
                    BoxShadow(
                        color: Colors.white,
                        offset: Offset(5, 0)
                    ),
                  ]
              ),
              child: Container(
                padding: EdgeInsets.only(top: Dimensions.height15, left: Dimensions.width15, right: Dimensions.width10),
                child: AppColumn(text: popularRepo.fullName!,),
              ),
            ),
          )
        ],
      ),
    );
  }

}