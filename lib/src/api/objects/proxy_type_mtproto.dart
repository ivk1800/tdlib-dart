import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// An MTProto proxy server
@immutable
class ProxyTypeMtproto extends ProxyType {
  const ProxyTypeMtproto({
    required this.secret,
  });

  /// [secret] The proxy's secret in hexadecimal encoding
  final String secret;

  static const String constructor = 'proxyTypeMtproto';

  static ProxyTypeMtproto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ProxyTypeMtproto(
      secret: json['secret'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'secret': secret,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
