import 'package:torch/torch.dart';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'dart:async';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:cloud_firestore/cloud_firestore.dart'
  import 'package:speech_recognition/speech_recognition.dart';
import 'package:flutter/services.dart';
import 'dart:typed_data';
import 'dart:ui' hide Image;
import 'package:flutter/services.dart';
import 'package:image/image.dart' as im;
import 'package:tflite/tflite.dart';
import 'package:demo/constants.dart';
import 'package:demo/drawing_painter.dart';
import 'package:demo/brain.dart';


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
                         },), 
                          ListTile(
                           title: Text('practical 9'),
                         onTap: (){
                            Navigator.pop(context);
                            Navigator.push(context,new MaterialPageRoute(builder :(context)=>new Practical9())); 
                         },),
                          ListTile(
                           title: Text('practical 10'),
                         onTap: (){
                            Navigator.pop(context);
                            Navigator.push(context,new MaterialPageRoute(builder :(context)=>new Practical10())); 
                         },),
                          ListTile(
                           title: Text('practical 11'),
                         onTap: (){
                            Navigator.pop(context);
                            Navigator.push(context,new MaterialPageRoute(builder :(context)=>new Practical11())); 
                         },),
                          ListTile(
                           title: Text('practical 12'),
                         onTap: (){
                            Navigator.pop(context);
                            Navigator.push(context,new MaterialPageRoute(builder :(context)=>new Practical12())); 
                         },),
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

class Practical9 extends StatefulWidget {
  Practical9({Key key}) : super(key: key);

  @override
  _Practical9State createState() => _Practical9State();
}

class _Practical9State extends State<Practical9> {
  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      appBar: AppBar(
        title: Text("Browser"),
      ),
      url: "https://www.google.com/"
      
    );
  }
}
FirebaseUser data; 



class Practical10 extends StatefulWidget {



  @override

  _Practical10State createState() => _Practical10State();

}



class _Practical10State extends State<Practical10> {

  String myText;

  StreamSubscription<DocumentSnapshot> subscription;

  //final FirebaseAuth _auth = FirebaseAuth.instance;

  final DocumentReference documentReference= Firestore.instance.document("myData/dummy");



  final GoogleSignIn googleSignIn = new GoogleSignIn();



  



  void _add(){

    Map<String,String> data = <String,String>{

      "name" : "Nirpatel",

      "desc" : "student"

    };

    documentReference.setData(data).whenComplete((){

      print("Document added");

    }).catchError((e)=>print(e));



  }



  void _delete(){



    documentReference.delete().whenComplete((){

      print("deleted sucessfully");

      setState(() {

        myText = null;

      });

    }).catchError((e)=>print(e));



  }



  void _update(){

     Map<String,String> data = <String,String>{

      "name" : "Nirpatel updated",

      "desc" : "student updated"

    };

    if (myText!=null) {

      documentReference.updateData(data).whenComplete((){

      print("Document updated");

    }).catchError((e)=>print(e));

    }

    



  }



  void _fetch(){

    documentReference.get().then((datasnapshot){

      if(datasnapshot.exists){

        setState(() {

           myText = datasnapshot.data['desc'];

        });

       

      }

    });

  }



    @override

  void initState() { 

    super.initState();

    subscription = documentReference.snapshots().listen((datasnapshot){

      if(datasnapshot.exists){

        setState(() {

           myText = datasnapshot.data['desc'];

        });

       

      }

    });

  }



  @override

  void dispose() {

    super.dispose();

    subscription?.cancel();

  }



  @override

  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(

        title: Text("Practical 10"),

      ),

