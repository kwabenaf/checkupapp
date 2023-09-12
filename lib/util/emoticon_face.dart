import 'package:flutter/material.dart';

import '../constants/constants.dart';

class EmoticonFace extends StatelessWidget {
  final String emoticonFace;

  const EmoticonFace({
    super.key,
    required this.emoticonFace,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: liBlue,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: EdgeInsets.all(16),
      child: Text(
        emoticonFace,
        style: TextStyle(
          fontSize: 28,
        ),
      ),
    );
  }
}
