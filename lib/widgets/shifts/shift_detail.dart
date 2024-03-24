import 'package:flutter/material.dart';
import 'package:hourtag/util/color_constant.dart';
import 'package:hourtag/util/weight_constant.dart';

class ShiftDetail extends StatelessWidget {
  const ShiftDetail({
    super.key,
    required this.color,
  });
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(12)),
      child: Theme(
        data: Theme.of(context).copyWith(
          dividerColor: Colors.transparent, // Set the divider color here
        ),
        child: ExpansionTile(
          iconColor: Colors.white,
          collapsedIconColor: Colors.white,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    '0',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeightConstant.xextraBold,
                      color: ColorConstant.backgroundGrey,
                    ),
                  ),
                  Text(
                    'h',
                    style: TextStyle(
                      fontSize: 16,
                      color: ColorConstant.textGrey2,
                      fontWeight: FontWeightConstant.xextraBold,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    '10',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeightConstant.xextraBold,
                        color: ColorConstant.backgroundGrey),
                  ),
                  Text(
                    'm',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeightConstant.xextraBold,
                        color: ColorConstant.textGrey2),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(126, 86, 218, 0.25),
                        borderRadius: BorderRadius.circular(8)),
                    child: Text(
                      'Design',
                      style: TextStyle(
                        fontWeight: FontWeightConstant.bold,
                        color: ColorConstant.cPurple,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 6,
              ),
              Text(
                '14:00-14:10',
                style: TextStyle(
                    fontWeight: FontWeightConstant.bold,
                    color: ColorConstant.textGrey2),
              )
            ],
          ),
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text(
                    'I worked on the company pitch deck. Wow!',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeightConstant.normal,
                        color: ColorConstant.backgroundGrey),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Text(
                        'EDIT',
                        style: TextStyle(
                            fontWeight: FontWeightConstant.extraBold,
                            color: ColorConstant.textGrey2),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Text(
                        'DELETE',
                        style: TextStyle(
                            fontWeight: FontWeightConstant.extraBold,
                            color: ColorConstant.textGrey2),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
