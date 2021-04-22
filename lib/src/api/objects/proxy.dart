import '../tdapi.dart';

/// Contains information about a proxy server
class Proxy extends TdObject {
  Proxy(
      {required this.id,
      required this.server,
      required this.port,
      required this.lastUsedDate,
      required this.isEnabled,
      required this.type});

  /// [id] Unique identifier of the proxy
  final int id;

  /// [server] Proxy server IP address
  final String server;

  /// [port] Proxy server port
  final int port;

  /// [lastUsedDate] Point in time (Unix timestamp) when the proxy was last
  /// used; 0 if never
  final int lastUsedDate;

  /// [isEnabled] True, if the proxy is enabled now
  final bool isEnabled;

  /// [type] Type of the proxy
  final ProxyType type;

  static const String CONSTRUCTOR = 'proxy';

  static Proxy? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Proxy(
        id: json['id'],
        server: json['server'],
        port: json['port'],
        lastUsedDate: json['last_used_date'],
        isEnabled: json['is_enabled'],
        type: ProxyType.fromJson(json['type'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'id': this.id,
        'server': this.server,
        'port': this.port,
        'last_used_date': this.lastUsedDate,
        'is_enabled': this.isEnabled,
        'type': this.type.toJson(),
        '@type': CONSTRUCTOR
      };
}
