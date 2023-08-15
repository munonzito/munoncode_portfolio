import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:munoncode_portfolio/scripts/helpful_scripts.dart';
import 'package:munoncode_portfolio/widgets/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class AppCard extends StatelessWidget {
  String title;
  double revenue;
  int downloads;
  String imageUrl;
  String buttonText;
  IconData customIcon;
  bool captureEmail;
  String url;
  AppCard(
      {required this.title,
      required this.revenue,
      this.downloads = -1,
      required this.imageUrl,
      this.buttonText = "Ver",
      this.customIcon = Icons.monetization_on,
      this.captureEmail = false,
      this.url = "",
      super.key});
  final TextEditingController _emailController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 320,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(20),
        image: imageUrl == ""
            ? null
            : DecorationImage(
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
                    padding: const EdgeInsets.only(bottom: 50.0),
                    child: Text(
                      title,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        shadows: [
                          Shadow(
                            color: Colors.black,
                            offset: Offset(0, 6.0),
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
                                customIcon,
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
                              onPressed: () {
                                if (captureEmail) {
                                  showDialog(
                                      context: context,
                                      builder: (context) {
                                        return SingleChildScrollView(
                                          child: AlertDialog(
                                            title: Text(title),
                                            content: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Text(
                                                  "Tu Correo",
                                                  style: TextStyle(
                                                    fontSize: 18,
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                Container(
                                                  width: 250,
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal: 10.0),
                                                  decoration: BoxDecoration(
                                                    color: Colors.grey
                                                        .withOpacity(0.3),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                  child: Form(
                                                      key: _formKey,
                                                      child:
                                                          CustomTextFormField(
                                                        controller:
                                                            _emailController,
                                                      )),
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                ElevatedButton(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                            backgroundColor:
                                                                Colors.purple),
                                                    onPressed: () async {
                                                      if (_formKey.currentState!
                                                          .validate()) {
                                                        // Do something with the valid email
                                                        if (url != "") {
                                                          await addContactToEmailList(
                                                                  email:
                                                                      _emailController
                                                                          .text)
                                                              .then((val) {
                                                            launchUrl(
                                                                Uri.parse(url));
                                                          });
                                                        }
                                                      }
                                                    },
                                                    child: Text(
                                                      "Obtener",
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    )),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                Text(
                                                  "(Al hacer click en obtener\n aceptas que te envíe correos)",
                                                  textAlign: TextAlign.center,
                                                )
                                              ],
                                            ),
                                            actions: [
                                              TextButton(
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                  },
                                                  child: Text("Cerrar"))
                                            ],
                                          ),
                                        );
                                      });
                                } else {
                                  launchUrl(Uri.parse(url));
                                }
                              },
                              child: Text(buttonText,
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
