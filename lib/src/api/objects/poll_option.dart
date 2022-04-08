import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes one answer option of a poll
@immutable
class PollOption extends TdObject {
  const PollOption({
    required this.text,
    required this.voterCount,
    required this.votePercentage,
    required this.isChosen,
    required this.isBeingChosen,
  });

  /// [text] Option text; 1-100 characters
  final String text;

  /// [voterCount] Number of voters for this option, available only for closed
  /// or voted polls
  final int voterCount;

  /// [votePercentage] The percentage of votes for this option; 0-100
  final int votePercentage;

  /// [isChosen] True, if the option was chosen by the user
  final bool isChosen;

  /// [isBeingChosen] True, if the option is being chosen by a pending
  /// setPollAnswer request
  final bool isBeingChosen;

  static const String constructor = 'pollOption';

  static PollOption? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PollOption(
      text: json['text'],
      voterCount: json['voter_count'],
      votePercentage: json['vote_percentage'],
      isChosen: json['is_chosen'],
      isBeingChosen: json['is_being_chosen'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'text': text,
        'voter_count': voterCount,
        'vote_percentage': votePercentage,
        'is_chosen': isChosen,
        'is_being_chosen': isBeingChosen,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
