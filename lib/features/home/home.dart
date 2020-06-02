import 'package:flutter/material.dart';
import '../../i18n/app_localization.dart';
import '../../i18n/dictionary.dart';

class HomePage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Localization"),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Text(AppLocalizations.of(context).translate(Dictionary.EXAMPLE))
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        padding: EdgeInsets.all(8.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: RaisedButton(
                child: Text("Indonesia"),
                onPressed: this.handleID,
              ),
            ),
            SizedBox(width: 8.0),
            Expanded(
              child: RaisedButton(
                child: Text("English"),
                onPressed: this.handleEN,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void handleID() {
    setState(() {
      AppLocalizations.load(Locale("id", "ID"));
    });
  }

  void handleEN() {
    setState(() {
      AppLocalizations.load(Locale("en", "EN"));
    });
  }
}