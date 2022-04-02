import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Closes the TDLib instance, destroying all local data without a proper
/// logout. The current user session will remain in the list of all active
/// sessions. All local data will be destroyed. After the destruction
/// completes updateAuthorizationState with authorizationStateClosed will be
/// sent. Can be called before authorization
/// Returns [Ok]
class Destroy extends TdFunction {
  Destroy();

  static const String CONSTRUCTOR = 'destroy';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
