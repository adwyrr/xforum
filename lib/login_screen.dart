import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            controller: _usernameController,
            decoration: InputDecoration(labelText: 'Username'),
          ),
          TextFormField(
            controller: _passwordController,
            decoration: InputDecoration(labelText: 'Password'),
            obscureText: true,
          ),
          ElevatedButton(
            onPressed: () async {
/*               Dio dio = Dio();
              var data = {
                  'username': _usernameController.text,
                  'password': _usernameController.text,
              };
              try {
                  var response = await dio.post('https://www.4d4y.com/forum/logging.php?action=login', data: data);
                  if (response.statusCode == 200) {
                      // 登录成功，跳转到论坛列表页面，可使用 Navigator 进行页面导航
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ForumListScreen()),
                      );
                  } else {
                      // 登录失败，提示用户
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                              title: Text('Login Failed'),
                              content: Text('Please check your username and password.'),
                          ),
                      );
                  }
              } catch (e) {
                  print(e);
                  // 网络等其他错误处理，提示用户
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                          title: Text('Error'),
                          content: Text('An error occurred during login.'),
                      ),
                  );
              }
          }, */
              print('Login button clicked');
            },
            child: Text('Login'),
          ),
        ],
      ),
    );
  }
}