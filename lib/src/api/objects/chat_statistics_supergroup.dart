import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A detailed statistics about a supergroup chat
@immutable
class ChatStatisticsSupergroup extends ChatStatistics {
  const ChatStatisticsSupergroup({
    required this.period,
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
    required this.topInviters,
  });

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

  static const String constructor = 'chatStatisticsSupergroup';

  static ChatStatisticsSupergroup? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatStatisticsSupergroup(
      period: DateRange.fromJson(json['period'] as Map<String, dynamic>?)!,
      memberCount: StatisticalValue.fromJson(
          json['member_count'] as Map<String, dynamic>?)!,
      messageCount: StatisticalValue.fromJson(
          json['message_count'] as Map<String, dynamic>?)!,
      viewerCount: StatisticalValue.fromJson(
          json['viewer_count'] as Map<String, dynamic>?)!,
      senderCount: StatisticalValue.fromJson(
          json['sender_count'] as Map<String, dynamic>?)!,
      memberCountGraph: StatisticalGraph.fromJson(
          json['member_count_graph'] as Map<String, dynamic>?)!,
      joinGraph: StatisticalGraph.fromJson(
          json['join_graph'] as Map<String, dynamic>?)!,
      joinBySourceGraph: StatisticalGraph.fromJson(
          json['join_by_source_graph'] as Map<String, dynamic>?)!,
      languageGraph: StatisticalGraph.fromJson(
          json['language_graph'] as Map<String, dynamic>?)!,
      messageContentGraph: StatisticalGraph.fromJson(
          json['message_content_graph'] as Map<String, dynamic>?)!,
      actionGraph: StatisticalGraph.fromJson(
          json['action_graph'] as Map<String, dynamic>?)!,
      dayGraph: StatisticalGraph.fromJson(
          json['day_graph'] as Map<String, dynamic>?)!,
      weekGraph: StatisticalGraph.fromJson(
          json['week_graph'] as Map<String, dynamic>?)!,
      topSenders: List<ChatStatisticsMessageSenderInfo>.from(
          ((json['top_senders'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => ChatStatisticsMessageSenderInfo.fromJson(item))
              .toList()),
      topAdministrators: List<ChatStatisticsAdministratorActionsInfo>.from(
          ((json['top_administrators'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) =>
                  ChatStatisticsAdministratorActionsInfo.fromJson(item))
              .toList()),
      topInviters: List<ChatStatisticsInviterInfo>.from(
          ((json['top_inviters'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => ChatStatisticsInviterInfo.fromJson(item))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'period': period.toJson(),
        'member_count': memberCount.toJson(),
        'message_count': messageCount.toJson(),
        'viewer_count': viewerCount.toJson(),
        'sender_count': senderCount.toJson(),
        'member_count_graph': memberCountGraph.toJson(),
        'join_graph': joinGraph.toJson(),
        'join_by_source_graph': joinBySourceGraph.toJson(),
        'language_graph': languageGraph.toJson(),
        'message_content_graph': messageContentGraph.toJson(),
        'action_graph': actionGraph.toJson(),
        'day_graph': dayGraph.toJson(),
        'week_graph': weekGraph.toJson(),
        'top_senders': topSenders.map((item) => item.toJson()).toList(),
        'top_administrators':
            topAdministrators.map((item) => item.toJson()).toList(),
        'top_inviters': topInviters.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
