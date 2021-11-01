import 'package:flutter/material.dart';

class CoffeeInfo extends StatelessWidget {
  const CoffeeInfo({Key? key}) : super(key: key);
  final imageUrl =
      "https://images.unsplash.com/photo-1485808191679-5f86510681a2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=687&q=80";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                color: Colors.brown,
                height: MediaQuery.of(context).size.height * 0.4,
                width: MediaQuery.of(context).size.width * 1,
                child: Center(
                    child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                        child: Column(
                          children: [
                            CircleAvatar(
                              backgroundImage: NetworkImage(imageUrl),
                              radius: MediaQuery.of(context).size.width * 0.2,
                            ),
                            Text(
                              "Flutter Kahvecisi",
                              style: Theme.of(context).textTheme.headline3,
                            ),
                            Text(
                              "BİR FİNCAN UZAĞINIZDA",
                              style: Theme.of(context).textTheme.subtitle1,
                            ),
                          ],
                        ))),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.brown,
                height: MediaQuery.of(context).size.height * 0.6,
                child: Center(
                  child: Card(
                    margin: EdgeInsets.fromLTRB(50, 0, 50, 100),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const ListTile(
                          leading: Icon(Icons.mail_rounded),
                          title: Text("siparis@fkahvecisi.com"),
                        ),
                        const ListTile(
                          leading: Icon(Icons.phone),
                          title: Text("+90 533 333 33 33"),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
