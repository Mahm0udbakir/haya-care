import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:haya_care/core/theme/app_color.dart';
import 'package:haya_care/feature/home/ui/view/home_screen.dart';
import 'package:haya_care/feature/home/ui/view_model/bottom_nav_bar_cubit.dart';
class NavBarScreen extends StatelessWidget {
  const NavBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<BottomNavCubit, int>(
        builder: (context, state) {
          return IndexedStack(
            index: state,
            children: const [
              HomeScreen(),
              SecondScreen(),
              ThirdScreen(),
              ForthScreen()
            ],
          );
        },
      ),
      bottomNavigationBar: BlocBuilder<BottomNavCubit, int>(
        builder: (context, state) {
          return Container(
              height: 80,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                backgroundColor: AppColors.cardColor,
                selectedItemColor: AppColors.primaryColor,
                unselectedItemColor: AppColors.textSecondary,
                elevation: 0,
                selectedFontSize: 12,
                unselectedFontSize: 12,
                selectedLabelStyle: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
                currentIndex: state,
                onTap: (value) {
                  BlocProvider.of<BottomNavCubit>(context).changeTab(value);
                },
                items: [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home_outlined),
                    activeIcon: Icon(Icons.home),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.calendar_today_outlined),
                    activeIcon: Icon(Icons.calendar_today),
                    label: 'Appointments',
                  ),
                  BottomNavigationBarItem(
                    activeIcon: Icon(Icons.add_box_sharp, color: Colors.blue),
                    icon: Icon(Icons.add),
                    label: 'book',
                  ),
                  BottomNavigationBarItem(
                    activeIcon: Icon(Icons.settings, color: Colors.blue),
                    icon: Icon(Icons.settings),
                    label: 'Settings',
                  ),
                ],
              ));
        },
      ),
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('First Screen'));
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('SecondScreen '));
  }
}

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('ThirdScreen'));
  }
}

class ForthScreen extends StatelessWidget {
  const ForthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('ThirdScreen'));
  }
}
