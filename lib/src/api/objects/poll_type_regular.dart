import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A regular poll
@immutable
class PollTypeRegular extends PollType {
  const PollTypeRegular({
    required this.allowMultipleAnswers,
  });

  /// [allowMultipleAnswers] True, if multiple answer options can be chosen
  /// simultaneously
  final bool allowMultipleAnswers;

  static const String constructor = 'pollTypeRegular';

  static PollTypeRegular? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PollTypeRegular(
      allowMultipleAnswers: json['allow_multiple_answers'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'allow_multiple_answers': allowMultipleAnswers,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