      body: new Padding(

        padding: const EdgeInsets.all(20.0),

        child: new Column(

          mainAxisAlignment: MainAxisAlignment.center,

          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: <Widget>[

            

            new RaisedButton(

              onPressed:_add,

              child: Text("add"),

              color: Colors.cyanAccent,

            ),

            new Padding(padding: const EdgeInsets.all(10.0)),

            new RaisedButton(

              onPressed:_update,

              child: Text("update"),

              color: Colors.lightBlue,

            ),

            new Padding(padding: const EdgeInsets.all(10.0)),

            new RaisedButton(

              onPressed:_delete,

              child: Text("delete"),

              color: Colors.orange,

            ),

            new Padding(padding: const EdgeInsets.all(10.0)),

            new RaisedButton(

              onPressed:_fetch,

              child: Text("fetch"),

              color: Colors.lime,

            ),

            new Padding(padding: const EdgeInsets.all(10.0)),

            myText == null?new Container():new Text(myText,style: TextStyle(

              fontSize: 20.0,

              color: Colors.green,

            ),)

],

        ),

      ),

    );

  }

}



class Openpage extends StatefulWidget {

  @override

  _OpenpageState createState() => _OpenpageState();

}



class _OpenpageState extends State<Openpage> {

  @override

  Widget build(BuildContext context) {

    return Scaffold(

      body: Center(

        child: Text("User name: ${data.displayName}"),

      ),

    );

  }

}

FirebaseUser data; 
class Practical11 extends StatefulWidget {

  @override

  _Practical11State createState() => _Practical11State();

}



class _Practical11State extends State<Practical11> {



   final GoogleSignIn googleSignIn = new GoogleSignIn();

   final FirebaseAuth _auth = FirebaseAuth.instance;



  Future<FirebaseUser> _signIn() async{

    GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();

    GoogleSignInAuthentication gSA = await googleSignInAccount.authentication;



    final AuthCredential credential = GoogleAuthProvider.getCredential(idToken: gSA.idToken, accessToken: gSA.accessToken);



    final AuthResult authResult = await _auth.signInWithCredential(credential);

     FirebaseUser user = authResult.user;



    data = user;

    

    print("User name: ${user.displayName}");

    Navigator.push(context, MaterialPageRoute(builder: (context)=> new Openpage()));

    return user;

  }



  void _signOut(){

    googleSignIn.signOut();

    print("sign out");

  }

  @override

  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(

        title: Text("Practical 11"),

      ),

      body: new Padding(

        padding: const EdgeInsets.all(20.0),

        child: new Column(

          mainAxisAlignment: MainAxisAlignment.center,

          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: <Widget>[

            new RaisedButton(

              onPressed: ()=> _signIn(),

              child: Text("Sign in"),

              color: Colors.green,

            ),

           

            new Padding(padding: const EdgeInsets.all(10.0)),

            new RaisedButton(

              onPressed:_signOut,

              child: Text("Sign out"),

              color: Colors.red,

            ),

            new Padding(padding: const EdgeInsets.all(10.0)),

          ],

        ),

      ),

    );

  }

}



class Openpage extends StatefulWidget {

  @override

  _OpenpageState createState() => _OpenpageState();

}



class _OpenpageState extends State<Openpage> {

  @override

  Widget build(BuildContext context) {

    return Scaffold(

      body: Center(

        child: Text("User name: ${data.displayName}"),

      ),

    );

  }

}
const languages = const [
  const Language('English', 'en_US'),
];

class Language {
  final String name;
  final String code;

  const Language(this.name, this.code);
}


class Practical12 extends StatefulWidget {
  @override
  _Practical12State createState() => _Practical12State();
}

class _Practical12State extends State<Practical12> {

  SpeechRecognition _speech;

  bool _speechRecognitionAvailable = false;
  bool _isListening = false;

  String transcription = '';

  //String _currentLocale = 'en_US';
  Language selectedLang = languages.first;

