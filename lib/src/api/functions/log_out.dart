import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Closes the TDLib instance after a proper logout. Requires an available
/// network connection. All local data will be destroyed. After the logout
/// completes, updateAuthorizationState with authorizationStateClosed will be
/// sent
/// Returns [Ok]
@immutable
class LogOut extends TdFunction {
  const LogOut();

  static const String constructor = 'logOut';

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
