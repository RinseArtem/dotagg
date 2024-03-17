import 'package:dotagg/resources/route_list.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(52);
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text('Dota', style: TextStyle(fontWeight: FontWeight.bold)),
          Text('GG', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Color(0xffF63D68)))
        ],
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: Badge(
              child: Icon(Icons.notifications_outlined),
              label: Text('3'),
            )
        ),

        IconButton(
            onPressed: () {},
            icon: Badge(
              child: Icon(Icons.mail_outline),
              label: Text('3'),
            )
        ),

        IconButton.filled(
            onPressed: () {
              Navigator.of(context).pushNamed(RouteList.newPost);
            },
            color: Colors.white,
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Color(0xffF63D68))
            ),
            icon: Icon(Icons.edit, size: 18)
        ),
      ],
    );
  }
}
