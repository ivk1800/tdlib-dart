import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Edits an existing proxy server for network requests. Can be called before
/// authorization
/// Returns [Proxy]
@immutable
class EditProxy extends TdFunction {
  const EditProxy({
    required this.proxyId,
    required this.server,
    required this.port,
    required this.enable,
    required this.type,
  });

  /// [proxyId] Proxy identifier
  final int proxyId;

  /// [server] Proxy server IP address
  final String server;

  /// [port] Proxy server port
  final int port;

  /// [enable] Pass true to immediately enable the proxy
  final bool enable;

  /// [type] Proxy type
  final ProxyType type;

  static const String constructor = 'editProxy';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'proxy_id': proxyId,
        'server': server,
        'port': port,
        'enable': enable,
        'type': type.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
