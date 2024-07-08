import 'package:e_com_app_outpix/consts/consts.dart';
import 'package:e_com_app_outpix/views/auth_screen/home_screen/home.dart';
import 'package:e_com_app_outpix/views/auth_screen/signup_screen.dart';
import 'package:e_com_app_outpix/widgets_common/applogo_widget.dart';
import 'package:e_com_app_outpix/widgets_common/bg_widget.dart';
import 'package:e_com_app_outpix/widgets_common/custom_textfield.dart';
import 'package:e_com_app_outpix/widgets_common/logo_button.dart';
import 'package:e_com_app_outpix/consts/list.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
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
              "Log in to $appname".text.fontFamily(bold).white.size(18).make(),
              15.heightBox,
              Column(
                children: [
                  customTextField(hint: emailHint,title: email),
                  customTextField(hint: passwordHint,title: password),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(onPressed: () {},child : forgetpass.text.make()),
                  ),
                  5.heightBox,
                  //logoButton().box.width(context.screenWidth -50).make(),
                  logoButton( (){
                    Get.to(()=>const Home()) ;
                  }, redColor, whiteColor, login).box.width(context.screenWidth -50).make(),
                  5.heightBox,
                  createNewAccount.text.color(fontGrey).make(),
                  5.heightBox,
                  logoButton((){
                    Get.to(()=>const SignupScreen());
                  }, lightGolden, whiteColor, signup).box.width(context.screenWidth -50).make(),
                  10.heightBox,
                  loginWith.text.color(fontGrey).make(),
                  5.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:List.generate(3,
                      (index)=>Padding(
                        padding : const EdgeInsets.all(8.0),
                          child :CircleAvatar(
                        backgroundColor:lightGrey,
                        radius: 25,
                        child : Image.asset(
                            SocialIconList[index],
                            width: 30,
                        ),
                          ),
                      ),
                    ),
                  ),

                ],
              ).box.white.rounded.padding(const EdgeInsets.all(16)).make()
            ],
          ),
        ),
      )
    );
  }
}
