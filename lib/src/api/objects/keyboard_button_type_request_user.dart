import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A button that requests a user to be shared by the current user; available
/// only in private chats. Use the method shareUserWithBot to complete the
/// request
@immutable
class KeyboardButtonTypeRequestUser extends KeyboardButtonType {
  const KeyboardButtonTypeRequestUser({
    required this.id,
    required this.restrictUserIsBot,
    required this.userIsBot,
    required this.restrictUserIsPremium,
    required this.userIsPremium,
  });

  /// [id] Unique button identifier
  final int id;

  /// [restrictUserIsBot] True, if the shared user must or must not be a bot
  final bool restrictUserIsBot;

  /// [userIsBot] True, if the shared user must be a bot; otherwise, the shared
  /// user must no be a bot. Ignored if restrict_user_is_bot is false
  final bool userIsBot;

  /// [restrictUserIsPremium] True, if the shared user must or must not be a
  /// Telegram Premium user
  final bool restrictUserIsPremium;

  /// [userIsPremium] True, if the shared user must be a Telegram Premium user;
  /// otherwise, the shared user must no be a Telegram Premium user. Ignored if
  /// restrict_user_is_premium is false
  final bool userIsPremium;

  static const String constructor = 'keyboardButtonTypeRequestUser';

  static KeyboardButtonTypeRequestUser? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return KeyboardButtonTypeRequestUser(
      id: json['id'] as int,
      restrictUserIsBot: json['restrict_user_is_bot'] as bool,
      userIsBot: json['user_is_bot'] as bool,
      restrictUserIsPremium: json['restrict_user_is_premium'] as bool,
      userIsPremium: json['user_is_premium'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'restrict_user_is_bot': restrictUserIsBot,
        'user_is_bot': userIsBot,
        'restrict_user_is_premium': restrictUserIsPremium,
        'user_is_premium': userIsPremium,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
