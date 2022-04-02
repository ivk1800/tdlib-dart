import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A HTTP transparent proxy server
class ProxyTypeHttp extends ProxyType {
  ProxyTypeHttp(
      {required this.username, required this.password, required this.httpOnly});

  /// [username] Username for logging in; may be empty
  final String username;

  /// [password] Password for logging in; may be empty
  final String password;

  /// [httpOnly] Pass true if the proxy supports only HTTP requests and doesn't
  /// support transparent TCP connections via HTTP CONNECT method
  final bool httpOnly;

  static const String CONSTRUCTOR = 'proxyTypeHttp';

  static ProxyTypeHttp? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ProxyTypeHttp(
        username: json['username'],
        password: json['password'],
        httpOnly: json['http_only']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'username': this.username,
        'password': this.password,
        'http_only': this.httpOnly,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
