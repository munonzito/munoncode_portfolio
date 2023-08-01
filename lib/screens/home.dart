import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Column(
              children: [
                Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 10.0,
                  runSpacing: 20.0,
                  children: [
                    AppCard(
                      title: "Tutor AI",
                      revenue: 2000,
                      downloads: 100000,
                      imageUrl:
                          "https://play-lh.googleusercontent.com/jGccq1xrZ7XxhCIA3UOfO4mWhcKjRQAHpMoxEeZLZ0lE8RDgmmFVM4Cgo-29wXn4Gm4=w240-h480-rw",
                    ),
                    AppCard(
                      title: "Bubble AI",
                      revenue: 1.2,
                      downloads: 50,
                      imageUrl:
                          "https://play-lh.googleusercontent.com/VlZQHYy0QPxBvokd771jMBBGX9xw3py2Hz2YtNfgOEMSSQ33uLoWw6YDoZyf9oBdaA=w240-h480-rw",
                    ),
                    AppCard(
                      title: "ThreadsAI: Contenido Viral IA",
                      revenue: 0.5,
                      downloads: 18,
                      imageUrl:
                          "https://play-lh.googleusercontent.com/jOSwNh-LBNEp2pQHNBoc9FLKdrYADgm3BgWN3CgxbnEzrJVMqb3l0CE_Nc05u9ZJb3o=w240-h480-rw",
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
