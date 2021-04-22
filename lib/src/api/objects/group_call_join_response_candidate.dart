import '../tdapi.dart';

/// Describes a join response candidate for interaction with tgcalls
class GroupCallJoinResponseCandidate extends TdObject {
  GroupCallJoinResponseCandidate(
      {required this.port,
      required this.protocol,
      required this.network,
      required this.generation,
      required this.id,
      required this.component,
      required this.foundation,
      required this.priority,
      required this.ip,
      required this.type,
      required this.tcpType,
      required this.relAddr,
      required this.relPort});

  /// [port] Value of the field port
  final String port;

  /// [protocol] Value of the field protocol
  final String protocol;

  /// [network] Value of the field network
  final String network;

  /// [generation] Value of the field generation
  final String generation;

  /// [id] Value of the field id
  final String id;

  /// [component] Value of the field component
  final String component;

  /// [foundation] Value of the field foundation
  final String foundation;

  /// [priority] Value of the field priority
  final String priority;

  /// [ip] Value of the field ip
  final String ip;

  /// [type] Value of the field type
  final String type;

  /// [tcpType] Value of the field tcp_type
  final String tcpType;

  /// [relAddr] Value of the field rel_addr
  final String relAddr;

  /// [relPort] Value of the field rel_port
  final String relPort;

  static const String CONSTRUCTOR = 'groupCallJoinResponseCandidate';

  static GroupCallJoinResponseCandidate? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GroupCallJoinResponseCandidate(
        port: json['port'],
        protocol: json['protocol'],
        network: json['network'],
        generation: json['generation'],
        id: json['id'],
        component: json['component'],
        foundation: json['foundation'],
        priority: json['priority'],
        ip: json['ip'],
        type: json['type'],
        tcpType: json['tcp_type'],
        relAddr: json['rel_addr'],
        relPort: json['rel_port']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'port': this.port,
        'protocol': this.protocol,
        'network': this.network,
        'generation': this.generation,
        'id': this.id,
        'component': this.component,
        'foundation': this.foundation,
        'priority': this.priority,
        'ip': this.ip,
        'type': this.type,
        'tcp_type': this.tcpType,
        'rel_addr': this.relAddr,
        'rel_port': this.relPort,
        '@type': CONSTRUCTOR
      };
}
