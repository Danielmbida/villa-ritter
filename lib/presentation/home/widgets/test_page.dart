import 'package:animate_icons/animate_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(const TestPage());

class TestPage extends StatefulWidget {
  const TestPage({Key? key}) : super(key: key);
  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> with TickerProviderStateMixin {
  //  AnimationController? _controller;
  // late final Animation<double> _animation = CurvedAnimation(
  //   parent: _controller,
  //   curve: Curves.easeIn,
  // );
  var theme = ValueNotifier(ThemeMode.dark);

  @override
  void initState() {
    // _controller =
    //     AnimationController(duration: Duration(milliseconds: 500), vsync: this);
    // _controller!.forward();
    // _controller!.addListener(() => setState(() {}));
    super.initState();
  }

  var isDialOpen = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Flutter Speed Dial Example';
    return WillPopScope(
      onWillPop: () async {
        if (isDialOpen.value) {
          isDialOpen.value = false;
          return false;
        }
        return true;
      },
      child: Scaffold(
        floatingActionButton: SpeedDial(
          childrenButtonSize: 60,
          spaceBetweenChildren: 15,
          direction: SpeedDialDirection.left,
          animatedIcon: AnimatedIcons.menu_close,
          animatedIconTheme: const IconThemeData(size: 35.0),
          renderOverlay: false, //change background of page
          curve: Curves.bounceIn,
          tooltip: 'Réseau',
          heroTag: 'speed-dial-hero-tag',
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          children: [
            SpeedDialChild(
              // shape: CircleBorder(side: ).,
              child: const Icon(FontAwesomeIcons.phoneAlt),
              // backgroundColor: Colors.white,
              onTap: () => print('FIRST CHILD'),
              onLongPress: () => print('FIRST CHILD LONG PRESS'),
            ),
            SpeedDialChild(
              child: Icon(FontAwesomeIcons.snapchatGhost),
              // backgroundColor: Colors.blue,
              onTap: () => print('SECOND CHILD'),
              onLongPress: () => print('SECOND CHILD LONG PRESS'),
            ),
            SpeedDialChild(
              child: Image.asset("assets/images/loge_insta.PNG"),
              // Icon(FontAwesomeIcons.instagram,color: Colors.red,),
              // backgroundColor: Colors.green,
              onTap: () => print('THIRD CHILD'),
              onLongPress: () => print('THIRD CHILD LONG PRESS'),
            ),
          ],
        ),
      ),
    );
  }
}


