import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Closes the TDLib instance. All databases will be flushed to disk and
/// properly closed. After the close completes, updateAuthorizationState with
/// authorizationStateClosed will be sent. Can be called before initialization
/// Returns [Ok]
class Close extends TdFunction {
  Close();

  static const String CONSTRUCTOR = 'close';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
