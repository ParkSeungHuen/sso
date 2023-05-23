import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("메인 화면"),
        centerTitle: true,
      ),

      body: SizedBox(
        width: double.infinity,
        height: 350,
        child: Column(
          children: [
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

