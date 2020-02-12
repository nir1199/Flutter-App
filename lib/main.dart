import 'package:torch/torch.dart';
import 'dart:io';
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
                         },),
                          ListTile(
                           title:Text('practical 3'),
                           onTap: (){
                             Navigator.pop(context);
                             Navigator.push(context,new MaterialPageRoute(builder :(context)=>new Practical3()));
                           }
                         ),
                         ListTile(
                           title:Text('practical 4'),
                           onTap: (){
                             Navigator.pop(context);
                             Navigator.push(context,new MaterialPageRoute(builder :(context)=>new Practical4()));
                           }
                         ),
                          ListTile(
                           title: Text('practical 5'),
                         onTap: (){
                            Navigator.pop(context);
                            Navigator.push(context,new MaterialPageRoute(builder :(context)=>new Practical5())); 
                         },),
                         ListTile(
                           title: Text('practical 6'),
                         onTap: (){
                            Navigator.pop(context);
                            Navigator.push(context,new MaterialPageRoute(builder :(context)=>new Practical6())); 
                         },),
                           ListTile(
                           title: Text('practical 7'),
                         onTap: (){
                            Navigator.pop(context);
                            Navigator.push(context,new MaterialPageRoute(builder :(context)=>new Practical7())); 
                         },),
                          ListTile(
                           title: Text('practical 8'),
                         onTap: (){
                            Navigator.pop(context);
                            Navigator.push(context,new MaterialPageRoute(builder :(context)=>new Practical8())); 
                         },)
                          ],
                        
                         ),

                           
                         
                       
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
class Practical3 extends StatelessWidget {
  @override
  int a=0;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar( title:Text('Practical3'),),
      drawer: new DrawerOnly(),
      body: Center(child: ListView(
        children: <Widget>[
          RaisedButton(
            child:Text('toast') ,
            onPressed: showtoast,
            ),
             RaisedButton(
            child:Text('Stoptoast') ,
            onPressed:(){
              a=1;
            },
            )
        ],
      ),)
    );
  }
  void showtoast(){
    Timer.periodic(Duration(seconds: 10), (timer)  {
       Fluttertoast.showToast(
                        msg: 'hello this is toast message',
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.CENTER,
                        timeInSecForIos: 3,
                        backgroundColor: Colors.blue,
                        textColor: Colors.white,
                        fontSize: 16.0
                      );
                      if(a==1)
                      {
                        timer.cancel();
                      }
});
  }
}
class Practical4 extends StatefulWidget{ 
_Practical4State createState()=>_Practical4State();
}
class _Practical4State extends State<Practical4>{
  
  double var1=0;
  double val=0;
  String total='0';
  void showtoast(){
    val=var1*(9/5)+32;
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
            TextField(decoration: InputDecoration(
              border:OutlineInputBorder() ,
              hintText: 'Enter Temp in celsius', 
            ),
            keyboardType: TextInputType.number,
            onChanged: (val){
              var1=double.parse(val);
            },
            ),
            
            RaisedButton(
              child: Text('Convert'),
              onPressed:showtoast,

            ),
          ],
        ) ,
        )
    );
  }
}

String user = '0';
String password = '0';
bool _isButtonDisabeled = false;
String loginmessage = '';
int attempt = 3;
Color bgcolor = Colors.white;

class Practical5 extends StatefulWidget {
  Practical5({Key key}) : super(key: key);

  @override
  _Practical5State createState() => _Practical5State();
}

class _Practical5State extends State<Practical5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Practical 5"),
      ),
      body: ListView(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              icon: Icon(Icons.email),
              border: OutlineInputBorder(),
              hintText: "Enter user name or email",
            ),
            onChanged: (val){
              user = val;
            },
          ),
          TextField(
            decoration: InputDecoration(
              icon: Icon(Icons.lock),
              border: OutlineInputBorder(),
              hintText: "Enter Password",
              
            ),
            obscureText: true,
            onChanged: (val){
              password = val;
            },
          ),
          RaisedButton(
            child: Text("log in"),
            onPressed: _isButtonDisabeled ? null : succes,
          ),
          Text(loginmessage,
          style: TextStyle(
            backgroundColor: bgcolor,
          ),),
          Text("Attempt remaining : "+attempt.toString()),
          FloatingActionButton(
            tooltip: 'close App',
            child: Icon(Icons.close),
            onPressed: (){
              exit(0);
            },
          )
        ],
      ),
    );
  }
  void succes(){
    setState(() {
      if(user=='17it123'){
        if(password=='061199'){
          bgcolor = Colors.green;
          loginmessage = "login successful";
          attempt=3;
        }
        else{
          bgcolor = Colors.red;
          loginmessage = "Login unsuccessful";
          attempt--;
        }
        
      }
      else{
        bgcolor = Colors.red;
          loginmessage = "Login unsuccessful";
          attempt--;
      }
      if(attempt==0){
          _isButtonDisabeled = true;
      }
    });
  }
}
class Practical6 extends StatelessWidget {
  const Practical6({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("practical 6"),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            RaisedButton(
              child: Text("ON"),
              onPressed: Torch.turnOn,
            ),
            RaisedButton(
              child: Text("OFF"),
              onPressed: Torch.turnOff,
            )
          ],
        ),
      ),
    );
  }
}
class Practical7 extends StatefulWidget {
  Practical7({Key key}) : super(key: key);

  @override
  _Practical7State createState() => _Practical7State();
}

class _Practical7State extends State<Practical7> {

  var _abc = ['red','yellow','blue'];
  var _current = 'red';
  Color bgcolor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Practical 7"),
      ),
      body: Center(
        child: DropdownButton<String>(
          items: _abc.map((String dropDownStringItem){
            return DropdownMenuItem<String>(
              value: dropDownStringItem,
              child: Text(dropDownStringItem),
            );
          }).toList(),
          onChanged: (String val){
            setState(() {
              this._current = val;
              if (_current=='yellow') {
                bgcolor = Colors.yellow;
              }
              else if (_current=='red') {
                bgcolor = Colors.red;
              } else {
                bgcolor = Colors.blue;
              }
            });
          },
          value: _current,
        ),
      ),
      backgroundColor: bgcolor,
    );
  }
}
class Practical8 extends StatefulWidget {

  @override
  _Practical8State createState() => _Practical8State();
}

class _Practical8State extends State<Practical8> {
  List<Widget> containers = [
    Container(
      color: Colors.redAccent,
    ),
    Container(
      color: Colors.blueAccent,
    ),
    Container(
      color: Colors.cyanAccent,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Practical 8"),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                text: 'chats',
              ),
              Tab(
                text: 'status',
              ),
              Tab(
                text: 'calls',
              )
            ],
          ),
        ),
        body: TabBarView(
          children: containers,
        ),
      ),
    );
  }
}
