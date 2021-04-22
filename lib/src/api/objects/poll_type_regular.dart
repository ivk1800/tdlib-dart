import '../tdapi.dart';

/// A regular poll
class PollTypeRegular extends PollType {
  PollTypeRegular({required this.allowMultipleAnswers});

  /// [allowMultipleAnswers] True, if multiple answer options can be chosen
  /// simultaneously
  final bool allowMultipleAnswers;

  static const String CONSTRUCTOR = 'pollTypeRegular';

  static PollTypeRegular? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PollTypeRegular(
        allowMultipleAnswers: json['allow_multiple_answers']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'allow_multiple_answers': this.allowMultipleAnswers,
        '@type': CONSTRUCTOR
      };
}
