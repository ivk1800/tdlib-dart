import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Email address reset has already been requested. Call
/// resetAuthenticationEmailAddress to check whether immediate reset is
/// possible
@immutable
class EmailAddressResetStatePending extends EmailAddressResetState {
  const EmailAddressResetStatePending({
    required this.resetIn,
  });

  /// [resetIn] Left time before the email address will be reset, in seconds.
  /// updateAuthorizationState is not sent when this field changes
  final int resetIn;

  static const String constructor = 'emailAddressResetStatePending';

  static EmailAddressResetStatePending? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return EmailAddressResetStatePending(
      resetIn: json['reset_in'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'reset_in': resetIn,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
