import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A button that requests users to be shared by the current user; available
/// only in private chats. Use the method shareUsersWithBot to complete the
/// request
@immutable
class KeyboardButtonTypeRequestUsers extends KeyboardButtonType {
  const KeyboardButtonTypeRequestUsers({
    required this.id,
    required this.restrictUserIsBot,
    required this.userIsBot,
    required this.restrictUserIsPremium,
    required this.userIsPremium,
    required this.maxQuantity,
    required this.requestName,
    required this.requestUsername,
    required this.requestPhoto,
  });

  /// [id] Unique button identifier
  final int id;

  /// [restrictUserIsBot] True, if the shared users must or must not be bots
  final bool restrictUserIsBot;

  /// [userIsBot] True, if the shared users must be bots; otherwise, the shared
  /// users must not be bots. Ignored if restrict_user_is_bot is false
  final bool userIsBot;

  /// [restrictUserIsPremium] True, if the shared users must or must not be
  /// Telegram Premium users
  final bool restrictUserIsPremium;

  /// [userIsPremium] True, if the shared users must be Telegram Premium users;
  /// otherwise, the shared users must not be Telegram Premium users. Ignored if
  /// restrict_user_is_premium is false
  final bool userIsPremium;

  /// [maxQuantity] The maximum number of users to share
  final int maxQuantity;

  /// [requestName] Pass true to request name of the users; bots only
  final bool requestName;

  /// [requestUsername] Pass true to request username of the users; bots only
  final bool requestUsername;

  /// [requestPhoto] Pass true to request photo of the users; bots only
  final bool requestPhoto;

  static const String constructor = 'keyboardButtonTypeRequestUsers';

  static KeyboardButtonTypeRequestUsers? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return KeyboardButtonTypeRequestUsers(
      id: json['id'] as int,
      restrictUserIsBot: json['restrict_user_is_bot'] as bool,
      userIsBot: json['user_is_bot'] as bool,
      restrictUserIsPremium: json['restrict_user_is_premium'] as bool,
      userIsPremium: json['user_is_premium'] as bool,
      maxQuantity: json['max_quantity'] as int,
      requestName: json['request_name'] as bool,
      requestUsername: json['request_username'] as bool,
      requestPhoto: json['request_photo'] as bool,
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
        'max_quantity': maxQuantity,
        'request_name': requestName,
        'request_username': requestUsername,
        'request_photo': requestPhoto,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
