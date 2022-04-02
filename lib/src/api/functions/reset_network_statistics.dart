import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Resets all network data usage statistics to zero. Can be called before
/// authorization
/// Returns [Ok]
class ResetNetworkStatistics extends TdFunction {
  ResetNetworkStatistics();

  static const String CONSTRUCTOR = 'resetNetworkStatistics';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
