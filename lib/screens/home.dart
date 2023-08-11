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
                    Wrap(
                      alignment: WrapAlignment.center,
                      spacing: 10.0,
                      runSpacing: 20.0,
                      children: [
                        AppCard(
                            title: "Comunidad\nPrivada",
                            buttonText: "Entrar",
                            customIcon: Icons.attach_money,
                            revenue: 19,
                            downloads: 10,
                            imageUrl:
                                "https://media.discordapp.net/attachments/1074418812641882162/1139287790861946910/man_coding_app_square.png?width=616&height=616"),
                        AppCard(
                            title: "(GRATIS) Guía Flutter",
                            buttonText: "Obtener",
                            captureEmail: true,
                            customIcon: Icons.attach_money,
                            revenue: 0,
                            downloads: 444,
                            imageUrl:
                                "data:image/png;base64,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",
                            url:
                                "https://drive.google.com/file/d/1FWezTdLgOoROTNJmjZuMOM39FVKXKfKu/view?usp=sharing"),
                        AppCard(
                            title: "(GRATIS) Mi Framework de Contenido Viral",
                            buttonText: "Obtener",
                            captureEmail: true,
                            customIcon: Icons.attach_money,
                            revenue: 0,
                            downloads: 444,
                            imageUrl:
                                "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAABPlBMVEUAAAD////+KlMA8u7///4A8u3Y+/oG7Ogo19X9///53uXrDUTMNVL+KVQA8vD/KVKiJT/3M1oRQT9IGB7/GE7op7Ly///kV3FF6eQGAAAAAgD4///j////LVj/+/8A8fJLCxfnlqj0yNULJyPxNlzrF0qJIzcVAADjfJL+7PL/09//3+rlCz5nIC0VOTcSQEEU3tgFGRUPVFND6uJNdXNKAAE5DhfJ/fzEO1bgS2rtkqTjNVfwqbyAJTSsLEPiGErgQGAhBQbxuslECxO7HEJsABspAADWxsvI2tqh7ucLdHCC9e0WZ2YfgX6A7u8jt7UdoJsJHBZi6Oea9fLGXXHYXnoOJigVwLweo50eencfkY+5+/q0qa80ExjvepVZGiXXNla+R2CMhIRRwrsoPDvo6eswHiE4AABXABbbV3gW02cBAAAPjklEQVR4nO1dC1vaXBImN8MBkyNKuYiAWqBevlqqu8WKt/J1u9tWwdW1trJfZe/r//8De2ZOEiGEEEVJ4uattuoj9LzMnJk5c2aGWCxChAgRIkSIECFChAgRIkSIECFChAgRIkSIECHC/yHyfi8gQgQLW/Pz82/mnbD1TBQ1Lil6WR+Gosf9XtojIS5JihN0Pf5sZCgpki7putQPXZGU+nNiCGIcYAjfqs+KIZMa/MuI8b/gQ3nr99oeB8hQQVUd2IaM8zb/jUV/FzgxgCGjk8vt5Oz43e+XGd75vcJJwWWoNgqZIaxWUwy7fq9wUvB9qM7IstAHGbBZpVQUZ/1e4aQwGQoDDBkIKb2nmib2/F7hpHCWISHsU9hLixptfvB7iRNiNEOBbCSpSFNhNzXODDlN4ZhSrXjj9xInhAtDgeynqVg88HuJE8KV4XqFitqh30ucEK5aKqwwW9OMhTun4cJQZkI8EsWwmxo3LZWJsCLSYs3vNU4GN4ZMUUvHNOw+31WGTIqrVVpZ8HuRE8HVlhKmp2tpbc7vRU4E930IxuZ9yAM3N1sqwyfZrIbb1rhaGhlYklY11EJ0Zwg/ZC6jOhfiXIa7t+C7UVg7+tXvdT4cYxnKcJRa++j3Oh+O8TIUiFwQ9v4QC2vWzYMMBXCLLz6FNfz2whBICn/0e6UPhQct5QyFP72MhfIY5YWhgOEN+fwlhhRDxtIjQ8I2Y+br1Ql/UD5MJD0yFNCktpX46Uu/V3xfeGXIAlRBzrQVSe18+fYcZci8PlAstFVJ0tX42cmf/V64Z3jXUgHjm66qK5Ku61K9c/1le8vv5XvAvRgSWZYbOUkqGxfFipKb95vAWNyPIZBcQk3VdbhG1c1r1ADjXgwFOPTLpHGuQrGGDgUNz4shHId5fqrRVlWgKJWfF0OMUZnbAKaZ7nkOJPnMGA6yzTQuznPPmCFX2sxfPs69XvjwKsBnxwkYgsYKWU0sFlPNACeNJ2AI98RCllKR0tSzZAjuHxiKVBPDx5B/g7f5Lmd/lKGmUREYBnYjjmRICIHzxDiwfSiK4dRSqBkSxnMMLUNi/Hm+DGVCShiijTNAYWaYuEwQMnYjhpYh09BE8milBKcJU2uDyXA4oWL7yUiGQiIpppst/h0xfhYshov9ZPIAp99yZSjSZHZVKKDRCaoMY7Fvb05Orzudq6urTuf69MSeWXFlyFZPq7cbZq2iE0k/GeZji9vXnbiKdfi60WSgfL8PQwoc09XLVdN9BIrh4o+rOnYVKEbSCJNH5bP77ENR1DStqDFdbY3aiFNmCKvH+DB/cjXYQcE7DhjuwxAWL84u94qUJpsr6xjIgR8xyk9RebNUo1NmyPD2uq5DM9Ndd4hJV3kAw1isVmEs0keX+0iSYI0Gl6c8bYaIl2d1bJjo64OB1J/xzUMYxj4dVpgcafIou7K6jkE5MZWWnS2mqKWooNc7YFcUybQuvAsGE2NMhMpZ/+96ZRiL/bqbAiY0zVjutTbXBdO+ZsEaTYshSOekLhl0FEN6kLnVVVXNnbcvPne7f/14eDhXe/2b+SAvDPPwctwARwon+nT6l6Pj7M+9fQAo8BS19FtHAUa8j4kJEkyLpKo7X7tLmQLfOS/SGthHq1TNowwBC4wjIylCFwbjSTmmx3ARBKgrRjuh4f10dafdXSr0ndRfpMHHaQ9hGIsts/2ooQsBaQJR+HpaWpqPnUllxknh/g/uFHT1vJshaPgegeEi6OpvtWYRGYrIEn5BnJYtfXullHXFuPpiNMuK2p7B9PTAOXYiGSJuDnsp4AjSo8h0Ogy36mAzy4YEJWZbLpYwoYllosIjMmRYqO02UyzWYdIDRRWnkWubV8GwcM8OYajaXsIrFON8Jz/OPoTNvsjVNb9wcDjbrKSKRW0aDPPbfQSZp1DPZ4wiGF4j+tgyNPHqt5uDWm1ubq72lOWZ7DWNvVGhr7UMrgLceq5bGJnmfFSGU8O8yjt4eXimni+NYPf4DKeUBv6GcaiucBevXhTcUoChlGFc0Q37wpxFriHLblnOMDLslHl8De3XSm5GHp0XCynDH4pxOIJ4Jrc0LoMbPoZbvIJHwcqInJuNCSvDK4hAJX6QYBIce88QLobsQHjKxFfGA4Whos9NS1+qCh9EopSlnRmIYJ4bww7WXpXB0KgNUNGxVymhYpiPvVF0M1eoXhDbCo0aJsbbos2+CBVDMDOKOTGnXRjST0yJsY9SorW39vPy59re/kbpRZqGiOG8MXeFfewMOULMbBJSSqwdV5PpNE0zJKvNY00rhodhx8w66Wp3yIxy+bWySUyo4Ekccys0RFoKzl7BhKH0FTecjaAgbLxPmqkUK2kkhojhmY5aygg6BGtMgqW9qiE9CzAFQgsPwzqfYSWVwY6SIYLrl2me2aSGFEFRNRH/PChfOnVsK5g7ZM4wl7HffEH/7rFmys1UUWZkUinIrIhhYJiPfcdolHlEtWtXUQEblA3N1HDjicVK73Du4Gbh5nXtcLYSAoZMSbHOmq0vl5GtqyBzgaVsWrQYimIxtXvwqe+xH6xJEAFmiM5QRxHKw6USe2nLwjAZVg4Hs335u/xKcBnmr3HOGrMzOxl5gCD4+dUk1SwnUZxdHv08wWUY6/DkqK63bTsQcsDHd25Qq7h20weXYb7O89u62hj09RBu76e5ijKrqTXdpyAFl+FLM2LLFWyegsWiTS5CTaNab8x0mcAyzJ8Y5yblQh5kCMFo0rKjzXGN9IFlGDs1brHZ2gT72tbSph3lg1fcMtPBZfhd4pl8Fs+QwVMFWT+ippc/GJt3H1kjTPxm2DHu6dvEfm5iroLHMWLRw1TH0bX6fjO84klS7u77N6IMA7q4o6i8G39zElyGcV5wwZZmU1KZ/KR4xU6LXmYDjd6H69xe+cVwsY62lB8rbI0EWWDI1LTpZQzZaBn6zPBtHfwhO/sSPiann+ExhRt2TTzk99HuiCsjGVZ9ZogHC/2rfV1MosciMBS9jXREbXfsmfGfIcbdF0MMBRmCUqppzVdenggnljvIkPjNcLGOhU9Oh18Bz76a5m0AcB2ujp0Z+rsPYR4+aFdjWEuFS2TobUAXXnw42VLCa4RFzUd/CBtRnXGQ4V4aKBZfe3mabQgbXKqgfY1pFObxHRjKhAXelFJvhuYHT0c62dJVzrD3xERG4juef1WHS1+CLz5NLXt6Gh3LNO2zoOGbfX4E82awngCneDx0ZFh6T6Gt09MAMlU3QiP7k8gwCdpPhvkT7seGGTJ1208zZ+GJ4TYUM7LPoTOYLJNLn2W4hePwnSyNzDyZxhgue3iWDm/IUNQl2Z5SNnM9vScmMhI8T+NkaWBGHtNSL5ZmC2v6oVIsY2MIDp/6a0vh+OToD+HKN8HCES9TqqEsHG1yrjBYAcD4bvwi+szwGtTLiGkGI28iE3ZE9HB22uY9Cozj+eD5BDYzjIGG6xz/3huB57wvkF3/8uBilJlTDyP/8/Gy2UrTtZU4sCe8pfwY7dM4bzgVqVCM3zZGqtgpJo5ca6/xVIU6aqSzbJcCMoFtCEcw36az5mGB7FRwDufD4SoMIrSqbmoKDE+NthNG87xA7HfkrSQeo7WUp+DvCcAYngBDTLUNyRAM6n6y6TpzjFf8cX8/VAUA4TseMrWKj/PKF+tlhadLHRiyH7WOai65xFOz7Ys9SS4j9z+a8Iwkv/B3f5meGGfgyLqyLU9zt9LNv40ccpjvSGYlDtuFF0L/q4R3kftwO6f5e0Eay8/DDXdbsGeELWtISn8f8dDt+F2pkVLOFQYYYpHRe4q3/lTzdwz0lY45b4eCRCymIULmH+aQo35Rznf4m1ZxR1HmUUM/Qzg5YQGOx9jvyZA/UfDewrFaDwaTELmhXn2x7cWTjqroZcVqTmQ6WhiYnQD7+BaLOJgp9XUb5nld22cHerg1Mc/YVXX16nr7JTTkx97O/+jUFauBj7vCtv31gR2cZPEM7ELf375jm60057gNrd14Ab0YzOaq8bqqlM2+S7zUwRTUV1vMLVsihGyWt1TIU+KqPHy9NkBQIBcqb5OV9P43yOPvHSep7QyOX+t/jExW+Y0FpM19H+M5z/bThbO7MBjKcmOHC0zXLQ/BHX1Zgu4Tu52SIUfAfaEYhHdFOBv01zaCYIRkPsqR9zlbDMuwBbH7RLBFDATfIYgjCENZ8nG4YBtBEbtnoH++cc53o2le4Nyr5roFuYQzkAcDtsSRyJWU+nhy6sM2szUFWR4xDAhnAzAKBcZRVfhETpCmCv2z+Kjhk8ktNRiKvkXdg7g2603G1LAvddvnORWRa3dniEOcgA2nK2a5GPUv3T2APItsWNjloQ+BSXJpaWZmZmkpI4/Qa7ZxN6qaUUtFmQh9N6WIt6radY5NB7XPGJKH8zmdfh0uk8l6Ezvu0ZCiCAMxaG5eBXM6ToRWuoOzdHoNCK/Z1HjRn58nwwHkF/MnanvcLjQago0vZcGxRZGUfqYplvLDzU4AfCECd8oXtWEKcfwcwJEvAbzzEWcH1rQXjD1o4gdkM8bb05HseFf7WtKckqDRVNDe9vDEKGYfP0LOAWiFhNKaFctQ/1Jso7HdGBmdjmfIXpcClPZbvQvBiGb6wfbMP/9lzv65P/hbcxllOOAomp/G/5/Tx79XhYcyJMJqE5iZx8KgjgX+zwqnaG8QGsUKJ5Ty9OFKEoflijiyRKwEzcpY+O9tAt/vjnhhKJvehQibWWrU+qEgAxJwO2AxdtCEaZXelBUn18BfpZUjKvb1LqTGF6X6iIOj45bgGHU6cgQBto5xcpRmHpkqgZUgx03FmFY5nh96idXbpHGLhlLUimNK+wOAd02NTzkctxlBk1u8PxHMi9F80gvw2GoTr3aLMOUwgRTMATxmm7dsjCSArzdXmkb/JbjBIhyairt+FV7cDzDmMJ3M7idkwRo6fneUIBgXJPazVSPMFo3WvXHdNUHCwixMqUoevV9rJUqCFawa/5QSLWh+pqaD5xRZKOrWHhU41GByHIUxh5XbtZXW6sYmYGO1tbKWrSSTaRahaQPtsyxQC40AYfYsTKuESY4adG9Dl3ryFwR0rVMr3avdSVBLHQYyEh0JMId8WqU5Ok40ZMa/7BcemJnU7tjemkBi+ZBPAOS9+IbTM7WTWj6waO+/DBM+1Xp8XKXJ0iLIrSi8b0OvFi79HMLCXK9StGJOjF+oMXtAK1Z6c+EVXx/eHQDLoqaZbd1wMZhi7A6Cki+cBHnDfLxaeH1w+HG212v2erMfD2uvFz7c/UqECBEiRIgQIUKECBEiRIgQIUKECBEiRIgQIUKECKHD/wBcu4PQXDIHbwAAAABJRU5ErkJggg==")
                      ],
                    )
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
