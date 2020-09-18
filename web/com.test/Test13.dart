import 'dart:io'; //导IO包
import 'dart:convert'; //解码和编码JSON

void main() {
  _get();
}

_get() async {
  var responseBody;
  //1.创建HttpClient
  var httpClient = new HttpClient();
  print("http====start");
  //2.构造Uri
  var requset = await httpClient
      .getUrl(Uri.parse("http://gank.io/api/data/%E7%A6%8F%E5%88%A9/10/1"));

  //3.关闭请求，等待响应
  var response = await requset.close();
  //4.进行解码，获取数据
  if (response.statusCode == 200) {
    print("http====code==200");
    //拿到请求的数据
    responseBody = await response.transform(utf8.decoder).join();
    //先不解析打印数据
    print("结果"+responseBody);
  } else {
    print("error");
  }

  print("http====end");
}
