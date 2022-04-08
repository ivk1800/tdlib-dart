import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Resets all network data usage statistics to zero. Can be called before
/// authorization
/// Returns [Ok]
@immutable
class ResetNetworkStatistics extends TdFunction {
  const ResetNetworkStatistics();

  static const String constructor = 'resetNetworkStatistics';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
