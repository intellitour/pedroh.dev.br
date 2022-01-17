import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_triple/flutter_triple.dart';
import 'dart:html';
import 'home_store.dart';

class HomePage extends StatefulWidget {
  final String title;

  const HomePage({Key? key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeStore> {
  ThemeData get _theme => Theme.of(context);

  MediaQueryData get _mediaQuery => MediaQuery.of(context);

  ColorScheme get _colorScheme => _theme.colorScheme;

  TextStyle get _titleStyle =>
      TextStyle(color: _colorScheme.secondary, fontWeight: FontWeight.bold);

  double get _titleScaleFactor => _mediaQuery.size.width <= 550 ? 1 : 1.3;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: _mediaQuery.size.width <= 720 ? const BoxDecoration(color: Colors.black) : const BoxDecoration(
        color: Colors.black,
        image: DecorationImage(
          image: AssetImage('assets/images/background.jpg'),
          fit: BoxFit.scaleDown,
          alignment: Alignment.centerLeft,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text('Pedro Henrique',
                style: _titleStyle,
                maxLines: 1,
                softWrap: false,
                overflow: TextOverflow.visible,
                textScaleFactor: _titleScaleFactor),
            actions: [
              TextButton(
                  onPressed: () => {},
                  child: Text('Home',
                      style: TextStyle(color: _colorScheme.secondary))),
              TextButton(
                  onPressed: () => {},
                  child: Text('Sobre',
                      style: TextStyle(color: _colorScheme.secondary))),
              TextButton(
                  onPressed: () => {},
                  child: Text('Currículo',
                      style: TextStyle(color: _colorScheme.secondary))),
              TextButton(
                  onPressed: () => {},
                  child: Text('Blog',
                      style: TextStyle(color: _colorScheme.secondary))),
              TextButton(
                  onPressed: () => {},
                  child: Text('Contato',
                      style: TextStyle(color: _colorScheme.secondary))),
            ],
            centerTitle: false,
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          body: Center(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text('SEJA BEM-VINDO'),
                Text(
                    'Olá! Eu sou o Pedro',
                    style: TextStyle(
                      color: _colorScheme.secondary,
                      fontSize: 60,
                      fontWeight: FontWeight.w900,
                      shadows: const [
                        Shadow(
                          offset: Offset(5, 5),
                          color: Colors.black,
                          blurRadius: 2
                        )
                      ]
                    ),
                  textScaleFactor: _mediaQuery.size.width <= 600 ? 0.7 : 1.3,
                ),
                Container(height: 10),
                SizedBox(
                  width: 300,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: () => window.open('http://facebook.com/intellitour', '_blank'),
                          icon: const Icon(EvaIcons.facebookOutline)
                      ),
                      IconButton(
                          onPressed: () => window.open('https://twitter.com/intellitour', '_blank'),
                          icon: const Icon(EvaIcons.twitterOutline)
                      ),
                      IconButton(
                          onPressed: () => window.open('https://github.com/intellitour', '_blank'),
                          icon: const Icon(EvaIcons.githubOutline)
                      ),
                      IconButton(
                          onPressed: () => window.open('https://www.linkedin.com/in/intellitour', '_blank'),
                          icon: const Icon(EvaIcons.linkedinOutline)
                      ),
                      IconButton(
                          onPressed: () => window.open('mailto:intellitour@gmail.com', '_blank'),
                          icon: const Icon(EvaIcons.emailOutline)
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
