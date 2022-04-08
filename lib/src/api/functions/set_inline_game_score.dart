import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Updates the game score of the specified user in a game; for bots only
/// Returns [Ok]
@immutable
class SetInlineGameScore extends TdFunction {
  const SetInlineGameScore({
    required this.inlineMessageId,
    required this.editMessage,
    required this.userId,
    required this.score,
    required this.force,
  });

  /// [inlineMessageId] Inline message identifier
  final String inlineMessageId;

  /// [editMessage] True, if the message needs to be edited
  final bool editMessage;

  /// [userId] User identifier
  final int userId;

  /// [score] The new score
  final int score;

  /// [force] Pass true to update the score even if it decreases. If the score
  /// is 0, the user will be deleted from the high score table
  final bool force;

  static const String constructor = 'setInlineGameScore';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'inline_message_id': inlineMessageId,
        'edit_message': editMessage,
        'user_id': userId,
        'score': score,
        'force': force,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
