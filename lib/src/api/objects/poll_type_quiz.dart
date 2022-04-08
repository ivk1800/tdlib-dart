import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A poll in quiz mode, which has exactly one correct answer option and can
/// be answered only once
@immutable
class PollTypeQuiz extends PollType {
  const PollTypeQuiz({
    required this.correctOptionId,
    required this.explanation,
  });

  /// [correctOptionId] 0-based identifier of the correct answer option; -1 for
  /// a yet unanswered poll
  final int correctOptionId;

  /// [explanation] Text that is shown when the user chooses an incorrect answer
  /// or taps on the lamp icon; 0-200 characters with at most 2 line feeds;
  /// empty for a yet unanswered poll
  final FormattedText explanation;

  static const String constructor = 'pollTypeQuiz';

  static PollTypeQuiz? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PollTypeQuiz(
      correctOptionId: json['correct_option_id'],
      explanation: FormattedText.fromJson(json['explanation'])!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'correct_option_id': correctOptionId,
        'explanation': explanation.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
