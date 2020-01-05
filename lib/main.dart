import 'package:flutter/material.dart';
import 'package:button3d/button3d.dart';

void main() => runApp(MaterialApp(
  title: 'Quote Me App',
  theme: ThemeData(fontFamily: 'Raleway'),
  home: QuoteMe(),
));


class QuoteMe extends StatefulWidget {
  @override
  _QuoteMeState createState() => _QuoteMeState();
}


class _QuoteMeState extends State<QuoteMe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        title: Text('QUOTE ME', style: TextStyle(fontFamily: 'Oxygen')),
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
          textTheme: Theme.of(context).textTheme.apply(
          bodyColor: Colors.white,
          fontSizeDelta: 5,
        ),
      ),
      body: quoteMeWidget(),
      backgroundColor: Colors.transparent,
    );
  }
}

Widget quoteMeWidget() {
 return Container(
   margin: EdgeInsets.all(0),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/build.gif'),
          fit: BoxFit.cover
        ) ,
      ),
        child: Container(
        margin: EdgeInsets.fromLTRB(0, 550, 0, 0),
          child: Center(
          child:Button3d(
            height: 50,
            width: 250,
          style: Button3dStyle.RED, // Button3dStyle.RED, Button3dStyle.WHITE
          onPressed: () {},
          child: Text("MOTIVATE ME", style: TextStyle(fontFamily: 'OpenSansBold', color: Colors.white),),
        ),
          ),
        ),
    );
}
