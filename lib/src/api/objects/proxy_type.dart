import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes the type of a proxy server
@immutable
abstract class ProxyType extends TdObject {
  const ProxyType();

  static const String constructor = 'proxyType';

  /// Inherited by:
  /// [ProxyTypeSocks5]
  /// [ProxyTypeHttp]
  /// [ProxyTypeMtproto]
  static ProxyType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case ProxyTypeSocks5.constructor:
        return ProxyTypeSocks5.fromJson(json);
      case ProxyTypeHttp.constructor:
        return ProxyTypeHttp.fromJson(json);
      case ProxyTypeMtproto.constructor:
        return ProxyTypeMtproto.fromJson(json);
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
