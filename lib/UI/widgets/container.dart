import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final double height;
  final double? width;
  final Widget body;
  final Color? bcolor;
  final double? borderTL;
  final double? borderTR;
  final double? borderBL;
  final double? borderBR;
  final double? padding;
  final double? fpaddingR;
  final double? fpaddingL;

  const CustomContainer(
      {Key? key,
      required this.height,
      this.width,
      required this.body,
      this.bcolor,
      this.borderTL,
      this.borderTR,
      this.borderBL,
      this.borderBR,
      this.padding,
      this.fpaddingR,
      this.fpaddingL})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: fpaddingL ?? 15, right: fpaddingR ?? 15),
      child: Container(
        padding: EdgeInsets.all(padding ?? 20),
        width: width ?? MediaQuery.of(context).size.width,
        height: height,
        decoration: BoxDecoration(
          color: bcolor ?? Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(borderTL ?? 15),
            bottomLeft: Radius.circular(borderBL ?? 15),
            topRight: Radius.circular(borderTR ?? 15),
            bottomRight: Radius.circular(borderBR ?? 15),
          ),
        ),
        child: body,
      ),
    );
  }
}
