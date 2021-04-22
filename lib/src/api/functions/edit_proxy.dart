import '../tdapi.dart';

/// Edits an existing proxy server for network requests. Can be called before
/// authorization
/// Returns [Proxy]
class EditProxy extends TdFunction {
  EditProxy(
      {required this.proxyId,
      required this.server,
      required this.port,
      required this.enable,
      required this.type});

  /// [proxyId] Proxy identifier
  final int proxyId;

  /// [server] Proxy server IP address
  final String server;

  /// [port] Proxy server port
  final int port;

  /// [enable] True, if the proxy should be enabled
  final bool enable;

  /// [type] Proxy type
  final ProxyType type;

  static const String CONSTRUCTOR = 'editProxy';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'proxy_id': this.proxyId,
        'server': this.server,
        'port': this.port,
        'enable': this.enable,
        'type': this.type.toJson(),
        '@type': CONSTRUCTOR
      };
}
