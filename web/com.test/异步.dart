Future<String> login(String userName, String pwd) async {
  return '88888888';
}

Future<String> getUserInfo(String id) async {
  return '野猿新一是一只Android程序员';
}

Future saveUserInfo(String userInfo) async {
  print(userInfo);
}

void main() {
  login('野猿新一', '1234556').then((id) {
    print('登录成功，用户id为${id}');
    getUserInfo(id).then((userInfo) {
      print('获取用户信息成功，结果为${userInfo}');
      saveUserInfo(userInfo).then((data) {
        print('保存用户信息成功');
      });
    });
  });
}
