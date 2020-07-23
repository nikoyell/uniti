import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterexampleapp/style/chart.dart';

void main() => runApp(MaterialApp(
      theme: _themeData,
      home: Home(),
    ));

Map<int, Color> color = {
  50: Color.fromRGBO(4, 131, 184, .1),
  100: Color.fromRGBO(4, 131, 184, .2),
  200: Color.fromRGBO(4, 131, 184, .3),
  300: Color.fromRGBO(4, 131, 184, .4),
  400: Color.fromRGBO(4, 131, 184, .5),
  500: Color.fromRGBO(4, 131, 184, .6),
  600: Color.fromRGBO(4, 131, 184, .7),
  700: Color.fromRGBO(4, 131, 184, .8),
  800: Color.fromRGBO(4, 131, 184, .9),
  900: Color.fromRGBO(4, 131, 184, 1),
};

final ThemeData _themeData = new ThemeData(
    primarySwatch: MaterialColor(0xFF0066CC, color),
    accentColor: MaterialColor(0xFF0073E6, color));

class Home extends StatelessWidget {
  final appTitle = 'Uniti';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appTitle,
            style: TextStyle(
                fontSize: 20.0,
                fontFamily: 'TitilliumWeb',
                fontWeight: FontWeight.w700)),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text(appTitle,
                  style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                      fontFamily: 'TitilliumWeb',
                      fontWeight: FontWeight.w700)),
              decoration:
                  BoxDecoration(color: MaterialColor(0xFF0066CC, color)),
            ),
            ListTile(
              title: Text('Supporto'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Esci'),
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
      body: Scrollbar(
        child: ListView(padding: const EdgeInsets.all(8), children: <Widget>[
          Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Expanded(
                    child: Center(
                      child: Text(
                        'Positivi',
                        style: TextStyle(
                            fontSize: 14.0,
                            fontFamily: 'TitilliumWeb',
                            fontWeight: FontWeight.w700,
                            color: MaterialColor(0xFFFF9700, color)),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        'Guariti',
                        style: TextStyle(
                            fontSize: 14.0,
                            fontFamily: 'TitilliumWeb',
                            fontWeight: FontWeight.w700,
                            color: MaterialColor(0xFF00CF86, color)),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        'Deceduti',
                        style: TextStyle(
                            fontSize: 14.0,
                            fontFamily: 'TitilliumWeb',
                            fontWeight: FontWeight.w700,
                            color: MaterialColor(0xFFF83E5A, color)),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Expanded(
                    child: Card(
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              '105.792',
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontFamily: 'TitilliumWeb',
                                  fontWeight: FontWeight.w700),
                            ),
                            Text(
                              '+4.053',
                              style: TextStyle(
                                  fontSize: 12.0,
                                  fontFamily: 'TitilliumWeb',
                                  fontWeight: FontWeight.w200),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Card(
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              '15.729',
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontFamily: 'TitilliumWeb',
                                  fontWeight: FontWeight.w700),
                            ),
                            Text(
                              '+1.109',
                              style: TextStyle(
                                  fontSize: 12.0,
                                  fontFamily: 'TitilliumWeb',
                                  fontWeight: FontWeight.w200),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Card(
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              '12.428',
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontFamily: 'TitilliumWeb',
                                  fontWeight: FontWeight.w700),
                            ),
                            Text(
                              '+837',
                              style: TextStyle(
                                  fontSize: 12.0,
                                  fontFamily: 'TitilliumWeb',
                                  fontWeight: FontWeight.w200),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                child: Card(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: new SvgPicture.asset(chartSvg),
                    ),
                  ),
                ),
              ),
              FlatButton(
                onPressed: () {},
                child: Text(
                  'MOSTRA DETTAGLI',
                  style: TextStyle(
                      color: MaterialColor(0xFF17324D, color),
                      fontSize: 20,
                      fontFamily: 'TitilliumWeb',
                      fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0,16,0,16),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16,0,16,0),
                        child: Text('MODULI',
                            style: TextStyle(
                                color: MaterialColor(0xFF17324D, color),
                                fontSize: 14,
                                fontFamily: 'TitilliumWeb',
                                fontWeight: FontWeight.w700)),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  ListTile(
                    title: Text('Autovalutazione',
                        style: TextStyle(
                            color: MaterialColor(0xFF17324D, color),
                            fontSize: 16,
                            fontFamily: 'TitilliumWeb',
                            fontWeight: FontWeight.w600)),
                    trailing: Icon(Icons.chevron_right),
                  ),
                  const Divider(
                    color: Colors.black12,
                    height: 0,
                    thickness: 0.5,
                    indent: 8,
                    endIndent: 8,
                  ),
                  ListTile(
                    title: Text('Autocertificazione',
                        style: TextStyle(
                            color: MaterialColor(0xFF17324D, color),
                            fontSize: 16,
                            fontFamily: 'TitilliumWeb',
                            fontWeight: FontWeight.w600)),
                    trailing: Icon(Icons.chevron_right),
                  )
                ],
              ),
            ),
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0,16,0,8),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16,0,0,0),
                        child: Text('SEGNALA ASSEMBRAMENTI',
                            style: TextStyle(
                                color: MaterialColor(0xFF17324D, color),
                                fontSize: 14,
                                fontFamily: 'TitilliumWeb',
                                fontWeight: FontWeight.w700)),
                      ),
                    ],
                  ),
                  SizedBox(height: 24),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text('C’è un raggruppamento di persone vicino a te?  Segnala in forma completamente anonima.',
                          style: TextStyle(
                              color: MaterialColor(0xFF17324D, color),
                              fontSize: 16,
                              fontFamily: 'TitilliumWeb',
                              fontWeight: FontWeight.w400)),
                  ),
                  SizedBox(height: 16),
                  FlatButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: SvgPicture.asset(segnalaSvg),
                        ),
                        Text(
                          'SEGNALA',
                          style: TextStyle(
                              color: MaterialColor(0xFF17324D, color),
                              fontSize: 16,
                              fontFamily: 'TitilliumWeb',
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
