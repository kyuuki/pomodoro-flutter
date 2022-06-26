import 'package:flutter/material.dart';
import 'timer_screen.dart';

class TopPage extends StatefulWidget {
  const TopPage({Key? key}) : super(key: key);

  @override
  State<TopPage> createState() => _TopPageState();
}

class _TopPageState extends State<TopPage> {
  int _index = 0;

  static final List<Widget> _screens = [
    const TimerScreen(),
    const TimerScreen(),
    const TimerScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("pomodoro")),
      body: _screens[_index],
      bottomNavigationBar: BottomNavigationBar(
        // 現在のページインデックス
        currentIndex: _index,
        // onTapでナビゲーションメニューがタップされた時の処理を定義
        onTap: (index) {
          setState(() {
            _index = index;
          });
        },
        // 定義済のナビゲーションメニューのアイテムリスト
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.timer),
            label: 'Timer',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.cloud),
            label: 'xxx',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.cake),
            label: 'yyy',
          ),
        ],
      ),
    );
  }
}

