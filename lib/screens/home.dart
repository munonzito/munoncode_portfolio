import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<AppCard> appCards = [
    // AppCard(
    //   title: "Munoncode\nAcademy",
    //   buttonText: "Entrar",
    //   customIcon: Icons.attach_money,
    //   revenue: 99,
    //   downloads: 20,
    //   url: "https://flycrew.com/munoncode/subscribe/e6118e50df",
    //   imageUrl:
    //       "https://media.discordapp.net/attachments/1074418812641882162/1139287790861946910/man_coding_app_square.png?width=616&height=616",
    // ),
    AppCard(
      title: "(GRATIS) Curso Para Crear Apps",
      buttonText: "Obtener",
      captureEmail: true,
      customIcon: Icons.attach_money,
      revenue: 0,
      downloads: 2200,
      url: "https://youtu.be/-LrjKXSnb1o",
      imageUrl:
          "https://media.discordapp.net/attachments/1074418812641882162/1142282421698580490/SGpKUTAOzEp1sWkv77YoZEwUwzzTTTTDPNNNNMM800bfov47esixotD9wAAAAASUVORK5CYII.png?width=323&height=242",
    ),
    // AppCard(
    //   title: "(GRATIS) Guía Flutter",
    //   buttonText: "Obtener",
    //   captureEmail: true,
    //   customIcon: Icons.attach_money,
    //   revenue: 0,
    //   downloads: 500,
    //   url: "https://example.com",
    //   imageUrl:
    //       "https://media.discordapp.net/attachments/1074418812641882162/1142282421698580490/SGpKUTAOzEp1sWkv77YoZEwUwzzTTTTDPNNNNMM800bfov47esixotD9wAAAAASUVORK5CYII.png?width=323&height=242",
    // ),
    AppCard(
      title: "(GRATIS) Mi Framework de Contenido Viral",
      buttonText: "Obtener",
      captureEmail: true,
      customIcon: Icons.attach_money,
      revenue: 0,
      downloads: 192,
      url:
          "https://tar-surfboard-c97.notion.site/La-Gu-a-Para-Crecer-en-Instagram-TikTok-y-Youtube-703fc18b0eee4780b0eb2837e14537eb?pvs=4",
      imageUrl:
          "https://media.discordapp.net/attachments/1074418812641882162/1142282620558905464/wBcu4PQXDIHbwAAAABJRU5ErkJggg.png?width=281&height=281", // You can add the URL for the image here
    ),
  ];

  ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Aprende",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: appCards)
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Mis Aplicaciones",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        AppCard(
                          title: "Tutor AI",
                          url:
                              "https://play.google.com/store/apps/details?id=com.munoncode.ai_tutor_app",
                          revenue: 2000,
                          downloads: 100000,
                          imageUrl:
                              "https://play-lh.googleusercontent.com/jGccq1xrZ7XxhCIA3UOfO4mWhcKjRQAHpMoxEeZLZ0lE8RDgmmFVM4Cgo-29wXn4Gm4=w240-h480-rw",
                        ),
                        AppCard(
                          title: "Bubble AI",
                          url:
                              "https://play.google.com/store/apps/details?id=com.munoncode.bubbleai",
                          revenue: 1.2,
                          downloads: 50,
                          imageUrl:
                              "https://play-lh.googleusercontent.com/VlZQHYy0QPxBvokd771jMBBGX9xw3py2Hz2YtNfgOEMSSQ33uLoWw6YDoZyf9oBdaA=w240-h480-rw",
                        ),
                        AppCard(
                          title: "ThreadsAI: Contenido Viral IA",
                          url:
                              "https://play.google.com/store/apps/details?id=com.munoncode.threadsai",
                          revenue: 0.5,
                          downloads: 18,
                          imageUrl:
                              "https://play-lh.googleusercontent.com/jOSwNh-LBNEp2pQHNBoc9FLKdrYADgm3BgWN3CgxbnEzrJVMqb3l0CE_Nc05u9ZJb3o=w240-h480-rw",
                        )
                      ],
                    ),
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
