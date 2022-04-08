import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Removes a proxy server. Can be called before authorization
/// Returns [Ok]
@immutable
class RemoveProxy extends TdFunction {
  const RemoveProxy({
    required this.proxyId,
  });

  /// [proxyId] Proxy identifier
  final int proxyId;

  static const String constructor = 'removeProxy';

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
