import 'package:e_com_app_outpix/views/auth_screen/home_screen/components/featured_buttons.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart'; // Ensure VelocityX is imported
import 'package:e_com_app_outpix/consts/consts.dart'; // Ensure these are correct paths
import 'package:e_com_app_outpix/consts/list.dart';
import 'package:e_com_app_outpix/widgets_common/home_buttons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(15),
          color: lightGrey,
          width: context.screenWidth,
          height: context.screenHeight,
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                height: 60,
                color: lightGrey,
                child: TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: searchanything,
                    hintStyle: TextStyle(color: textfieldGrey),
                  ),
                ),
              ),
              10.heightBox,
              /// Swipers section
              Expanded(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      VxSwiper.builder(
                        aspectRatio: 16 / 9,
                        autoPlay: true,
                        height: 150,
                        enlargeCenterPage: true,
                        itemCount: SliderList.length,
                        itemBuilder: (context, index) {
                          return Image.asset(
                            SliderList[index],
                            fit: BoxFit.fill,
                          ).box.rounded.clip(Clip.antiAlias).make();
                        },
                      ),
                      10.heightBox,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: List.generate(2, (index) => homeButton(
                          height: context.screenHeight * 0.15,
                          width: context.screenWidth / 2.5,
                          icon: index == 0 ? icTodaysDeal : icFlashDeal,
                          title: index == 0 ? todaydeal : flashSale,
                        )),
                      ),
                      /// 2nd swiper section
                      10.heightBox,
                      VxSwiper.builder(
                        aspectRatio: 16 / 9,
                        autoPlay: true,
                        height: 150,
                        enlargeCenterPage: true,
                        itemCount: SecondSliderList.length,
                        itemBuilder: (context, index) {
                          return Image.asset(
                            SecondSliderList[index],
                            fit: BoxFit.fill,
                          ).box.rounded.clip(Clip.antiAlias).make();
                        },
                      ),
                      10.heightBox,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: List.generate(3, (index) => homeButton(
                          height: context.screenHeight * 0.15,
                          width: context.screenWidth / 3.5,
                          icon: index == 0 ? icTopCategories : index == 1 ? icBrands : icTopSeller,
                          title: index == 0 ? "Top Categories" : index == 1 ? "Brands" : "Seller",
                        )),
                      ),
                      20.heightBox,

                      //featuredcategories
                      Align(
                        alignment: Alignment.centerLeft,
                        child : featuredcategories.text.color(darkFontGrey).size(18).fontFamily(semibold).make(),
                      ),
                      20.heightBox,
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: List.generate(
                              3,
                              (index)=> Column(
                                children: [
                                  featuredButton(icon: featuredImage1[1],title : featuredTitles1[index]),
                                  10.heightBox,
                                  featuredButton(icon: featuredImage2[1],title : featuredTitles2[index]),
                                ],
                              )).toList(),
                        ),
                      ),
                      20.heightBox,
                      Container(
                        padding: const EdgeInsets.all(12),
                        width: double.infinity,
                        decoration: const BoxDecoration(color: redColor),
                        child: Column(
                          crossAxisAlignment : CrossAxisAlignment.start,
                          children: [
                            featuredproducts.text.white.fontFamily(bold).size(18).make(),
                            10.heightBox,
                            SingleChildScrollView(
                                scrollDirection:Axis.horizontal,
                                child :Row(
                                  children: List.generate(
                                      6,
                                          (index) => Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Image.asset(imgP1,width: 150, fit: BoxFit.cover,),
                                          10.heightBox,
                                          "Laptop 4GB".text.fontFamily(semibold).color(darkFontGrey).make(),
                                          10.heightBox,
                                          "\$5000".text.color(redColor).fontFamily(bold).size(16).make(),
                                          10.heightBox,
                                        ],
                                      ).box.white.margin(EdgeInsets.symmetric(horizontal: 4)).rounded.padding(EdgeInsets.all(8)).make()),

                                )
                            )
                          ],
                        ),
                      ),
                      ///3rd Swiper
                      20.heightBox,
                      VxSwiper.builder(
                        aspectRatio: 16 / 9,
                        autoPlay: true,
                        height: 150,
                        enlargeCenterPage: true,
                        itemCount: SecondSliderList.length,
                        itemBuilder: (context, index) {
                          return Image.asset(
                            SecondSliderList[index],
                            fit: BoxFit.fill,
                          ).box.rounded.clip(Clip.antiAlias).make();
                        },
                      ),

                      //all products section

                      20.heightBox,
                      GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                          itemCount: 6,
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2 ,mainAxisSpacing: 8,crossAxisSpacing: 8),
                          itemBuilder: (context,index)

                      {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(imgP1,width: 130, fit: BoxFit.cover,),
                            10.heightBox,
                            "Laptop 4GB".text.fontFamily(semibold).color(darkFontGrey).make(),
                            10.heightBox,
                            "\$5000".text.color(redColor).fontFamily(bold).size(16).make(),
                            10.heightBox,
                          ],
                        ).box.margin(EdgeInsets.symmetric(horizontal: 4)).rounded.padding(EdgeInsets.all(8)).white.make();

                      }),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}