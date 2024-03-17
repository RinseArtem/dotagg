import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Главная'
        ),

        BottomNavigationBarItem(
            icon: Icon(Icons.computer_outlined),
            label: 'Киберспорт'
        ),


        BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Поиск'
        ),

        BottomNavigationBarItem(
            icon: CircleAvatar(
              backgroundImage: NetworkImage('https://dota2.ru/img/forum/avatars/l/687/687266.jpg'),
              radius: 12,
            ),
            label: 'Rinse'
        ),
      ],
    );
  }
}
