import 'package:flutter/material.dart';
import 'package:log/pages/home.dart';
import 'package:log/pages/repassword.dart';
import 'package:log/pages/login.dart';
import 'package:log/pages/editDetails.dart';
import 'package:image_picker/image_picker.dart';

void main() => runApp(Shared());

class Shared extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Manú principal',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  AnimationController animationController;
  Animation degOneTranslationAnimation,
      degTwoTranslationAnimation,
      degThreeTranslationAnimation;
  Animation rotationAnimation;

  double getRadiansFromDegree(double degree) {
    double unitRadian = 57.295779513;
    return degree / unitRadian;
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 250));
    degOneTranslationAnimation = TweenSequence([
      TweenSequenceItem<double>(
          tween: Tween<double>(begin: 0.0, end: 1.2), weight: 75.0),
      TweenSequenceItem<double>(
          tween: Tween<double>(begin: 1.2, end: 1.0), weight: 25.0),
    ]).animate(animationController);
    degTwoTranslationAnimation = TweenSequence([
      TweenSequenceItem<double>(
          tween: Tween<double>(begin: 0.0, end: 1.4), weight: 55.0),
      TweenSequenceItem<double>(
          tween: Tween<double>(begin: 1.4, end: 1.0), weight: 45.0),
    ]).animate(animationController);
    degThreeTranslationAnimation = TweenSequence([
      TweenSequenceItem<double>(
          tween: Tween<double>(begin: 0.0, end: 1.75), weight: 35.0),
      TweenSequenceItem<double>(
          tween: Tween<double>(begin: 1.75, end: 1.0), weight: 65.0),
    ]).animate(animationController);
    rotationAnimation = Tween<double>(begin: 180.0, end: 0.0).animate(
        CurvedAnimation(parent: animationController, curve: Curves.easeOut));
    super.initState();
    animationController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    void cerrarSesion() => Navigator.of(context).pushReplacementNamed('/login');
    List<String> imagePaths = [];
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
            actions: <Widget>[
              Image.network(
                  'https://static.wikia.nocookie.net/familyguyfanon/images/6/60/Rick_and_Morty.png',
                  width: 350,
                  height: 300),
            ],
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(2))),
        drawer: _getDrawer(context),
        body: Container(
          width: size.width,
          height: size.height,
          child: Stack(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(16.0),
                child: ListView(
                  children: <Widget>[
                    Container(
                        child: Center(
                            child: Column(
                      children: [
                        Container(
                            width: 400,
                            child: Column(children: [
                              SizedBox(height: 10),
                              Container(
                                  child: Column(children: <Widget>[
                                Image.network(
                                    'https://s4.thcdn.com//design-assets/images/licensed-images/rickandmorty.png',
                                    scale: 1.0),
                                Text('¡Bienvenidos! ',
                                    style: TextStyle(
                                        fontSize: 30, fontFamily: "arial")),
                                Text(
                                    'Rick y Morty (en inglés: Rick and Morty) es una serie de televisión estadounidense de animación para adultos creada por Justin Roiland y Dan Harmon en 2013 para Adult Swim. La serie sigue las desventuras de un científico, Rick, y su fácilmente influenciable nieto, Morty, quienes pasan el tiempo entre la vida doméstica y los viajes espaciales, temporales e intergalácticos. Roiland es el encargado de darle voz a los dos personajes principales1​2​, y la serie también incluye las voces de Chris Parnell, Spencer Grammer y Sarah Chalke.',
                                    style: TextStyle(
                                        fontSize: 20, fontFamily: "arial")),
                              ]))
                            ]))
                      ],
                    )))
                  ],
                ),
              ),
              Positioned(
                  right: 30,
                  bottom: 30,
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: <Widget>[
                      IgnorePointer(
                        child: Container(
                          color: Colors.transparent,
                          height: 150.0,
                          width: 150.0,
                        ),
                      ),
                      Transform.translate(
                        offset: Offset.fromDirection(getRadiansFromDegree(270),
                            degOneTranslationAnimation.value * 100),
                        child: Transform(
                          transform: Matrix4.rotationZ(
                              getRadiansFromDegree(rotationAnimation.value))
                            ..scale(degOneTranslationAnimation.value),
                          alignment: Alignment.center,
                          child: CircularButton(
                            color: Colors.blue,
                            width: 50,
                            height: 50,
                            icon: Icon(
                              Icons.lock_clock,
                              color: Colors.white,
                            ),
                            onClick: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Repassword(),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                      Transform.translate(
                        offset: Offset.fromDirection(getRadiansFromDegree(225),
                            degTwoTranslationAnimation.value * 100),
                        child: Transform(
                          transform: Matrix4.rotationZ(
                              getRadiansFromDegree(rotationAnimation.value))
                            ..scale(degTwoTranslationAnimation.value),
                          alignment: Alignment.center,
                          child: CircularButton(
                            color: Colors.black,
                            width: 50,
                            height: 50,
                            icon: Icon(
                              Icons.person,
                              color: Colors.white,
                            ),
                            onClick: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomePage(),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                      Transform.translate(
                        offset: Offset.fromDirection(getRadiansFromDegree(180),
                            degThreeTranslationAnimation.value * 100),
                        child: Transform(
                          transform: Matrix4.rotationZ(
                              getRadiansFromDegree(rotationAnimation.value))
                            ..scale(degThreeTranslationAnimation.value),
                          alignment: Alignment.center,
                          child: CircularButton(
                            color: Colors.orangeAccent,
                            width: 50,
                            height: 50,
                            icon: Icon(
                              Icons.camera_alt,
                              color: Colors.white,
                            ),
                            onClick: () async {
                              final imagePicker = ImagePicker();
                              final pickedFile = await imagePicker.getImage(
                                source: ImageSource.gallery,
                              );
                              if (pickedFile != null) {
                                setState(() {
                                  imagePaths.add(pickedFile.path);
                                });
                              }
                            },
                          ),
                        ),
                      ),
                      Transform(
                        transform: Matrix4.rotationZ(
                            getRadiansFromDegree(rotationAnimation.value)),
                        alignment: Alignment.center,
                        child: CircularButton(
                          color: Colors.red,
                          width: 60,
                          height: 60,
                          icon: Icon(
                            Icons.menu,
                            color: Colors.white,
                          ),
                          onClick: () {
                            if (animationController.isCompleted) {
                              animationController.reverse();
                            } else {
                              animationController.forward();
                            }
                          },
                        ),
                      )
                    ],
                  ))
            ],
          ),
        ));
  }

  Widget _getDrawer(BuildContext context) {
    return Drawer(
      child: ListView(children: <Widget>[
        DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: Row(children: <Widget>[
              Image.network(
                  'https://i.pinimg.com/originals/4b/3e/02/4b3e0279e016cc145240de10c8a06fb6.png'),
              Container(
                child: Column(children: <Widget>[
                  Text(
                    'Jackson Palacios',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  Text(
                    'Fan destacado',
                    style:
                        TextStyle(fontWeight: FontWeight.normal, fontSize: 15),
                  ),
                  Text(
                    'Personaje Favorito',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                  Text(
                    'Ricky',
                    style:
                        TextStyle(fontWeight: FontWeight.normal, fontSize: 15),
                  ),
                  RaisedButton(
                    child: Text(
                      'Cerrar sesión',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    color: Colors.green,
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                    ),
                  ),
                ]),
              ),
            ])),
        Text(
          'Ricky Sánchez',
          style: TextStyle(
              fontSize: 20,
              fontFamily: "Raleway-Regular",
              fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        Image.network(
            'https://www.kindpng.com/picc/m/43-437689_transparent-rick-and-morty-png-rick-and-morty.png',
            width: 70,
            height: 70),
        RaisedButton(
          child: Text(
            'Ver biografía',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          color: Colors.green,
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomePage()),
          ),
        ),
        Text(
          'Morty Smith ',
          style: TextStyle(
              fontSize: 20,
              fontFamily: "Raleway-Regular",
              fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        Image.network(
            'https://pngimage.net/wp-content/uploads/2018/06/morty-head-png-1.png',
            width: 70,
            height: 70),
        RaisedButton(
          child: Text(
            'Ver biografía',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          color: Colors.green,
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomePage()),
          ),
        ),
      ]),
    );
  }
}

class CircularButton extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  final Icon icon;
  final Function onClick;

  CircularButton(
      {this.color, this.width, this.height, this.icon, this.onClick});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      width: width,
      height: height,
      child: IconButton(icon: icon, enableFeedback: true, onPressed: onClick),
    );
  }
}
