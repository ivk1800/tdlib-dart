import '../tdapi.dart';

/// A text shows instead of a raw mention of the user (e.g., when the user has
/// no username)
class TextEntityTypeMentionName extends TextEntityType {
  TextEntityTypeMentionName({required this.userId});

  /// [userId] Identifier of the mentioned user
  final int userId;

  static const String CONSTRUCTOR = 'textEntityTypeMentionName';

  static TextEntityTypeMentionName? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TextEntityTypeMentionName(userId: json['user_id']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'user_id': this.userId, '@type': CONSTRUCTOR};
}
