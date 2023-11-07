import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'prediction.dart';
import 'profile.dart';

class CustomNavBar extends StatefulWidget {
  @override
  _CustomNavBarState createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.0,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _NavItem(
            icon: Icons.home,
            label: 'Home',
            index: 0,
            currentIndex: _currentIndex,
            onTap: () {
              _onNavItemTapped(0);
            },
          ),
          _NavItem(
            icon: Icons.album_rounded,
            label: 'Filter',
            index: 1,
            currentIndex: _currentIndex,
            onTap: () {
              _onNavItemTapped(1);
            },
          ),
          _NavItem(
            icon: Icons.people,
            label: 'About Us',
            index: 2,
            currentIndex: _currentIndex,
            onTap: () {
              _onNavItemTapped(2);
            },
          ),
        ],
      ),
    );
  }

  void _onNavItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });

    switch (index) {
      case 0:
        // Navigate to the HomeScreen
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomeScreen()),
        );
        break;
      case 1:
        // Navigate to the FavoritesScreen
        // InkWell(
        //   onTap: () {
        //     Get.toNamed('/prediction');
        //   },
        // );
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Prediction()),
        );
        break;
      case 2:
        // Navigate to the ProfileScreen
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Profile()),
        );
        break;
      default:
        // Handle other cases
        break;
    }
  }
}

class _NavItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final int index;
  final int currentIndex;
  final VoidCallback onTap;

  _NavItem({
    required this.icon,
    required this.label,
    required this.index,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      splashColor: Colors.blue,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: index == currentIndex ? Colors.black : Colors.black,
          ),
          Text(
            label,
            style: TextStyle(
              color: index == currentIndex ? Colors.black : Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
