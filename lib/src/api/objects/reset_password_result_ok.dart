import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The password was reset
@immutable
class ResetPasswordResultOk extends ResetPasswordResult {
  const ResetPasswordResultOk();

  static const String constructor = 'resetPasswordResultOk';

  static ResetPasswordResultOk? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ResetPasswordResultOk();
  }

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
