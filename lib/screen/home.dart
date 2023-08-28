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

      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 400,
            child: ColorFiltered(
                colorFilter: ColorFilter.mode(Colors.transparent, BlendMode.color),
              child: Image(
                image: AssetImage('assets/silverfox.png'),
                fit: BoxFit.fill,
              ),
            )
          ),

          Text("실버팍스 하지근력 취약자", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.grey),),
          SizedBox(
            height: 5,
          ),
          Text("재활 관리 시스템", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.grey),)
        ],
      )

    );
  }
}

