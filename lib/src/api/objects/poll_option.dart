import '../tdapi.dart';

/// Describes one answer option of a poll
class PollOption extends TdObject {
  PollOption(
      {required this.text,
      required this.voterCount,
      required this.votePercentage,
      required this.isChosen,
      required this.isBeingChosen});

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

  static const String CONSTRUCTOR = 'pollOption';

  static PollOption? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PollOption(
        text: json['text'],
        voterCount: json['voter_count'],
        votePercentage: json['vote_percentage'],
        isChosen: json['is_chosen'],
        isBeingChosen: json['is_being_chosen']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'text': this.text,
        'voter_count': this.voterCount,
        'vote_percentage': this.votePercentage,
        'is_chosen': this.isChosen,
        'is_being_chosen': this.isBeingChosen,
        '@type': CONSTRUCTOR
      };
}
