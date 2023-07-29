import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes the phone number of the user and sends an authentication code to
/// the user's new phone number; for official Android and iOS applications
/// only. On success, returns information about the sent code
/// Returns [AuthenticationCodeInfo]
@immutable
class ChangePhoneNumber extends TdFunction {
  const ChangePhoneNumber({
    required this.phoneNumber,
    this.settings,
  });

  /// [phoneNumber] The new phone number of the user in international format
  final String phoneNumber;

  /// [settings] Settings for the authentication of the user's phone number;
  /// pass null to use default settings
  final PhoneNumberAuthenticationSettings? settings;

  static const String constructor = 'changePhoneNumber';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'phone_number': phoneNumber,
        'settings': settings?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
