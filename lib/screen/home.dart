import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MyApp",

      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      home: MyWidget(),
    );
  }
}


class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        centerTitle: true,
      ),

      body: SizedBox(
        width: double.infinity,
        height: 350,
        child: Column(
          children: [
            // Image(
            //   image: AssetImage('assets/silverfox.png'),
            //   fit: BoxFit.fill,
            // ),
            ColorFiltered(
                colorFilter: ColorFilter.mode(Colors.transparent, BlendMode.color),
              child: Image(
                image: AssetImage('assets/silverfox.png'),
                fit: BoxFit.fill,
              ),
            )
          ],
        )
      )

    );
  }
}