  @override
  initState() {
    super.initState();
    activateSpeechRecognizer();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  void activateSpeechRecognizer() {
    print('_MyAppState.activateSpeechRecognizer... ');
    _speech = new SpeechRecognition();
    _speech.setAvailabilityHandler(onSpeechAvailability);
    _speech.setCurrentLocaleHandler(onCurrentLocale);
    _speech.setRecognitionStartedHandler(onRecognitionStarted);
    _speech.setRecognitionResultHandler(onRecognitionResult);
    _speech.setRecognitionCompleteHandler(onRecognitionComplete);
    _speech
        .activate()
        .then((res) => setState(() => _speechRecognitionAvailable = res));
  }
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Practical 12'),
        
        ),
        body: new Padding(
            padding: new EdgeInsets.all(8.0),
            child: new Center(
              child: new Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  new Expanded(
                      child: Container(
                    width: 500,
                    height: 500,
                    color: Colors.pink,
                    child: Center(
                        child: new Text(transcription,
                            style: TextStyle(
                              fontSize: 40.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center)),
                  )),
                  _buildButton(
                    onPressed: _speechRecognitionAvailable && !_isListening
                        ? () => start()
                        : null,
                    label:
                        _isListening ? 'Listening...' : 'Tap on Mic to Speak',
                  ),
                ],
              ),
            )),
      ),
    );
  }

  Widget _buildButton({String label, VoidCallback onPressed}) => new Padding(
      padding: new EdgeInsets.only(top: 8, bottom: 2, left: 0, right: 0),
      child: new RaisedButton(
        color: Colors.white,
        onPressed: onPressed,
        padding: EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.mic_none,
              size: 60.0,
            ),
            Text(
              label,
              style: const TextStyle(color: Colors.pink, fontSize: 25.0),
            ),
          ],
        ),
      ));

  void start() => _speech
      .listen(locale: selectedLang.code)
      .then((result) => print('_MyAppState.start => result $result'));

  void onSpeechAvailability(bool result) =>
      setState(() => _speechRecognitionAvailable = result);

  void onCurrentLocale(String locale) {
    print('_MyAppState.onCurrentLocale... $locale');
    setState(
        () => selectedLang = languages.firstWhere((l) => l.code == locale));
  }

  void onRecognitionStarted() => setState(() => _isListening = true);

  void onRecognitionResult(String text) => setState(() => transcription = text);

  void onRecognitionComplete() => setState(() => _isListening = false);

}
class AppBrain {

  Future loadModel() async {
    Tflite.close();
    try {
      await Tflite.loadModel(
        model: "assets/converted_mnist_model.tflite",
        labels: "assets/labels.txt",
      );
    } on PlatformException {
      print('Failed to load model.');
    }
  }

  Future<List> processCanvasPoints(List<Offset> points) async {

    // We create an empty canvas 280x280 pixels
    final canvasSizeWithPadding = kCanvasSize + (2 * kCanvasInnerOffset);
    final canvasOffset = Offset(kCanvasInnerOffset, kCanvasInnerOffset);
    final recorder = PictureRecorder();
    final canvas = Canvas(
      recorder,
      Rect.fromPoints(
        Offset(0.0, 0.0),
        Offset(canvasSizeWithPadding, canvasSizeWithPadding),
      ),
    );

    // Our image is expected to have a black background and a white drawing trace,
    // quite the opposite of the visual representation of our canvas on the screen
    canvas.drawRect(
        Rect.fromLTWH(0, 0, canvasSizeWithPadding, canvasSizeWithPadding),
        kBackgroundPaint
    );

    // Now we draw our list of points on white paint
    for (int i = 0; i < points.length - 1; i++) {
      if (points[i] != null && points[i + 1] != null) {
        canvas.drawLine(
            points[i] + canvasOffset, points[i + 1] + canvasOffset, kWhitePaint);
      }
    }

    // At this point our virtual canvas is ready and we can export an image from it
    final picture = recorder.endRecording();
    final img = await picture.toImage(
      canvasSizeWithPadding.toInt(),
      canvasSizeWithPadding.toInt(),
    );
    final imgBytes = await img.toByteData(format: ImageByteFormat.png);
    Uint8List pngUint8List = imgBytes.buffer.asUint8List();

    // There's quite a funny game at this point. The image class we are using doesn't allow resizing.
    // In order to achieve that, we need to convert it to another image class that we are importing
    // as 'im' from package:image/image.dart
    im.Image imImage = im.decodeImage(pngUint8List);
    im.Image resizedImage = im.copyResize(
      imImage,
      width: kModelInputSize,
      height: kModelInputSize,
    );

    // Finally, we can return our the prediction we will perform over that
    // resized image
    return predictImage(resizedImage);
  }

  Future<List> predictImage(im.Image image) async {
    return await Tflite.runModelOnBinary(
      binary: imageToByteListFloat32(image, kModelInputSize),
    );
  }

