part of 'routes.dart';

// ignore: camel_case_types
abstract class page_routes {
  page_routes._();

  static const TABS = _Paths.TABS;
  static const Login = _Paths.Login;
}

abstract class _Paths {
  _Paths._();
  static const Login = '/login';
  static const TABS = '/';
}
