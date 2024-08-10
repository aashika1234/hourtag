import 'package:flutter/material.dart';

class ModelBAr extends StatelessWidget {
  const ModelBAr({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 33,
      height: 5,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
    );
  }
}
