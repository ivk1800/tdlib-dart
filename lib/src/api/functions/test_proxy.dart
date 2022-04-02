import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Sends a simple network request to the Telegram servers via proxy; for
/// testing only. Can be called before authorization
/// Returns [Ok]
class TestProxy extends TdFunction {
  TestProxy(
      {required this.server,
      required this.port,
      required this.type,
      required this.dcId,
      required this.timeout});

  /// [server] Proxy server IP address
  final String server;

  /// [port] Proxy server port
  final int port;

  /// [type] Proxy type
  final ProxyType type;

  /// [dcId] Identifier of a datacenter, with which to test connection
  final int dcId;

  /// [timeout] The maximum overall timeout for the request
  final double timeout;

  static const String CONSTRUCTOR = 'testProxy';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'server': this.server,
        'port': this.port,
        'type': this.type.toJson(),
        'dc_id': this.dcId,
        'timeout': this.timeout,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
