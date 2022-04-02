import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A SOCKS5 proxy server
class ProxyTypeSocks5 extends ProxyType {
  ProxyTypeSocks5({required this.username, required this.password});

  /// [username] Username for logging in; may be empty
  final String username;

  /// [password] Password for logging in; may be empty
  final String password;

  static const String CONSTRUCTOR = 'proxyTypeSocks5';

  static ProxyTypeSocks5? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ProxyTypeSocks5(
        username: json['username'], password: json['password']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'username': this.username,
        'password': this.password,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
