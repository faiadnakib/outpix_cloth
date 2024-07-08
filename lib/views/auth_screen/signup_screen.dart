import 'package:e_com_app_outpix/consts/consts.dart';
import 'package:e_com_app_outpix/widgets_common/applogo_widget.dart';
import 'package:e_com_app_outpix/widgets_common/bg_widget.dart';
import 'package:e_com_app_outpix/widgets_common/custom_textfield.dart';
import 'package:e_com_app_outpix/widgets_common/logo_button.dart';
import 'package:e_com_app_outpix/consts/list.dart';
import 'package:get/get.dart';
class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);
  State<SignupScreen> createState() =>_SignupScreenState();
}
class _SignupScreenState extends State<SignupScreen> {

  bool? isCheck =false;
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Center(
            child: Column(
              children: [
                (context.screenHeight * 0.1).heightBox,
                applogoWidget(),
                10.heightBox,
                "Join the $appname".text.fontFamily(bold).white.size(18).make(),
                15.heightBox,
                Column(
                  children: [
                    customTextField(hint: nameHint,title: name),
                    customTextField(hint: emailHint,title: email),
                    customTextField(hint: passwordHint,title: password),
                    customTextField(hint: passwordHint,title: retypePassword),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(onPressed: () {},child : forgetpass.text.make()),
                    ),
                    5.heightBox,
                    //logoButton().box.width(context.screenWidth -50).make(),

                Row(
                  children: [
                    Checkbox(checkColor: redColor,
                    value: isCheck,
                      onChanged: (newValue){
                      setState(() {
                        isCheck=newValue;
                      });
                      },
                    ),
                    10.widthBox,
                    Expanded(
                        child: RichText
                      (text: TextSpan(
                        children: [
                          TextSpan(text: "I agree to the ",style: TextStyle(
                            fontFamily: bold,
                            color: fontGrey,
                          )),
                          TextSpan(text: termsandcondition,
                              style: TextStyle(
                                fontFamily: bold,
                                color: Colors.red,
                              )),
                          TextSpan(text: "&",style: TextStyle(
                            fontFamily: bold,
                            color: fontGrey,
                          )),
                          TextSpan(text: privacyPolicy,style: TextStyle(
                            fontFamily: bold,
                            color: redColor,
                          )),
                        ]
                    ))),
                  ],
                ),
                    logoButton( (){
                      //aikhane sign up dile koi jabe tar kaaj;
                    }, isCheck == true? redColor : lightGrey, whiteColor, signup).box.width(context.screenWidth -50).make(),
                    5.heightBox,
                  ],
                ).box.white.rounded.padding(const EdgeInsets.all(16)).make(),
                RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                            text: alreadyhaveanaccount,
                            style: TextStyle(
                              fontFamily: bold,
                              color: fontGrey,
                            )
                        ),
                        TextSpan(
                            text: login,
                            style: TextStyle(
                              fontFamily: bold,
                              color: redColor,
                            )
                        ),
                      ]
                )
                ).onTap((){
                  Get.back();
                })
              ],
            ),
          ),
        )
    );
  }


}