import '../tdapi.dart';

/// An MTProto proxy server
class ProxyTypeMtproto extends ProxyType {
  ProxyTypeMtproto({required this.secret});

  /// [secret] The proxy's secret in hexadecimal encoding
  final String secret;

  static const String CONSTRUCTOR = 'proxyTypeMtproto';

  static ProxyTypeMtproto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ProxyTypeMtproto(secret: json['secret']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'secret': this.secret, '@type': CONSTRUCTOR};
}
