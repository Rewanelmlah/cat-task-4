import 'package:flutter/material.dart';
class screen2 extends StatelessWidget {
  const screen2 ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffCD756B),
        centerTitle: true,
        title: Text('GridView',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
      ),
      body: Container(
        margin: EdgeInsets.all(10),

        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),

            itemCount: 10,
            itemBuilder: (context, i)
            {
              return Container(
                margin: EdgeInsets.all(8),
                height:200 ,

                width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    image: DecorationImage(
                        image: AssetImage('images/photo_2024-04-27_19-26-49.jpg'),
                        fit: BoxFit.fill)),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text('Shop',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Color(0xffCD756B)),)),) ;
            }),),
    );
  }
}