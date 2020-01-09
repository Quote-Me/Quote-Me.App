import 'package:flutter/material.dart';
import 'package:quote_me_app/components/quote_me_widget.dart';

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
          fontSizeDelta: 0,
        ),
      ),
      body: QuoteWidget(),
      backgroundColor: Colors.transparent,
    );
  }
}