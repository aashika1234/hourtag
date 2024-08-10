import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hourtag/const/api_const.dart';
import 'package:hourtag/cubit/cubit/auth_cubit.dart';
import 'package:hourtag/home/profile/screen/profile_screen.dart';
import 'package:hourtag/util/color_constant.dart';
import 'package:hourtag/util/weight_constant.dart';

class CustomAppBAr extends StatelessWidget {
  const CustomAppBAr({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Row(
        children: [
          SizedBox(
              height: 24.5,
              width: 20,
              child: SvgPicture.asset('assets/icons/logo.svg')),
          const SizedBox(
            width: 10,
          ),
          const Text('HourTag',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeightConstant.extraBold))
        ],
      ),
      Row(
        children: [
          // InkWell(
          //   onTap: () {
          //     Navigator.push(
          //         context,
          //         MaterialPageRoute(
          //             builder: (context) => const NotificationScreen()));
          //   },
          //   child: Stack(
          //     clipBehavior: Clip.none,
          //     children: [
          //       Container(
          //         padding: const EdgeInsets.all(3.5),
          //         height: 34,
          //         width: 34,
          //         decoration: BoxDecoration(
          //             color: ColorConstant.borderFillCOlor,
          //             borderRadius: BorderRadius.circular(20)),
          //         child: SvgPicture.asset('assets/icons/notification.svg'),
          //       ),
          //       Positioned(
          //         right: -6,
          //         top: -12,
          //         child: Container(
          //           height: 24,
          //           width: 24,
          //           decoration: BoxDecoration(
          //             color: Colors.red,
          //             borderRadius: BorderRadius.circular(8),
          //           ),
          //           child: const Center(
          //             child: Text(
          //               '2',
          //               style: TextStyle(
          //                 color: Colors.white,
          //                 fontSize: 12,
          //               ),
          //               textAlign: TextAlign.center,
          //             ),
          //           ),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          // const SizedBox(
          //   width: 12,
          // ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ProfileScreen()));
            },
            child: BlocBuilder<AuthCubit, AuthState>(
              builder: (context, state) {
                final image = state.userProfileModel?.profile_image ?? '';
                return Container(
                  height: 34,
                  width: 34,
                  decoration: BoxDecoration(
                      color: ColorConstant.backgroundGrey.withOpacity(0.9),
                      borderRadius: BorderRadius.circular(20)),
                  child: image.isEmpty
                      ? const Icon(
                          CupertinoIcons.profile_circled,
                          size: 20,
                        )
                      : ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: CachedNetworkImage(
                            progressIndicatorBuilder:
                                (context, url, progress) => const Center(
                              child: CupertinoActivityIndicator(
                                color: Colors.white,
                              ),
                            ),
                            imageUrl: image.startsWith("https")
                                ? image
                                : "${ApiContants.imageBaseUrl}$image",
                            fit: BoxFit.cover,
                            errorWidget: (context, url, error) => const Icon(
                              CupertinoIcons.profile_circled,
                              size: 60,
                            ),
                          ),
                        ),
                );
              },
            ),
          )
        ],
      )
    ]);
  }
}
