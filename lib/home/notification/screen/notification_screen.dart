import 'package:flutter/material.dart';
import 'package:hourtag/login/screen/login_screen.dart';
import 'package:hourtag/util/color_constant.dart';
import 'package:hourtag/util/weight_constant.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstant.backgroundColor,
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
          child: Column(
            children: [
              Row(
                children: [
                  const BackIcon(),
                  const SizedBox(
                    width: 17,
                  ),
                  Text(
                    'Notifications',
                    style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeightConstant.normal,
                        color: ColorConstant.borderGrey),
                  )
                ],
              ),
              const SizedBox(
                height: 42,
              ),
              ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return const NotificationCart(status: '1');
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      height: 10,
                    );
                  },
                  itemCount: 3),
              const Spacer(),
              BorderedButton(
                text: 'Go back',
                onTap: () => Navigator.pop(context),
              )
            ],
          ),
        )));
  }
}

class BackIcon extends StatelessWidget {
  const BackIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pop(context),
      child: const Icon(
        Icons.arrow_back_rounded,
        color: Colors.white,
        size: 30,
      ),
    );
  }
}

class NotificationCart extends StatelessWidget {
  const NotificationCart({super.key, required this.status});
  final String status;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      decoration: BoxDecoration(
          color: ColorConstant.borderFillCOlor,
          borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: status == '0'
                    ? ColorConstant.rejectedBackground
                    : ColorConstant.acceptedBackground,
                borderRadius: BorderRadius.circular(8)),
            child: Text(
              status == '0' ? 'Rejected' : 'Accepted',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeightConstant.bold,
                  color: status == '0'
                      ? ColorConstant.red
                      : ColorConstant.primaryColor),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            'Your time off request has been ${status == '0' ? 'rejected' : 'accepted'}',
            style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeightConstant.bold,
                color: Colors.white),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            '19th Feb, 12:33',
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeightConstant.bold,
                color: ColorConstant.textGrey2),
          )
        ],
      ),
    );
  }
}
