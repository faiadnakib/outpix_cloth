import 'package:e_com_app_outpix/consts/consts.dart';
Widget logoButton(onPress,color,textColor, String? title)
{
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.red,
      padding: const EdgeInsets.all(12),
    ),
      onPressed: onPress,
      child: title!.text.black.fontFamily(bold).make());
}