import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../../domain/interfaces/api_resources_interface.dart';

class APIResource extends IApiResources {
  final Dio dioo;
  final String baseURI;

  APIResource(this.dioo, this.baseURI);

  @override
  Future<Map<String, dynamic>> delete(
      {String id = '', String apiUserToken = ''}) async {
    Dio dio = dioo;
    Map<String, dynamic> queryParameters = dio.options.queryParameters;

    if (apiUserToken.trim() != '') {
      if (queryParameters.containsKey("api_token")) {
        dio = copyDio(dio.options);
        queryParameters.remove('api_token');
        queryParameters.addAll({'api_token': apiUserToken});
      }

      dio.options.queryParameters = queryParameters;
    }

    var url = baseURI;

    if (id.isNotEmpty) {
      url += "/$id";
    }

    var result = await dio.delete(url);

    return result.data is String ? json.decode(result.data) : result.data;
  }

  @override
  Future<Map<String, dynamic>> get() async {
    var result = await dioo.get(baseURI);
    return result.data is String ? json.decode(result.data) : result.data;
  }

  @override
  Future<Map<String, dynamic>> getById({
    String id = '',
    String partOfUrl = '',
    String apiUserToken = '',
  }) async {
    Dio dio = dioo;
    Map<String, dynamic> queryParameters = dio.options.queryParameters;

    if (apiUserToken.isNotEmpty) {
      if (queryParameters.containsKey("api_token")) {
        dio = copyDio(dio.options);
        queryParameters.remove('api_token');
        queryParameters.addAll({'api_token': apiUserToken});
      }

      dio.options.queryParameters = queryParameters;
    }

    var url = baseURI;

    if (partOfUrl.isNotEmpty) {
      url += partOfUrl;
    }

    if (id.isNotEmpty) {
      url += "/$id";
    }

    var result = await dio.get(url);

    return result.data is String ? json.decode(result.data) : result.data;
  }

  @override
  Future<List<dynamic>> getAll({
    String partOfUrl = '',
    String apiUserToken = '',
  }) async {
    Dio dio = dioo;
    Map<String, dynamic> queryParameters = dio.options.queryParameters;

    if (apiUserToken.isNotEmpty) {
      if (queryParameters.containsKey("api_token")) {
        dio = copyDio(dio.options);

        queryParameters.remove('api_token');
        queryParameters.addAll({'api_token': apiUserToken});
      }

      dio.options.queryParameters = queryParameters;
    }

    var url = baseURI;

    if (partOfUrl.isNotEmpty) {
      url += partOfUrl;
    }

    var result = await dio.get(url);

    return result.data is String ? json.decode(result.data) : result.data;
  }

  @override
  Future<Map<String, dynamic>> put({
    String id = '',
    String partOfUrl = '',
    Map<String, dynamic>? data,
    String apiUserToken = '',
  }) async {
    Dio dio = dioo;
    Map<String, dynamic> queryParameters = dio.options.queryParameters;

    if (apiUserToken.isNotEmpty) {
      if (queryParameters.containsKey("api_token")) {
        dio = copyDio(dio.options);

        queryParameters.remove('api_token');
        queryParameters.addAll({'api_token': apiUserToken});
      }

      dio.options.queryParameters = queryParameters;
    }

    var url = baseURI;
    if (partOfUrl.isNotEmpty) {
      url += '/$partOfUrl';
    }

    if (id.isNotEmpty) {
      url += "/$id";
    }

    var result = await dio.put(
      url,
      data: data,
    );

    return result.data is String ? json.decode(result.data) : result.data;
  }

  @override
  Future<Map<String, dynamic>> post({
    dynamic data,
    String partOfUrl = '',
    String? apiUserToken,
  }) async {
    Dio dio = dioo;
    Map<String, dynamic> queryParameters =
        dio.options.queryParameters.map((key, value) => MapEntry(key, value));

    if (apiUserToken?.isNotEmpty ?? false) {
      if (queryParameters.containsKey("api_token")) {
        dio = copyDio(dio.options);

        queryParameters.remove('api_token');
        queryParameters.addAll({'api_token': apiUserToken});
      }

      dio.options.queryParameters = queryParameters;
    }

    var url = baseURI;

    if (partOfUrl.isNotEmpty) {
      url += partOfUrl;
    }

    try {
      var result = await dio.post(url, data: data);
      return result.data is String ? json.decode(result.data) : result.data;
    } on DioException catch (e) {
      if (kDebugMode) {
        print(e.response);
      }
      rethrow;
    }
  }

  Dio copyDio(opt) {
    return Dio(opt);
  }

  @override
  void dispose() {}
}
