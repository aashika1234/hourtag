import 'package:flutter/material.dart';
import 'package:hourtag/util/color_constant.dart';

class ProjectList extends StatelessWidget {
  const ProjectList({
    super.key,
    required this.categories,
    required this.index,
    required this.stateIndex,
    required this.color,
  });
  final int index;
  final int stateIndex;
  final List<String> categories;
  final List<int> color;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12.5, horizontal: 12),
      decoration: BoxDecoration(
        border: Border.all(
            color: index == stateIndex
                ? Colors.transparent
                : ColorConstant.textGrey),
        borderRadius: BorderRadius.circular(12),
        color: index == stateIndex ? Color(color[index]) : Colors.transparent,
      ),
      child: Center(
          child: Text(
        categories[index],
        style: TextStyle(
            color: (index == stateIndex) ? Colors.white : Color(color[index]),
            fontSize: 15),
      )),
    );
  }
}
