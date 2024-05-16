import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:hourtag/home/dashboard/cubit/dashboard_cubit.dart';
import 'package:hourtag/home/dashboard/screen/dashboard.dart';
import 'package:hourtag/home/shifts/screen/shifts_screen.dart';

import 'package:hourtag/util/color_constant.dart';

import 'shifts/cubit/shifts_cubit.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({
    Key? key,
    required this.authToken,
  }) : super(key: key);
  final String authToken;
  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int selectedIndex = 0;
  late DashboardCubit cubit;
  @override
  void initState() {
    cubit = context.read<DashboardCubit>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> screen = <Widget>[
      BlocProvider<DashboardCubit>(
        create: (context) => DashboardCubit(widget.authToken),
        child: DashboardScreen(
          cubit: cubit,
        ),
      ),
      MultiBlocProvider(
          providers: [
            BlocProvider<DashboardCubit>(
              create: (context) => DashboardCubit(widget.authToken),
            ),
            BlocProvider<ShiftsCubit>(create: (context) => ShiftsCubit())
          ],
          child: ShiftsScreen(
            dcubit: cubit,
          ))
    ];
    return Scaffold(
      backgroundColor: ColorConstant.backgroundColor,
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: ColorConstant.backgroundColor,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: SizedBox(),
              label: 'Dashboard',
            ),
            BottomNavigationBarItem(
              icon: SizedBox(),
              label: 'Shifts',
            ),
          ],
          currentIndex: selectedIndex,
          selectedItemColor: ColorConstant.backgroundGrey,
          unselectedItemColor: ColorConstant.textGrey,
          selectedFontSize: 15,
          unselectedFontSize: 15,
          onTap: (int index) {
            setState(() {
              selectedIndex = index;
            });
          }),
      body: Center(
        child: screen.elementAt(selectedIndex),
      ),
    );
  }
}
