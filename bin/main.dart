import 'package:dart/dart.dart' as dart;
import 'package:http/http.dart' as http;
import 'package:path/path.dart' as PATH;

main(List<String> arguments) {
  // get the http response - الاتصال بروتوكول http
  var url = 'https://www.google.com';
  http.get(url).then((response){
    print("Response statues: ${response.statusCode}"); // 200 means is OK
    print("Response body: ${response.body}");

    // get the PATH - الحصول على مكان الملف
    String path = PATH.join("Directory","file.txt");
    print(path);

    // get the local files path
    String dirPath = 'Home/Desktop';
    String fileName = 'pic';

    path = PATH.join(dirPath,fileName);
    print('$path');

  });
}
