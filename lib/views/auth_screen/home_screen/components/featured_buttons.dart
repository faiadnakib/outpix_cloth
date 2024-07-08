import 'package:e_com_app_outpix/consts/consts.dart';
Widget featuredButton({String? title, icon}){
  return Row(
    children: [
      Image.asset(icon,width: 60,fit: BoxFit.fill ,),
      10.widthBox,
      title!.text.fontFamily(semibold).color(darkFontGrey).make(),
    ],
  ).box.white.roundedSM.outerShadowSm.make();
}