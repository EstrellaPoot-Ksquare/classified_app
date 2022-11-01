import 'package:flutter/material.dart';

class ProfileCircleAppbar extends StatelessWidget {
  const ProfileCircleAppbar({
    Key? key,
    required this.context,
  }) : super(key: key);

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    double appbarHeight = MediaQuery.of(context).padding.top + kToolbarHeight;
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/settings');
      },
      child: Container(
        margin: EdgeInsets.symmetric(
            vertical: (appbarHeight * 0.2),
            horizontal: (appbarHeight * 0.6 * 0.2)),
        width: appbarHeight * 0.6,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Image.asset(
            'images/golf-r.jpg',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
