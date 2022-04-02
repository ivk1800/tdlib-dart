import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Computes time needed to receive a response from a Telegram server through
/// a proxy. Can be called before authorization
/// Returns [Seconds]
class PingProxy extends TdFunction {
  PingProxy({required this.proxyId});

  /// [proxyId] Proxy identifier. Use 0 to ping a Telegram server without a
  /// proxy
  final int proxyId;

  static const String CONSTRUCTOR = 'pingProxy';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'proxy_id': this.proxyId, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
