import 'package:flutter/material.dart';
import 'package:hourtag/util/color_constant.dart';
import 'package:hourtag/util/weight_constant.dart';
import 'package:hourtag/widgets/custom_button.dart';
import 'package:url_launcher/url_launcher.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});
  void launchURL() async {
    const url = 'https://app.hourtag.com/reset-password-link';
    if (await canLaunchUrl(Uri(path: url))) {
      await launchUrl(Uri(path: url));
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height * 0.2;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: ColorConstant.backgroundColor,
          leading: InkWell(
              onTap: () => Navigator.pop(context),
              child: Icon(Icons.close, color: ColorConstant.textGrey2)),
        ),
        backgroundColor: ColorConstant.backgroundColor,
        body: Padding(
          padding: EdgeInsets.only(left: 25, right: 25, top: height),
          child: SafeArea(
            child: Column(
              children: [
                Text(
                  'Forgot Password?',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeightConstant.extraBold,
                      color: ColorConstant.backgroundGrey),
                ),
                const SizedBox(
                  height: 24,
                ),
                Text('Please go to app.hourtag.com to reset your password.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeightConstant.bold,
                        color: ColorConstant.backgroundGrey)),
                const SizedBox(
                  height: 24,
                ),
                CustomnButton(
                    text: 'Open app.hourtag.com', onTap: () => launchURL()),
                const SizedBox(
                  height: 12,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 17.5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: ColorConstant.primaryColor)),
                    child: const Center(
                      child: Text(
                        'Go Back',
                        style: TextStyle(fontSize: 17, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        "Say hi at hello@hourtag.com",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeightConstant.bold,
                            color: ColorConstant.textGrey2),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
