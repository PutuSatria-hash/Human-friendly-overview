import 'package:flutter/material.dart';

import 'course_list_page.dart';
import 'task_list_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static const _titles = ['Beranda', 'Tugas', 'Mata Kuliah'];
  static const _pages = <Widget>[
    Center(child: Text('Ringkasan tugas akan tampil di sini.')),
    TaskListPage(),
    CourseListPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_titles[_selectedIndex])),
      body: IndexedStack(index: _selectedIndex, children: _pages),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: (index) {
          setState(() => _selectedIndex = index);
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            label: 'Beranda',
          ),
          NavigationDestination(icon: Icon(Icons.checklist), label: 'Tugas'),
          NavigationDestination(
            icon: Icon(Icons.school_outlined),
            label: 'Mata Kuliah',
          ),
        ],
      ),
    );
  }
}
