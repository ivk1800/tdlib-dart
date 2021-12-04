import '../tdapi.dart';

/// The password was reset
class ResetPasswordResultOk extends ResetPasswordResult {
  const ResetPasswordResultOk();

  static const String CONSTRUCTOR = 'resetPasswordResultOk';

  static ResetPasswordResultOk? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ResetPasswordResultOk();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
