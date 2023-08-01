import 'package:flutter/material.dart';

class AppCard extends StatelessWidget {
  String title;
  double revenue;
  int downloads;
  String imageUrl;

  AppCard(
      {required this.title,
      required this.revenue,
      this.downloads = -1,
      required this.imageUrl,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 320,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
          height: 250,
          width: 320,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 7,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.transparent,
                Colors.black.withOpacity(0.7),
              ],
            ),
          ),
          child: Stack(
            children: [
              Positioned.fill(
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    child: Text(
                      title,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        shadows: [
                          Shadow(
                            color: Colors.black,
                            offset: Offset(0, 4.0),
                          ),
                        ],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned.fill(
                  child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                    height: 60,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      //border radius bottom
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.monetization_on,
                                size: 20,
                                color: Colors.green,
                              ),
                              Text(revenue.toString(),
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ))
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.download,
                                size: 20,
                                color: Colors.black,
                              ),
                              Text(downloads.toString(),
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ))
                            ],
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.purple),
                              onPressed: () {},
                              child: Text("Ver",
                                  style: TextStyle(color: Colors.white)))
                        ],
                      ),
                    )),
              ))
            ],
          )),
    );
  }
}
