import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns the current authorization state; this is an offline request. For
/// informational purposes only. Use updateAuthorizationState instead to
/// maintain the current authorization state. Can be called before
/// initialization
/// Returns [AuthorizationState]
@immutable
class GetAuthorizationState extends TdFunction {
  const GetAuthorizationState();

  static const String constructor = 'getAuthorizationState';

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
