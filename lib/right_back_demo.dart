import 'package:flutter/cupertino.dart';

class RightBackDemo extends StatelessWidget {
  const RightBackDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        // 脚手架控件  和material的scaffold不同 没有body部分
        child: Center(
      // 直接使用子元素 子控件
      child: Container(
        // 盒子容器
        height: 100.0,
        width: 100.0,
        color: CupertinoColors.activeBlue,
        child: CupertinoButton(
          // 按钮 添加按钮
          child: Icon(CupertinoIcons.add),
          onPressed: () {
            // 点击 触发事件
            Navigator.of(context).push(//  路由 打开子页面   路由跳转，打开一个新的页面
                //  实现右滑返回上一层的关键就是使用CupertinoPageRoute 控件
                CupertinoPageRoute(builder: ((context) {
              return RightBackDemo(); // 返回 还是打开这个控件，就是控件打开控件，无限循环
            })));
          },
        ),
      ),
    ));
  }
}
