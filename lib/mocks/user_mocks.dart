part of 'mock_factory.dart';

class _UserMocks {
  final DummyUtil dummyUtil;

  _UserMocks({
    required this.dummyUtil,
  });

  UserModel prepareUser() {
    return const UserModel(
      avatar: 'assets/mocks/user/avatar.png',
      email: 'John_S@gmail.com',
      firstName: 'John',
      lastName: 'Smith',
    );
  }

  UserNotificationsResponse prepareUserNotificationsResponse() {
    return UserNotificationsResponse(
      areNotificationsEnabled: dummyUtil.randomBool(),
    );
  }
}
