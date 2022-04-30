import 'package:flutter/material.dart';
import 'package:flutter_ringtone_player/flutter_ringtone_player.dart';

import 'Pages/call.dart';
// import 'package:assets_audio_player/assets_audio_player.dart';

class MyCallingRingTOne extends StatefulWidget {
  final channelController,role;

  // const CallPage({Key? key, this.channelName, this.role}) : super(key: key);
  const MyCallingRingTOne({Key? key,required this.channelController, required this.role,}) : super(key: key);

  @override
  State<MyCallingRingTOne> createState() => _MyCallingRingTOneState();
}

class _MyCallingRingTOneState extends State<MyCallingRingTOne> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon : Icon(Icons.call,color: Colors.green,size: 50,),
                onPressed: () {
                  FlutterRingtonePlayer.playRingtone();
                  // Navigator.pop(context);
                  Navigator.push(context,
                        MaterialPageRoute(
                          builder: (context) => CallPage(
                            channelName: widget.channelController,
                            role: widget.role,
                          ),
                        ),
                      );
                },
              ),
              // IconButton(
              //   icon: Icon(Icons.notification_important,color: Colors.green,size: 50,),
              //   onPressed: () {
              //     FlutterRingtonePlayer.play(
              //       android: AndroidSounds.notification,
              //       ios: IosSounds.glass,
              //       looping: true,
              //       volume: 1.0,
              //     );
              //   },
              // ),
              IconButton(
                icon: Icon(Icons.cancel,color: Colors.red,size: 50,),
                onPressed: () {
                  FlutterRingtonePlayer.stop();
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
    );
  }
}


//
// // import 'package:flutter/material.dart';
// // import 'package:ringtone_player/ringtone_player.dart';
// //
// // class MyApp extends StatefulWidget {
// //   @override
// //   _MyAppState createState() => _MyAppState();
// // }
// //
// // class _MyAppState extends State<MyApp> {
// //
// //   @override
// //   Widget build(BuildContext context) {
// //
// //     return MaterialApp(
// //       home: Scaffold(
// //         appBar: AppBar(
// //           backgroundColor: Colors.black,
// //           title: const Text('Ringtone player'),
// //         ),
// //         body: Center(
// //           child: Row(
// //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //             children: <Widget>[
// //               IconButton(onPressed: (){
// //                 RingtonePlayer.ringtone();
// //                 setState(() {});
// //               }, icon: Icon(Icons.call,color: Colors.green,size: 50,)),
// //
// //               IconButton(onPressed: (){
// //                 RingtonePlayer.stop();
// //                 setState(() {});
// //               }, icon: Icon(Icons.call,color: Colors.red,size: 50,)),
// //
// //               Button(
// //                 child: const Text('play'),
// //                 onPressed: () {
// //                   RingtonePlayer.play(
// //                     android: Android.ringtone,
// //                     ios: Ios.electronic,
// //                     loop: true,
// //                     volume: 1.0,
// //                   );
// //                   setState(() {});
// //                 },
// //               ),
// //
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }
// //
// // class Button extends StatefulWidget {
// //   Button({Key? key, this.onPressed, this.child}) : super(key: key);
// //
// //   final VoidCallback? onPressed;
// //   final Widget? child;
// //
// //   @override
// //   _ButtonState createState() => _ButtonState();
// // }
// //
// // class _ButtonState extends State<Button> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return RaisedButton(
// //       color: Colors.white,
// //       shape: RoundedRectangleBorder(
// //         side: BorderSide(),
// //         borderRadius: BorderRadius.circular(20),
// //       ),
// //       onPressed: widget.onPressed,
// //       child: widget.child,
// //     );
// //   }
// // }