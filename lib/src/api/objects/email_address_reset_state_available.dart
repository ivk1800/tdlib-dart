import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Email address can be reset after the given period. Call
/// resetAuthenticationEmailAddress to reset it and allow the user to
/// authorize with a code sent to the user's phone number
@immutable
class EmailAddressResetStateAvailable extends EmailAddressResetState {
  const EmailAddressResetStateAvailable({
    required this.waitPeriod,
  });

  /// [waitPeriod] Time required to wait before the email address can be reset;
  /// 0 if the user is subscribed to Telegram Premium
  final int waitPeriod;

  static const String constructor = 'emailAddressResetStateAvailable';

  static EmailAddressResetStateAvailable? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return EmailAddressResetStateAvailable(
      waitPeriod: json['wait_period'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'wait_period': waitPeriod,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
