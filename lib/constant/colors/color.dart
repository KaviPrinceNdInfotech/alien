import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const Color themeColor = Color(0xff2C3F99);

String inr = '₹';

const Color textField = Color(0xFFebebeb);

const Color backgroundc = Color(0xffF5F5F5);

const Color socialbutton = Color(0xFF1778F2);

const Color chat = Color(0xFF34c578);

//const Color buttonColor= Color.fromRGBO(20, 146, 230, 1);

const Color textColor = Color.fromRGBO(1, 1, 1, 1);

RadialGradient gradient1 = RadialGradient(
  colors: [
    Color(0xFF200377),
    Color(0xFF0a0810),
  ],
  //begin: Alignment.center,
);

LinearGradient gradient2 = LinearGradient(
  colors: [Color.fromRGBO(160, 160, 160, 1), Color.fromRGBO(92, 92, 92, 1)],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
);

LinearGradient gradient3 = LinearGradient(
  colors: [Color.fromRGBO(46, 198, 29, 1), Color.fromRGBO(49, 131, 41, 1)],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
);

LinearGradient gradient4 = LinearGradient(
  begin: Alignment.topRight,
  end: Alignment.bottomLeft,
  stops: [
    0.1,
    0.5,
    0.9,
  ],
  colors: [
    Color(0xfff47c2e),

    //Colors.white,
    Color(0xfffffff).withOpacity(0.1),
    Color(0xff09aa4b),
  ],
);

RadialGradient gradient6 = RadialGradient(colors: []);

LinearGradient gradient5 = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  stops: [
    -0.33,
    0.9,
  ],
  colors: [
    Color(0xffee3278).withOpacity(0.13),
    Color(0xff45c1c5),

    // Color(0xff6dcde4),
    //
    // Color(0xffee3278),
    // Color(0xff45c1c5).withOpacity(0.13),

    // Color.fromRGBO(152,226, 189, 1),
    // Color.fromRGBO(52, 215, 134, 1),
    // Color.fromRGBO(15, 197, 148, 1),
  ],
);

LinearGradient gradient7 = LinearGradient(
    colors: [Colors.cyanAccent, Colors.amberAccent],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    tileMode: TileMode.clamp);
String appName = 'ONE_CODE';
//String appLogo='lib/assets/logo.png';

String drawerSelected = '';
