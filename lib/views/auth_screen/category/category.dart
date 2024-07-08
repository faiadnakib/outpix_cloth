import 'package:e_com_app_outpix/consts/consts.dart';
import 'package:e_com_app_outpix/consts/list.dart';
import 'package:e_com_app_outpix/widgets_common/bg_widget.dart';
class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        appBar: AppBar(
          title: categories.text.fontFamily(bold).white.make(),
        ),
        body: Container(
          padding: EdgeInsets.all(12),
          child: GridView.builder(
            shrinkWrap: true,
              itemCount: 9,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,mainAxisSpacing: 8,crossAxisSpacing: 8,mainAxisExtent: 200),
              itemBuilder: (context,index)
          {
            return Column(
              children: [
                Image.asset(categoryImages[index]),
              ],
            ).box.white.rounded.clip(Clip.antiAlias).outerShadowSm.make();
          }),
        ),
      )
    );
  }
}