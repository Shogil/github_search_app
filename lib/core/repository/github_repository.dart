import 'package:github_search/constants/enums.dart';
import 'package:github_search/core/service/github_service.dart';
import 'package:github_search/model/repositries.dart';
import 'package:github_search/model/user.dart';

class GithubRepository {
  final _githubService = GithubService();

  Future<List> getuserRepositriesList(String? username) =>
      _githubService.getuserRepositriesList(username);

  Future getUserProfile(String? username) =>
      _githubService.getUserProfile(username);

  Future<List> getActionUserList(
          String? username, ActionUserListType actionUserListType) =>
      _githubService.getActionUserList(username, actionUserListType);

  Future<List> getRepoActionUserList(String? username,
          ActionUserListType actionUserListType, String? repoName) =>
      _githubService.getRepoActionUserList(
          username, actionUserListType, repoName);
}
