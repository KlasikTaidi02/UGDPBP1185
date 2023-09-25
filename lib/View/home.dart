import 'package:flutter/material.dart';
import 'package:cobaugd1/View/view_list.dart';
import 'package:cobaugd1/View/grid.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _selectedIndex = 0;
  bool isDarkMode = false;

  void toggleTheme() {
    setState(() {
      isDarkMode = !isDarkMode;
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  bool isListViewSelected() {
    return _selectedIndex ==
        1; // Menampilkan halaman daftar nama saat indeks yang dipilih adalah 1
  }

  static const List<Widget> _widgetOptions = <Widget>[
    Center(
      child: CustomGrid(),
    ),
    ListNamaView(),
    Center(
      child: Text(
        'index 3: Profile',
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: isDarkMode ? ThemeData.dark() : ThemeData.light(),
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.list), label: 'List'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
        body: Stack(
          children: [
            _widgetOptions.elementAt(_selectedIndex),
            Positioned(
              bottom: 16,
              right: 16,
              child: FloatingActionButton(
                onPressed: toggleTheme,
                child: Icon(Icons.brightness_6),
              ),
            ),
          ],
        ),
        appBar: AppBar(
          title: Text('Spectra'),
        ),
      ),
    );
  }
}
