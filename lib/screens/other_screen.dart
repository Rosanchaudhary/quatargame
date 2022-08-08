import "package:flutter/material.dart";

class OtherScreen extends StatelessWidget {
  const OtherScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.chevron_left),
        ),
        titleSpacing: 40,
        title: const Text(
          "Стадион",
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.w400, color: Colors.white),
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[
                  Color.fromRGBO(39, 174, 254, 1),
                  Color.fromRGBO(4, 61, 108, 1)
                ]),
          ),
        ),
      ),
      body: ListView(children: [
        Container(
          height: 14,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[
                  Color.fromRGBO(108, 177, 18, 1),
                  Color.fromRGBO(91, 153, 24, 1)
                ]),
          ),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 4)),
                child: Image.network(
                  "https://s3-alpha-sig.figma.com/img/999a/1b77/e4e3312770b4f78ebaca457cc58a7eee?Expires=1661126400&Signature=YVgKifDdlz-Q0weUNuvJxuINm0XjsuP8b~j9j4Y2a7qqb5x9y7F~jchBKDJGCoKKvKZMogWUWVchBT714x3EnQ37kyXzBjuhrb1NOVt41DpyP0U1N47s4uIiYB0pNEIXxI0XHjGRoG~B4-79SBHIfLyEz-zmWUf-FiEZZ~fbdrUs7YGTs-B2xcE8Ys40taSzu8Z1O3RzWzOrGfWwciRuD2i45zINYj-rJloNe0JTjyWsHk1kSp2O759h1HhY5aI0qGvd-IIK4bzMX69VzvW3UhV1NLSbsgz18K8MvSZRRV3sVz4gES-XHwT2mD7~GR8IcltRWai7m9Cwexas4LGcFA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA",
                  height: 122,
                  width: 120,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Text(
              "Ахмед бин Али",
              style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w400),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 190,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 4),
                borderRadius: BorderRadius.circular(20.0)),
            child: Column(
              children: const [
                Text(
                  "Страна: Катар",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w400),
                ),
                Divider(
                  color: Colors.black,
                  thickness: 4,
                ),
                Text(
                  "Город:Аль-Райан",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w400),
                ),
                Divider(
                  color: Colors.black,
                  thickness: 4,
                ),
                Text(
                  "Вместимость:40 740",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w400),
                ),
                Divider(
                  color: Colors.black,
                  thickness: 4,
                ),
                Text(
                  "Матчи:	7",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
        )
      ]),
      bottomNavigationBar: Container(
        height: 60,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[
                Color.fromRGBO(39, 174, 254, 1),
                Color.fromRGBO(4, 61, 108, 1)
              ]),
        ),
      ),
    );
  }
}

class ItemList extends StatelessWidget {
  const ItemList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            Text("974"),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 6.0),
              child: VerticalDivider(
                color: Colors.black,
                thickness: 4,
              ),
            ),
            Text("Доха, Катар"),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 6.0),
              child: VerticalDivider(
                color: Colors.black,
                thickness: 4,
              ),
            ),
            Text("40 000"),
          ],
        ),
      ),
    );
  }
}
