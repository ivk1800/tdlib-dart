import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Computes time needed to receive a response from a Telegram server through
/// a proxy. Can be called before authorization
/// Returns [Seconds]
@immutable
class PingProxy extends TdFunction {
  const PingProxy({
    required this.proxyId,
  });

  /// [proxyId] Proxy identifier. Use 0 to ping a Telegram server without a
  /// proxy
  final int proxyId;

  static const String constructor = 'pingProxy';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'proxy_id': proxyId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
