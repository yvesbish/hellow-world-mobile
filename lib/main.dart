import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          primarySwatch: Colors.blue,
        ),
        home: HomePage());
  }
}

class HomePage extends StatelessWidget {

var nameEditingController = TextEditingController();
var ageEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello World"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
          child: Column(
              children: [
                Text("Welcome IZ*LAND",
              style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.red, fontSize: 32))),
                SizedBox(height:10,),
                Row(

                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Rehearsal very tired"),
                    Text("It's Ssamu time"),
                  ],
                ),
                SizedBox(height: 10,),
                Image.network("https://assets.puzzlefactory.com/puzzle/333/366/original.jpg"),
                SizedBox(height:10,),
                Image.network("https://www.allkpop.com/upload/2021/03/content/102210/web_data/allkpop_1615432400_20210311-izone.jpg"),
                SizedBox(height:10,),
                Image.asset("images/anime.jpg"),

                Text("I hope you like it" , style: GoogleFonts.titanOne(textStyle: TextStyle(color:Colors.purple, fontSize:20),),),
    SizedBox(height:10,),
            Text("Nothing here, Iz*one disbanded lol."),
                SizedBox(height: 10,),
                TextField(
                  controller : nameEditingController,
                  decoration: InputDecoration(hintText: "What's your name?"),),
                SizedBox(height: 10,),
                TextField(
                  controller: ageEditingController,
                  decoration: InputDecoration(hintText: "How old are you?"),),
                TextButton(onPressed: ()
    {
      Fluttertoast.showToast(
          msg: "Hello ` ${nameEditingController.text}, you're ${ageEditingController.text} years old",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0
      );
    }, child: Text("Press Me!"))

            ],
          )),
        ),
      ));
  }
}
