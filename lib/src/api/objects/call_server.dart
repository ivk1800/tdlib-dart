import '../tdapi.dart';

/// Describes a server for relaying call data
class CallServer extends TdObject {
  CallServer(
      {required this.id,
      required this.ipAddress,
      required this.ipv6Address,
      required this.port,
      required this.type});

  /// [id] Server identifier
  final int id;

  /// [ipAddress] Server IPv4 address
  final String ipAddress;

  /// [ipv6Address] Server IPv6 address
  final String ipv6Address;

  /// [port] Server port number
  final int port;

  /// [type] Server type
  final CallServerType type;

  static const String CONSTRUCTOR = 'callServer';

  static CallServer? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CallServer(
        id: int.tryParse(json['id']) ?? 0,
        ipAddress: json['ip_address'],
        ipv6Address: json['ipv6_address'],
        port: json['port'],
        type: CallServerType.fromJson(json['type'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'id': this.id,
        'ip_address': this.ipAddress,
        'ipv6_address': this.ipv6Address,
        'port': this.port,
        'type': this.type.toJson(),
        '@type': CONSTRUCTOR
      };
}
