import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A HTTP transparent proxy server
@immutable
class ProxyTypeHttp extends ProxyType {
  const ProxyTypeHttp({
    required this.username,
    required this.password,
    required this.httpOnly,
  });

  /// [username] Username for logging in; may be empty
  final String username;

  /// [password] Password for logging in; may be empty
  final String password;

  /// [httpOnly] Pass true if the proxy supports only HTTP requests and doesn't
  /// support transparent TCP connections via HTTP CONNECT method
  final bool httpOnly;

  static const String constructor = 'proxyTypeHttp';

  static ProxyTypeHttp? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ProxyTypeHttp(
      username: json['username'] as String,
      password: json['password'] as String,
      httpOnly: json['http_only'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'username': username,
        'password': password,
        'http_only': httpOnly,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
