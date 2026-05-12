import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSize {
  const AppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.blueAccent,
      centerTitle: true,
      title: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'News',
            style: TextStyle(
              fontWeight: FontWeight.bold
            ),
          ),
          Text(
            'App',
            style: TextStyle(
              color: Colors.amber,
              fontWeight: FontWeight.bold
            ),
          )
        ],
      ),
    );
  }
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  
  @override
  Widget get child => throw UnimplementedError();
}
