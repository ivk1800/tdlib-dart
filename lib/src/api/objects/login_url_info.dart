import '../tdapi.dart';

/// Contains information about an inline button of type
/// inlineKeyboardButtonTypeLoginUrl
abstract class LoginUrlInfo extends TdObject {
  const LoginUrlInfo();

  static const String CONSTRUCTOR = 'loginUrlInfo';

  /// Inherited by:
  /// [LoginUrlInfoOpen]
  /// [LoginUrlInfoRequestConfirmation]
  static LoginUrlInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json["@type"]) {
      case LoginUrlInfoOpen.CONSTRUCTOR:
        return LoginUrlInfoOpen.fromJson(json);
      case LoginUrlInfoRequestConfirmation.CONSTRUCTOR:
        return LoginUrlInfoRequestConfirmation.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => CONSTRUCTOR;
}