  Uint8List imageToByteListFloat32(im.Image image, int inputSize) {
    var convertedBytes = Float32List(inputSize * inputSize);
    var buffer = Float32List.view(convertedBytes.buffer);
    int pixelIndex = 0;
    for (var i = 0; i < inputSize; i++) {
      for (var j = 0; j < inputSize; j++) {
        var pixel = image.getPixel(j, i);
        buffer[pixelIndex++] =
            (im.getRed(pixel) + im.getGreen(pixel) + im.getBlue(pixel)) /
                3 /
                255.0;
      }
    }
    return convertedBytes.buffer.asUint8List();
  }

  double convertPixel(int color) {
    return (255 -
        (((color >> 16) & 0xFF) * 0.299 +
            ((color >> 8) & 0xFF) * 0.587 +
            (color & 0xFF) * 0.114)) /
        255.0;
  }

}
const int kModelInputSize = 28;
const double kCanvasInnerOffset = 40.0;
const double kCanvasSize = 200.0;
const double kStrokeWidth = 12.0;
const Color kBlackBrushColor = Colors.black;
const bool kIsAntiAlias = true;
const Color kBrushBlack = Colors.black;
const Color kBrushWhite = Colors.white;

final Paint kDrawingPaint = Paint()
  ..strokeCap = StrokeCap.square
  ..isAntiAlias = kIsAntiAlias
  ..color = kBrushBlack
  ..strokeWidth = kStrokeWidth;

final Paint kWhitePaint = Paint()
  ..strokeCap = StrokeCap.square
  ..isAntiAlias = kIsAntiAlias
  ..color = kBrushWhite
  ..strokeWidth = kStrokeWidth;

final kBackgroundPaint = Paint()..color = kBrushBlack;
class DrawingPainter extends CustomPainter {
  DrawingPainter({this.offsetPoints});
  List<Offset> offsetPoints;

  @override
  void paint(Canvas canvas, Size size) {
    for (int i = 0; i < offsetPoints.length - 1; i++) {
      if (offsetPoints[i] != null && offsetPoints[i + 1] != null) {
        canvas.drawLine(offsetPoints[i], offsetPoints[i + 1], kDrawingPaint);
      }
    }
  }

  @override
  bool shouldRepaint(DrawingPainter oldDelegate) => true;
}
class RecognizerScreen extends StatefulWidget {
  RecognizerScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _RecognizerScreen createState() => _RecognizerScreen();
}

class _RecognizerScreen extends State<RecognizerScreen> {
  List<Offset> points = List();
  AppBrain brain = AppBrain();

  void _cleanDrawing() {
    setState(() {
      points = List();
    });
  }

  @override
  void initState() {
    super.initState();
    brain.loadModel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.all(16),
                color: Colors.red,
                alignment: Alignment.center,
                child: Text('Header'),
              ),
            ),
            Container(
              decoration: new BoxDecoration(
                border: new Border.all(
                  width: 3.0,
                  color: Colors.blue,
                ),
              ),
              child: Builder(
                builder: (BuildContext context) {
                  return GestureDetector(
                    onPanUpdate: (details) {
                      setState(() {
                        RenderBox renderBox = context.findRenderObject();
                        points.add(
                            renderBox.globalToLocal(details.globalPosition));
                      });
                    },
                    onPanStart: (details) {
                      setState(() {
                        RenderBox renderBox = context.findRenderObject();
                        points.add(
                            renderBox.globalToLocal(details.globalPosition));
                      });
                    },
                    onPanEnd: (details) async {
                      points.add(null);
                      List predictions = await brain.processCanvasPoints(points);
                      print(predictions);
                      setState(() {});
                    },
                    child: ClipRect(
                      child: CustomPaint(
                        size: Size(kCanvasSize, kCanvasSize),
                        painter: DrawingPainter(
                          offsetPoints: points,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.all(16),
                color: Colors.blue,
                alignment: Alignment.center,
                child: Text('Footer'),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _cleanDrawing();
        },
        tooltip: 'Clean',
        child: Icon(Icons.delete),
      ),
    );
  }
}


