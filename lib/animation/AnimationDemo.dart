import 'package:flutter/material.dart';

class AnimationDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('AnimationDemo')),
      body: AnimationDemoHome(),
    );
  }
}

class AnimationDemoHome extends StatefulWidget {
  @override
  _AnimationDemoHomeState createState() => _AnimationDemoHomeState();
}

class _AnimationDemoHomeState extends State<AnimationDemoHome>
    with TickerProviderStateMixin {
  AnimationController animationController;
  Animation animation;
  Animation animationColor;
  CurvedAnimation curve;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    animationController = AnimationController(
//      value: 32.0,
//      lowerBound: 32.0,
//      upperBound: 52,
      duration: Duration(milliseconds: 1000),
      vsync: this,
    );

    curve =
        CurvedAnimation(parent: animationController, curve: Curves.decelerate);


    animation = Tween(begin: 32.0, end: 100.0).animate(curve);
    animationColor =
        ColorTween(begin: Colors.red, end: Colors.black).animate(curve);
    animationController.addStatusListener((value) {
      print(value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child:AnimateHeart(
        animations: [
          animation,
          animationColor,
        ],
        animationController: animationController,
      )
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }
}

class AnimateHeart extends AnimatedWidget {
  final List animations;

  final AnimationController animationController;
  AnimateHeart({
    this.animations,
    this.animationController,
}):super(listenable:animationController);

  @override
  Widget build(BuildContext context) {
  return IconButton(
      icon: Icon(Icons.favorite),
      iconSize: animations[0].value,
      color: animations[1].value,
      onPressed: () {
        switch (animationController.status) {
          case AnimationStatus.completed:
            animationController.reverse();
            break;
          default:
            animationController.forward();
        }
      });
  }

}