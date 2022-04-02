import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Describes a poll
class Poll extends TdObject {
  Poll(
      {required this.id,
      required this.question,
      required this.options,
      required this.totalVoterCount,
      required this.recentVoterUserIds,
      required this.isAnonymous,
      required this.type,
      required this.openPeriod,
      required this.closeDate,
      required this.isClosed});

  /// [id] Unique poll identifier
  final int id;

  /// [question] Poll question; 1-300 characters
  final String question;

  /// [options] List of poll answer options
  final List<PollOption> options;

  /// [totalVoterCount] Total number of voters, participating in the poll
  final int totalVoterCount;

  /// [recentVoterUserIds] User identifiers of recent voters, if the poll is
  /// non-anonymous
  final List<int> recentVoterUserIds;

  /// [isAnonymous] True, if the poll is anonymous
  final bool isAnonymous;

  /// [type] Type of the poll
  final PollType type;

  /// [openPeriod] Amount of time the poll will be active after creation, in
  /// seconds
  final int openPeriod;

  /// [closeDate] Point in time (Unix timestamp) when the poll will
  /// automatically be closed
  final int closeDate;

  /// [isClosed] True, if the poll is closed
  final bool isClosed;

  static const String CONSTRUCTOR = 'poll';

  static Poll? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Poll(
        id: int.tryParse(json['id']) ?? 0,
        question: json['question'],
        options: List<PollOption>.from((json['options'] ?? [])
            .map((item) => PollOption.fromJson(item))
            .toList()),
        totalVoterCount: json['total_voter_count'],
        recentVoterUserIds: List<int>.from(
            (json['recent_voter_user_ids'] ?? []).map((item) => item).toList()),
        isAnonymous: json['is_anonymous'],
        type: PollType.fromJson(json['type'])!,
        openPeriod: json['open_period'],
        closeDate: json['close_date'],
        isClosed: json['is_closed']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'id': this.id,
        'question': this.question,
        'options': options.map((item) => item.toJson()).toList(),
        'total_voter_count': this.totalVoterCount,
        'recent_voter_user_ids':
            recentVoterUserIds.map((item) => item).toList(),
        'is_anonymous': this.isAnonymous,
        'type': this.type.toJson(),
        'open_period': this.openPeriod,
        'close_date': this.closeDate,
        'is_closed': this.isClosed,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
