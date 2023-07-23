import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class forgetpwdpage extends StatefulWidget {
  @override
  State<forgetpwdpage> createState() => _forgetpwdpageState();
}

class _forgetpwdpageState extends State<forgetpwdpage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              "https://ts1.cn.mm.bing.net/th/id/R-C.5eb829fbe10b0b870459733600087b03?rik=axOzzi%2bfZRmdaQ&riu=http%3a%2f%2fwww.pptbz.com%2fpptpic%2fUploadFiles_6909%2f201105%2f2011051707540330.jpg&ehk=WRIGEBhguvL05AgplgWwj8uryMU9%2fHrYZgaJNgf%2ffkQ%3d&risl=&pid=ImgRaw&r=0"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: Text("忘记密码"),
            centerTitle: true,
          ),
          body: Center(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 40, top: 100, right: 40),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "输入邮箱",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, top: 8, right: 50),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 170,
                      height: 50,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "输入验证码",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                    ),
                    Spacer(),
                    Container(
                      width: 150,
                      height: 46,
                      child: ElevatedButton(
                        child: Text("发送验证码"),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, top: 8, right: 40),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "输入新密码",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 300,
                  height: 50,
                  child: ElevatedButton(
                    child: Text("确认修改"),
                    onPressed: () {},
                  ),
                ),
              )
            ],
          ))),
    );
  }
}
