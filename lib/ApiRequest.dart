import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'data.dart';

part 'apirequest.g.dart';
@RestApi(baseUrl: "https://gorest.co.in/public-api/")
abstract class ApiRequest{
  factory ApiRequest(Dio dio,{String baseUrl}) =_ApiRequest;

  @GET("/users")
  Future<ResponseData> getUsers();

}