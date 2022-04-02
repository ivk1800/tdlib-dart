import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Returns the current authorization state; this is an offline request. For
/// informational purposes only. Use updateAuthorizationState instead to
/// maintain the current authorization state. Can be called before
/// initialization
/// Returns [AuthorizationState]
class GetAuthorizationState extends TdFunction {
  GetAuthorizationState();

  static const String CONSTRUCTOR = 'getAuthorizationState';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
