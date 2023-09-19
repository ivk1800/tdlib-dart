import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about a proxy server
@immutable
class Proxy extends TdObject {
  const Proxy({
    required this.id,
    required this.server,
    required this.port,
    required this.lastUsedDate,
    required this.isEnabled,
    required this.type,
  });

  /// [id] Unique identifier of the proxy
  final int id;

  /// [server] Proxy server domain or IP address
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

  static const String constructor = 'proxy';

  static Proxy? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Proxy(
      id: json['id'] as int,
      server: json['server'] as String,
      port: json['port'] as int,
      lastUsedDate: json['last_used_date'] as int,
      isEnabled: json['is_enabled'] as bool,
      type: ProxyType.fromJson(json['type'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'server': server,
        'port': port,
        'last_used_date': lastUsedDate,
        'is_enabled': isEnabled,
        'type': type.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
