import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A SOCKS5 proxy server
@immutable
class ProxyTypeSocks5 extends ProxyType {
  const ProxyTypeSocks5({
    required this.username,
    required this.password,
  });

  /// [username] Username for logging in; may be empty
  final String username;

  /// [password] Password for logging in; may be empty
  final String password;

  static const String constructor = 'proxyTypeSocks5';

  static ProxyTypeSocks5? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ProxyTypeSocks5(
      username: json['username'] as String,
      password: json['password'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'username': username,
        'password': password,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
