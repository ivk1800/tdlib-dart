import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A detailed statistics about a supergroup chat
class ChatStatisticsSupergroup extends ChatStatistics {
  ChatStatisticsSupergroup(
      {required this.period,
      required this.memberCount,
      required this.messageCount,
      required this.viewerCount,
      required this.senderCount,
      required this.memberCountGraph,
      required this.joinGraph,
      required this.joinBySourceGraph,
      required this.languageGraph,
      required this.messageContentGraph,
      required this.actionGraph,
      required this.dayGraph,
      required this.weekGraph,
      required this.topSenders,
      required this.topAdministrators,
      required this.topInviters});

  /// [period] A period to which the statistics applies
  final DateRange period;

  /// [memberCount] Number of members in the chat
  final StatisticalValue memberCount;

  /// [messageCount] Number of messages sent to the chat
  final StatisticalValue messageCount;

  /// [viewerCount] Number of users who viewed messages in the chat
  final StatisticalValue viewerCount;

  /// [senderCount] Number of users who sent messages to the chat
  final StatisticalValue senderCount;

  /// [memberCountGraph] A graph containing number of members in the chat
  final StatisticalGraph memberCountGraph;

  /// [joinGraph] A graph containing number of members joined and left the chat
  final StatisticalGraph joinGraph;

  /// [joinBySourceGraph] A graph containing number of new member joins per
  /// source
  final StatisticalGraph joinBySourceGraph;

  /// [languageGraph] A graph containing distribution of active users per
  /// language
  final StatisticalGraph languageGraph;

  /// [messageContentGraph] A graph containing distribution of sent messages by
  /// content type
  final StatisticalGraph messageContentGraph;

  /// [actionGraph] A graph containing number of different actions in the chat
  final StatisticalGraph actionGraph;

  /// [dayGraph] A graph containing distribution of message views per hour
  final StatisticalGraph dayGraph;

  /// [weekGraph] A graph containing distribution of message views per day of
  /// week
  final StatisticalGraph weekGraph;

  /// [topSenders] List of users sent most messages in the last week
  final List<ChatStatisticsMessageSenderInfo> topSenders;

  /// [topAdministrators] List of most active administrators in the last week
  final List<ChatStatisticsAdministratorActionsInfo> topAdministrators;

  /// [topInviters] List of most active inviters of new members in the last week
  final List<ChatStatisticsInviterInfo> topInviters;

  static const String CONSTRUCTOR = 'chatStatisticsSupergroup';

  static ChatStatisticsSupergroup? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatStatisticsSupergroup(
        period: DateRange.fromJson(json['period'])!,
        memberCount: StatisticalValue.fromJson(json['member_count'])!,
        messageCount: StatisticalValue.fromJson(json['message_count'])!,
        viewerCount: StatisticalValue.fromJson(json['viewer_count'])!,
        senderCount: StatisticalValue.fromJson(json['sender_count'])!,
        memberCountGraph:
            StatisticalGraph.fromJson(json['member_count_graph'])!,
        joinGraph: StatisticalGraph.fromJson(json['join_graph'])!,
        joinBySourceGraph:
            StatisticalGraph.fromJson(json['join_by_source_graph'])!,
        languageGraph: StatisticalGraph.fromJson(json['language_graph'])!,
        messageContentGraph:
            StatisticalGraph.fromJson(json['message_content_graph'])!,
        actionGraph: StatisticalGraph.fromJson(json['action_graph'])!,
        dayGraph: StatisticalGraph.fromJson(json['day_graph'])!,
        weekGraph: StatisticalGraph.fromJson(json['week_graph'])!,
        topSenders: List<ChatStatisticsMessageSenderInfo>.from(
            (json['top_senders'] ?? [])
                .map((item) => ChatStatisticsMessageSenderInfo.fromJson(item))
                .toList()),
        topAdministrators: List<ChatStatisticsAdministratorActionsInfo>.from(
            (json['top_administrators'] ?? [])
                .map((item) =>
                    ChatStatisticsAdministratorActionsInfo.fromJson(item))
                .toList()),
        topInviters: List<ChatStatisticsInviterInfo>.from(
            (json['top_inviters'] ?? [])
                .map((item) => ChatStatisticsInviterInfo.fromJson(item))
                .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'period': this.period.toJson(),
        'member_count': this.memberCount.toJson(),
        'message_count': this.messageCount.toJson(),
        'viewer_count': this.viewerCount.toJson(),
        'sender_count': this.senderCount.toJson(),
        'member_count_graph': this.memberCountGraph.toJson(),
        'join_graph': this.joinGraph.toJson(),
        'join_by_source_graph': this.joinBySourceGraph.toJson(),
        'language_graph': this.languageGraph.toJson(),
        'message_content_graph': this.messageContentGraph.toJson(),
        'action_graph': this.actionGraph.toJson(),
        'day_graph': this.dayGraph.toJson(),
        'week_graph': this.weekGraph.toJson(),
        'top_senders': topSenders.map((item) => item.toJson()).toList(),
        'top_administrators':
            topAdministrators.map((item) => item.toJson()).toList(),
        'top_inviters': topInviters.map((item) => item.toJson()).toList(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
