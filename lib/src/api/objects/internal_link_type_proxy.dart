import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The link is a link to a proxy. Call addProxy with the given parameters to
/// process the link and add the proxy
@immutable
class InternalLinkTypeProxy extends InternalLinkType {
  const InternalLinkTypeProxy({
    required this.server,
    required this.port,
    required this.type,
  });

  /// [server] Proxy server IP address
  final String server;

  /// [port] Proxy server port
  final int port;

  /// [type] Type of the proxy
  final ProxyType type;

  static const String constructor = 'internalLinkTypeProxy';

  static InternalLinkTypeProxy? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeProxy(
      server: json['server'],
      port: json['port'],
      type: ProxyType.fromJson(json['type'])!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'server': server,
        'port': port,
        'type': type.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
