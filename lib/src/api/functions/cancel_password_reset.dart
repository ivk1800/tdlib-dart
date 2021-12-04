import '../tdapi.dart';

/// Cancels reset of 2-step verification password. The method can be called if
/// passwordState.pending_reset_date
/// Returns [Ok]
class CancelPasswordReset extends TdFunction {
  CancelPasswordReset();

  static const String CONSTRUCTOR = 'cancelPasswordReset';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
