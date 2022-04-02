import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Describes the type of a proxy server
abstract class ProxyType extends TdObject {
  const ProxyType();

  static const String CONSTRUCTOR = 'proxyType';

  /// Inherited by:
  /// [ProxyTypeSocks5]
  /// [ProxyTypeHttp]
  /// [ProxyTypeMtproto]
  static ProxyType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json["@type"]) {
      case ProxyTypeSocks5.CONSTRUCTOR:
        return ProxyTypeSocks5.fromJson(json);
      case ProxyTypeHttp.CONSTRUCTOR:
        return ProxyTypeHttp.fromJson(json);
      case ProxyTypeMtproto.CONSTRUCTOR:
        return ProxyTypeMtproto.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
