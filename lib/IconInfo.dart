import 'package:flutter/material.dart';

const labelTextStyle = TextStyle(
fontSize: 10,
color: Color(0xFF8D8E98),);

class IconInfo extends StatelessWidget {
  IconInfo({required this.icon,required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 50,
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          label,
          style: labelTextStyle
          ),
      ],
    );
  }
}