import 'package:flutter/material.dart';
import 'package:munoncode_portfolio/screens/screens.dart';
import '../widgets/widgets.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth < 600) {
      return const MobileHome();
    } else {
      return const DesktopHome();
    }
  }
}
