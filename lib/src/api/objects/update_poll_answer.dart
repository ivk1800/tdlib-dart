import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A user changed the answer to a poll; for bots only
class UpdatePollAnswer extends Update {
  UpdatePollAnswer(
      {required this.pollId, required this.userId, required this.optionIds});

  /// [pollId] Unique poll identifier
  final int pollId;

  /// [userId] The user, who changed the answer to the poll
  final int userId;

  /// [optionIds] 0-based identifiers of answer options, chosen by the user
  final List<int> optionIds;

  static const String CONSTRUCTOR = 'updatePollAnswer';

  static UpdatePollAnswer? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdatePollAnswer(
        pollId: int.tryParse(json['poll_id']) ?? 0,
        userId: json['user_id'],
        optionIds: List<int>.from(
            (json['option_ids'] ?? []).map((item) => item).toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'poll_id': this.pollId,
        'user_id': this.userId,
        'option_ids': optionIds.map((item) => item).toList(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
