import 'package:dio/dio.dart';
import 'package:jorisjeanmich/transfer.dart';



class SingletonDio {



  static Dio getDio() {
    Dio dio = Dio();
    return dio;
  }
}




Future<Truc> httpComplex(String nom) async {
  try {
    var response = await SingletonDio.getDio().get('http://10.0.2.2:8080/exos/truc/complexe?name='+nom);
    print(response);
    return  Truc.fromJson(response.data);

  } catch (e) {
    print(e);
    throw(e);
  }
}

Future<List<Truc>> httpListComplex(String param1, String param2, String param3) async {
  try {
    var response = await SingletonDio.getDio().get('https://exercices-web.herokuapp.com/exos/truc/list');
    print(response);
    var listeJSON = response.data as List;
    var listeTruc = listeJSON.map(
            (elementJSON) {
          return Truc.fromJson(elementJSON);
        }
    ).toList();
    return listeTruc;   //ca fais liste = response pi on devrais etre chill

  } catch (e) {
    print(e);
    throw(e);
  }
}