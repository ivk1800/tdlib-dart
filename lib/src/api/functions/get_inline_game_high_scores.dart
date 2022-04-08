import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns game high scores and some part of the high score table in the
/// range of the specified user; for bots only
/// Returns [GameHighScores]
@immutable
class GetInlineGameHighScores extends TdFunction {
  const GetInlineGameHighScores({
    required this.inlineMessageId,
    required this.userId,
  });

  /// [inlineMessageId] Inline message identifier
  final String inlineMessageId;

  /// [userId] User identifier
  final int userId;

  static const String constructor = 'getInlineGameHighScores';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'inline_message_id': inlineMessageId,
        'user_id': userId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
