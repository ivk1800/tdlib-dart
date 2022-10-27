import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes the login email address of the user. The change will not be
/// applied until the new login email address is confirmed with
/// `checkLoginEmailAddressCode`. To use Apple ID/Google ID instead of a email
/// address, call `checkLoginEmailAddressCode` directly
/// Returns [EmailAddressAuthenticationCodeInfo]
@immutable
class SetLoginEmailAddress extends TdFunction {
  const SetLoginEmailAddress({
    required this.newLoginEmailAddress,
  });

  /// [newLoginEmailAddress] New login email address
  final String newLoginEmailAddress;

  static const String constructor = 'setLoginEmailAddress';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'new_login_email_address': newLoginEmailAddress,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
