import 'package:flutter/material.dart';

class screen1 extends StatelessWidget {
  const screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffCD756B),
        centerTitle: true,
        title: Text('ListView',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
      ),
      body: Container(
        margin: EdgeInsets.all(10),

        child: ListView.builder(

            itemCount: 10,
            itemBuilder: (context, i)
            {
              return Container(
                margin: EdgeInsets.all(8),
                height:200 ,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    image: DecorationImage(
                        image: AssetImage('images/photo_2024-04-27_19-26-49.jpg'),
                        fit: BoxFit.fill)),
                child: Align(
                    alignment: Alignment.bottomRight,
                    child: Text('Shop',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Color(0xffCD756B)),)),) ;
            }),),
    );
  }
}