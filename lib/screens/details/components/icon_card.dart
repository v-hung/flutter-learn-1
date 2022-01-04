import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myapp/utils/config.dart';

class IconCard extends StatelessWidget {
  const IconCard({
    Key? key,

    required this.icon,
  }) : super(key: key);

  final String icon;

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.all(size.height * .03),
      padding: EdgeInsets.all(kDefaultPadding / 2),
      height: 62,
      width: 62,
      decoration: BoxDecoration(
        color: kBackgroundColor,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            offset: Offset(0,10),
            blurRadius: 22,
            color: kPrimaryColor.withOpacity(.22)
          ),
          BoxShadow(
            offset: Offset(-15,-15),
            blurRadius: 20,
            color: Colors.white
          )
        ]
      ),
      child: SvgPicture.asset('$icon'),
    );
  }
}