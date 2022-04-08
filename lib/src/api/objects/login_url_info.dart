import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about an inline button of type
/// inlineKeyboardButtonTypeLoginUrl
@immutable
abstract class LoginUrlInfo extends TdObject {
  const LoginUrlInfo();

  static const String constructor = 'loginUrlInfo';

  /// Inherited by:
  /// [LoginUrlInfoOpen]
  /// [LoginUrlInfoRequestConfirmation]
  static LoginUrlInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case LoginUrlInfoOpen.constructor:
        return LoginUrlInfoOpen.fromJson(json);
      case LoginUrlInfoRequestConfirmation.constructor:
        return LoginUrlInfoRequestConfirmation.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
