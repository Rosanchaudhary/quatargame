import "package:flutter/material.dart";
import 'package:qatargame/screens/other_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.black,
      appBar: AppBar(
        titleSpacing: 40,
        title: const Text(
          "Cписок стадионов",
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
          height: 36,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[
                  Color.fromRGBO(108, 177, 18, 1),
                  Color.fromRGBO(91, 153, 24, 1)
                ]),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const OtherScreen()));
                },
                child: const Text(
                  "Стадион",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
              ),
              const Text(
                "Город",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
              const Text(
                "Вместимость",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
            ],
          ),
        ),
        const ItemList(),
        const ItemList(),
        const ItemList(),
        const ItemList(),
        const ItemList(),
        const ItemList(),
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
