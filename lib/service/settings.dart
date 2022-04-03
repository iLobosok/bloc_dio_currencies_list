import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import '../data/datavalue.dart';


Future<List<Datavalue>> fetchProcessors1() async {
  try {
    final response = await Dio().get(
      'https://www.nbrb.by/api/exrates/rates',
      queryParameters: {
        'periodicity': 0,
      },
      options: Options(
        responseType: ResponseType.plain,
      ),
    );
    return List<Datavalue>.from(
      json
          .decode(
            response.data,
          )
          .map(
            (x) => Datavalue.fromMap(x),
          ),
    );
  } on DioError catch (ex) {
    // Assuming there will be an errorMessage property in the JSON object
    //if (ex.response?.statusCode == 404) {}
    throw DioError(
      requestOptions: ex.requestOptions,
      error: ex.error,
      response: ex.response,
    );
  }
}

