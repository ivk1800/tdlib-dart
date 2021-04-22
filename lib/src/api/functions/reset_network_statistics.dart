import '../tdapi.dart';

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
}
