import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'dart:async';
void main()=> runApp(MyApp());
class MyApp extends StatelessWidget{
  Widget build(BuildContext context){

  
  return MaterialApp(
    title: "hello",
    home: Scaffold(
                   appBar: AppBar(title: new Text("Lab Practical")),
                   body: new Center(child: new Text('17it073 Practicals'),),
                   drawer: new DrawerOnly(),
                  )
  );
  
 }
}
class Practical1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    
    return new Scaffold(
    appBar: new AppBar(title: Text('Practical 1'),),
    drawer: DrawerOnly(),
    body:Center(child: Text('hello how are you?'),) ,    
    );
  }
}
class DrawerOnly extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   
    
     return new Drawer(
                     child: ListView(
                       padding: EdgeInsets.zero ,
                       children: <Widget>[
                         DrawerHeader(
                           decoration: BoxDecoration(color: Colors.blue),
                           child: Text('Practical'),
                         ),
                         ListTile(
                           title: Text('practical 1'),
                         onTap: (){
                            Navigator.pop(context);
                            Navigator.push(context,new MaterialPageRoute(builder: (context)=>new Practical1()));
                         },),
                         ListTile(title: Text('practical 2'),
                         onTap: (){
                           Navigator.pop(context);
                           Navigator.push(context,new MaterialPageRoute(builder: (context)=>new Practical2()));
                         },), ],),

                           
                         
                       
                       );
                   

    
  }
}
class Practical2 extends StatefulWidget{ 
_Practical2State createState()=>_Practical2State();
}
class _Practical2State extends State<Practical2>{
  int var1=0;
  int var2=0;
  int val=0;
  String total='0';
  void showtoast(){
    val=var1+var2;
    total=val.toString();
    Fluttertoast.showToast(
          msg: total,
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
                             timeInSecForIos: 3,
                        backgroundColor: Colors.blue,
                        textColor: Colors.white,
                        fontSize: 16.0
                      );
  }

   @override
  Widget build(BuildContext context) {
    return new Scaffold(
      
      appBar: new AppBar(title: Text('Practical 2'),),
      drawer: new DrawerOnly(),
      body:Center(
        child:ListView(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
              border:OutlineInputBorder() ,
              hintText: 'Enter First No'
            ),
            
            onChanged :(val){
              var1=int.parse(val);
            },
            ),
            TextField(
              decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter Second No'
            ),
            
            onChanged:(val){
            var2=int.parse(val);
            },
            ),
            RaisedButton(
              child:Text("sum"),
              onPressed:showtoast,


            ),
            
          ],
        ) ,
        )
    );
  }

}