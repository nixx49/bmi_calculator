import 'package:flutter/material.dart';
import 'constant.dart';

class BottomButton extends StatelessWidget {
  // const bottomButton({
  //   Key? key,
  // }) : super(key: key);
  BottomButton({required this.onTap, required this.bottomTitle});

  final Function onTap;
  final String bottomTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
        // Navigator.push(
        //     context,
        //     MaterialPageRoute(
        //         builder: (context) => const ResultPage()));
      },
      child: Container(
        margin: const EdgeInsets.only(top: 10),
        width: double.infinity,
        height: kBottomContainerHeight,
        color: kBottomContainerColor,
        child: Align(
          alignment: Alignment.center,
          child: Text(
            bottomTitle,
            style: TextStyle(fontSize: 20.0),
          ),
        ),
      ),
    );
  }
}
