import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A button with a user reference to be handled in the same way as
/// textEntityTypeMentionName entities
class InlineKeyboardButtonTypeUser extends InlineKeyboardButtonType {
  InlineKeyboardButtonTypeUser({required this.userId});

  /// [userId] User identifier
  final int userId;

  static const String CONSTRUCTOR = 'inlineKeyboardButtonTypeUser';

  static InlineKeyboardButtonTypeUser? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InlineKeyboardButtonTypeUser(userId: json['user_id']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'user_id': this.userId, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
