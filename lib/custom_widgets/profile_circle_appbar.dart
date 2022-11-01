import 'package:flutter/material.dart';

class ProfileCircleAppbar extends StatelessWidget {
  const ProfileCircleAppbar({
    Key? key,
    required this.context,
  }) : super(key: key);

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/settings');
      },
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: (10),
        ),
        child: const CircleAvatar(
          backgroundImage: AssetImage('images/golf-r.jpg'),
        ),
      ),
    );
  }
}
