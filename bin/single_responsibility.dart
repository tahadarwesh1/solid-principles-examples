void main(List<String> arguments) {
  UserData userData = UserData(
    name: 'Taha Darwish',
    email: 'taha@gmail.com',
    password: '123456',
  );

  AuthService authService = AuthService();
  authService.register(userData);
}

// Single Responsibility Principle
// A class should have only one reason to change, meaning that a class should have only one job or responsibility.

// In the following example, the UserData class is responsible for holding user data.

//! before applying the Single Responsibility Principle
/*
class UserData {
  String name;
  String email;
  String password;

  UserData({required this.name, required this.email, required this.password});

  void updateProfile(String name, String email, String password) {
    this.name = name;
    this.email = email;
    this.password = password;
  }

  void register() {
    print('User registered successfully');
    print(
        "the user's name is '$name', email is '$email', password is '$password'");
  }

  void login() {
    print('User logged in successfully');
  }

  void logout() {
    print('User logged out successfully');
  }
}
*/

//* after applying the Single Responsibility Principle
class UserData {
  String name;
  String email;
  String password;

  UserData({required this.name, required this.email, required this.password});

  void updateProfile(String name, String email, String password) {
    this.name = name;
    this.email = email;
    this.password = password;
  }
}

// AuthService class is responsible for user authentication and authorization.
class AuthService {
  void register(UserData userData) {
    print('User registered successfully');
    print(
        "the user's name is '${userData.name}', email is '${userData.email}', password is '${userData.password}'");
  }

  void login(String email, String password) {
    print('User logged in successfully');
  }

  void logout() {
    print('User logged out successfully');
  }
}
