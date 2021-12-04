import '../tdapi.dart';

/// The link is a link to a proxy. Call addProxy with the given parameters to
/// process the link and add the proxy
class InternalLinkTypeProxy extends InternalLinkType {
  InternalLinkTypeProxy(
      {required this.server, required this.port, required this.type});

  /// [server] Proxy server IP address
  final String server;

  /// [port] Proxy server port
  final int port;

  /// [type] Type of the proxy
  final ProxyType type;

  static const String CONSTRUCTOR = 'internalLinkTypeProxy';

  static InternalLinkTypeProxy? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeProxy(
        server: json['server'],
        port: json['port'],
        type: ProxyType.fromJson(json['type'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'server': this.server,
        'port': this.port,
        'type': this.type.toJson(),
        '@type': CONSTRUCTOR
      };
}
