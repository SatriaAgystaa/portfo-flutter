import 'package:flutter/material.dart';
import 'page2.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: home(),
));

class home extends StatelessWidget {
  const home({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image:DecorationImage(
                image: AssetImage("assets/op.jpeg"),
                fit: BoxFit.cover,
              ),
            ),

            child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.shortestSide,
                    padding: EdgeInsets.all(20.0),
                    alignment: Alignment.center,
                    child: Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0),),
                      color: Color.fromARGB(255, 56, 56, 56),
                      child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              CircleAvatar(
                                  radius: 100.0,
                                  backgroundImage: AssetImage("assets/satria.png")
                              ),
                              Text("Satria Agysta",
                                  textAlign:TextAlign.center,
                                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold ,color: Colors.white)
                              ),
                              Text("Wikrama Vocational High School Bogor",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold ,color: Colors.white)
                              ),

                              TextButton(onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => page2()),
                                );
                              }, child:Text('See More', style: TextStyle(color: Colors.white)))
                            ],
                          )
                      ),
                    ),
                  )
                ]
            )

        )
    );
  }
}