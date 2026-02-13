import 'package:flutter/material.dart';

class CustumText extends StatelessWidget {
  const CustumText(this.txtsize, this.txtweight, {super.key, required this.txt, required this.txtCol});
final String txt;
final Color txtCol;
final double txtsize;
final FontWeight? txtweight;
  @override
  Widget build(BuildContext context) {
    return  Text(txt,
      style: TextStyle(
        color: txtCol,
        fontSize: txtsize,
        fontWeight: txtweight,
      ),
    );
  }
}