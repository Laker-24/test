import 'package:demo/GrowTransition.dart';
import 'package:flutter/material.dart';

class AnimatedImage extends AnimatedWidget {
  const AnimatedImage({
    Key? key,
    required Animation<double> animation,
  }) : super(key: key, listenable: animation);

  @override
  Widget build(BuildContext context) {
    final animation = listenable as Animation<double>;
    return Center(
      child: Image.asset(
        "images/avatar.jpg",
        width: animation.value,
        height: animation.value,
      ),
    );
  }
}

class ScaleAnimationRoute extends StatefulWidget {
  const ScaleAnimationRoute({Key? key}) : super(key: key);

  @override
  _ScaleAnimationRouteState createState() => _ScaleAnimationRouteState();
}

//需要继承TickerProvider，如果有多个AnimationController，则应该使用TickerProviderStateMixin。
class _ScaleAnimationRouteState extends State<ScaleAnimationRoute>
    with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    animation = Tween(begin: 0.0, end: 300.0).animate(controller);
    animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        controller.reverse();
      } else if (status == AnimationStatus.dismissed) {
        controller.forward();
      }
    });
    controller.forward();
  }
  // initState() {
  //   super.initState();
  //   // controller = AnimationController(
  //   //   duration: const Duration(seconds: 2),
  //   //   vsync: this,
  //   // );

  //   // //匀速
  //   // //图片宽高从0变到300
  //   // animation = Tween(begin: 0.0, end: 300.0).animate(controller)
  //   //   ..addListener(() {
  //   //     setState(() => {});
  //   //   });
  //   controller =
  //       AnimationController(duration: const Duration(seconds: 3), vsync: this);
  //   animation = CurvedAnimation(parent: controller, curve: Curves.bounceIn);
  //   animation = Tween(begin: 0.0, end: 300.0).animate(animation)
  //     ..addListener(() {
  //       setState(() => {});
  //     });
  //   //启动动画(正向执行)
  //   controller.forward();
  // }

  @override
  Widget build(BuildContext context) {
    // return Center(
    //   child: Image.asset(
    //     "images/avatar.jpg",
    //     width: animation.value,
    //     height: animation.value,
    //   ),
    // );
    // return AnimatedImage(
    //   animation: animation,
    // );
    // return AnimatedBuilder(
    //   animation: animation,
    //   child: Image.asset("images/avatar.jpg"),
    //   builder: (BuildContext ctx, child) {
    //     return Center(
    //       child: SizedBox(
    //         height: animation.value,
    //         width: animation.value,
    //         child: child,
    //       ),
    //     );
    //   },
    // );
    return GrowTransition(
      child: Image.asset("images/avatar.jpg"),
      animation: animation,
    );
  }

  @override
  dispose() {
    //路由销毁时需要释放动画资源
    controller.dispose();
    super.dispose();
  }
}
