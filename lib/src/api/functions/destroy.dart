import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Closes the TDLib instance, destroying all local data without a proper
/// logout. The current user session will remain in the list of all active
/// sessions. All local data will be destroyed. After the destruction
/// completes updateAuthorizationState with authorizationStateClosed will be
/// sent. Can be called before authorization
/// Returns [Ok]
@immutable
class Destroy extends TdFunction {
  const Destroy();

  static const String constructor = 'destroy';

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
