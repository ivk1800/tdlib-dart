import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Removes a proxy server. Can be called before authorization
/// Returns [Ok]
class RemoveProxy extends TdFunction {
  RemoveProxy({required this.proxyId});

  /// [proxyId] Proxy identifier
  final int proxyId;

  static const String CONSTRUCTOR = 'removeProxy';

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
