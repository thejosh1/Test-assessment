import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:get/get.dart';

import '../model/repo_model.dart';

class RepoController extends GetxController {
  final Dio _dio;

  RepoController({required Dio dio}) : _dio = dio;

  bool isLoaded = false;
  List<RepoModel> projects = [];

  Future<void> fetchGitRepo({Options? options}) async {
    try {
      final response = await _dio.get(
        'https://api.github.com/users/thejosh1/repos',
        options: Options(
          headers: {
            'User-Agent': 'request',
            'Authorization': 'token YOUR_ACCESS_TOKEN', // Replace with your actual access token
          },
        ),
      );

      if (response.statusCode == 200) {
        projects = (response.data as List)
            .map((json) => RepoModel.fromJson(json))
            .toList();
        isLoaded = true;
        update();
      } else {
        log('Failed to fetch repo. Status Code: ${response.statusCode}');
        log('Response: ${response.toString()}');
        throw Exception('Failed to fetch repository');
      }
    } catch (error) {
      log('Error during fetchGitRepo: $error');
      throw Exception('Failed to fetch repo');
    }
  }
}
