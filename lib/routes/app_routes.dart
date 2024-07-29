// ignore_for_file: constant_identifier_names

abstract class Routes {
  Routes._();

  static const HOMESCREEN = _Paths.HOMESCREEN;
  static const LOGINSCREEN = _Paths.LOGINSCREEN;
  static const SIGNUPSCREEN = _Paths.SIGNUPSCREEN;
  static const CARTSCREEN = _Paths.CARTSCREEN;
  static const PROFILESCREEN = _Paths.PROFILESCREEN;
  static const CHECKOOUTSCREEN = _Paths.CHECKOOUTSCREEN;
  static const SPLASHSCREEN = _Paths.SPLASHSCREEN;
  static const SEARCHSCREEN = _Paths.SEARCHSCREEN;
  static const PYMENTSCREEN = _Paths.PYMENTSCREEN;
  static const ADDRESSCREEN = _Paths.ADDRESSCREEN;
}

abstract class _Paths {
  _Paths._();

  static const HOMESCREEN = '/home';
  static const LOGINSCREEN = '/login';
  static const SIGNUPSCREEN = '/signup';
  static const CARTSCREEN = '/cart';
  static const PROFILESCREEN = '/profile';
  static const CHECKOOUTSCREEN = '/checkout';
  static const SPLASHSCREEN = '/splash';
  static const SEARCHSCREEN = '/search';
  static const PYMENTSCREEN = '/payment';
  static const ADDRESSCREEN = '/address';
}
