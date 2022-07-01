import 'package:flutter_test/flutter_test.dart';
import 'package:github_search/constants/enums.dart';
import 'package:github_search/core/bloc/github_bloc/github_bloc.dart';

void main() {
  final githubBloc = GithubBloc();
  test("Should get user profile detail", () async {
    await githubBloc.getUserProfile("shogil");
    expect(githubBloc.currentUser, isNotNull);
  });
  test("Should get all repositories", () async {
    await githubBloc.getuserRepositriesList("shogil");
    expect(githubBloc.currentUserRepoList, isNotEmpty);
  });

  test("Should get all user followers", () async {
    await githubBloc.getActionUserList("shogil", ActionUserListType.followers);
    expect(githubBloc.usersList, isNotEmpty);
  });

  test("Should get all user followings", () async {
    githubBloc.clearUserList();
    await githubBloc.getActionUserList("shogil", ActionUserListType.followings);
    expect(githubBloc.usersList, isNotEmpty);
  });
}
