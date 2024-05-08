import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes the type of proxy server
@immutable
abstract class ProxyType extends TdObject {
  const ProxyType();

  static const String constructor = 'proxyType';

  /// Inherited by:
  /// [ProxyTypeHttp]
  /// [ProxyTypeMtproto]
  /// [ProxyTypeSocks5]
  static ProxyType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case ProxyTypeHttp.constructor:
        return ProxyTypeHttp.fromJson(json);
      case ProxyTypeMtproto.constructor:
        return ProxyTypeMtproto.fromJson(json);
      case ProxyTypeSocks5.constructor:
        return ProxyTypeSocks5.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
