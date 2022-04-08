import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A text shows instead of a raw mention of the user (e.g., when the user has
/// no username)
@immutable
class TextEntityTypeMentionName extends TextEntityType {
  const TextEntityTypeMentionName({
    required this.userId,
  });

  /// [userId] Identifier of the mentioned user
  final int userId;

  static const String constructor = 'textEntityTypeMentionName';

  static TextEntityTypeMentionName? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TextEntityTypeMentionName(
      userId: json['user_id'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_id': userId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
