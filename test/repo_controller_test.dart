import 'package:flutter_test/flutter_test.dart';
import 'package:dio/dio.dart';
import 'package:mockito/mockito.dart';
import 'package:untitled/controller/repo_controller.dart';

class MockDio extends Mock implements Dio {}

void main() {
  group('RepoController', () {
    late RepoController repoController;
    late MockDio mockDio;

    setUp(() {
      mockDio = MockDio();
      repoController = RepoController(dio: mockDio);
    });

    test('fetchGitRepo success', () async {
      // Mocking Dio's response for a successful request
      when(mockDio.get('', options: anyNamed('options') as Options?))
          .thenAnswer((_) async => Response(
        data: [
          {
            "id": 123,
            "name": "Sample Repo",
            "full_name": "user/sample-repo",
            "description": "A sample repository",
          }
        ],
        statusCode: 200,
        requestOptions: RequestOptions(),
      ));

      // Calling the method under test
      await repoController.fetchGitRepo();

      // Verifying the expected changes in the controller's state
      expect(repoController.isLoaded, true);
      expect(repoController.projects.length, 1);

      // Verify specific details of the first project
      expect(repoController.projects[0].id, 123);
      expect(repoController.projects[0].name, "Sample Repo");
      expect(repoController.projects[0].fullName, "user/sample-repo");
      expect(repoController.projects[0].description, "A sample repository");
    });
  });
}
