// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:agora_uikit/agora_uikit.dart';

import 'package:permission_handler/permission_handler.dart';

import 'package:agora_rtc_engine/rtc_engine.dart';
import 'package:agora_rtc_engine/rtc_local_view.dart' as RtcLocalView;
import 'package:agora_rtc_engine/rtc_remote_view.dart' as RtcRemoteView;

class Agora extends StatefulWidget {
  Agora({Key? key, this.height, this.width}) : super(key: key);

  double? width, height;

  @override
  _AgoraState createState() => _AgoraState();
}

class _AgoraState extends State<Agora> {
  final AgoraClient client = AgoraClient(
    agoraConnectionData: AgoraConnectionData(
      appId:
          "006c9bf8d29b9bc407f9e3e039af58a6a5dIACckZqI1x550RDeBulZV+HMNx3GBH55pgkLKNREpIW4IdzDPrsAAAAAEAA/6Ep2a855YgEAAQBrznli",
      channelName: "firstchannel",
    ),
    enabledPermission: [
      Permission.camera,
      Permission.microphone,
    ],
  );

  void initAgora() async {
    await client.initialize();
  }

  @override
  void initState() {
    super.initState();
    initAgora();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Agora UIKit'),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Stack(
            children: [
              AgoraVideoViewer(
                client: client,
              ),
              AgoraVideoButtons(
                client: client,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
