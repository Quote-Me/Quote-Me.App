import 'package:flutter/material.dart';
import 'package:button3d/button3d.dart';

import 'package:quote_me_app/model/Quotes.dart';
import 'package:quote_me_app/services/api.dart';

class QuoteWidget extends StatefulWidget {
  QuoteWidget({Key key}) : super(key: key);
  
  @override
  _QuoteWidgetState createState() => _QuoteWidgetState();
}

class _QuoteWidgetState extends State<QuoteWidget> {

    Future<Quotes> quotes;
    bool _buttonDisabled = false;

    @override
    void initState() {
      super.initState();
      quotes = fetchQuotes();
    }

    getNewRequest() {
      setState(() {
        quotes = fetchQuotes();
        _buttonDisabled = true;
      });
    }

  @override
  Widget build(BuildContext context) {
      return Container(
        margin: EdgeInsets.all(0),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/build.gif'),
                fit: BoxFit.cover
              ),
            ),
            child: Center(
              child: Container(
                width: 350,
                child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  FutureBuilder<Quotes>(
                      future: quotes,
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          return Text("${snapshot.data.quote}",
                          style: TextStyle(fontFamily: 'CuteFont', color: Colors.white, fontSize: 39,
                          shadows: [
                              Shadow(
                                  blurRadius: 10.0,
                                  color: Colors.purple,
                                  offset: Offset(5.0, 5.0),
                                  )]));
                                  } else if (snapshot.hasError) {
                                    return Text("${snapshot.error}");
                                  }
                                  // By default, show a loading spinner.
                                  return CircularProgressIndicator();
                                },
                              ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0,150,0,0),
                            child: Button3d(
                          height: 50,
                          width: 250,
                        style: Button3dStyle.RED, // BLUE, WHITE
                        onPressed: () {
                          _buttonDisabled ? null : getNewRequest();
                        },
                        child: Text("MOTIVATE ME", style: TextStyle(fontFamily: 'CuteFont', color: Colors.white, fontSize: 26, shadows: [
                        Shadow(
                            blurRadius: 10.0,
                            color: Colors.red,
                            offset: Offset(5.0, 5.0),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}