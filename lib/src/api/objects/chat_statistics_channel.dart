import '../tdapi.dart';

/// A detailed statistics about a channel chat
class ChatStatisticsChannel extends ChatStatistics {
  ChatStatisticsChannel(
      {required this.period,
      required this.memberCount,
      required this.meanViewCount,
      required this.meanShareCount,
      required this.enabledNotificationsPercentage,
      required this.memberCountGraph,
      required this.joinGraph,
      required this.muteGraph,
      required this.viewCountByHourGraph,
      required this.viewCountBySourceGraph,
      required this.joinBySourceGraph,
      required this.languageGraph,
      required this.messageInteractionGraph,
      required this.instantViewInteractionGraph,
      required this.recentMessageInteractions});

  /// [period] A period to which the statistics applies
  final DateRange period;

  /// [memberCount] Number of members in the chat
  final StatisticalValue memberCount;

  /// [meanViewCount] Mean number of times the recently sent messages was viewed
  final StatisticalValue meanViewCount;

  /// [meanShareCount] Mean number of times the recently sent messages was
  /// shared
  final StatisticalValue meanShareCount;

  /// [enabledNotificationsPercentage] A percentage of users with enabled
  /// notifications for the chat
  final double enabledNotificationsPercentage;

  /// [memberCountGraph] A graph containing number of members in the chat
  final StatisticalGraph memberCountGraph;

  /// [joinGraph] A graph containing number of members joined and left the chat
  final StatisticalGraph joinGraph;

  /// [muteGraph] A graph containing number of members muted and unmuted the
  /// chat
  final StatisticalGraph muteGraph;

  /// [viewCountByHourGraph] A graph containing number of message views in a
  /// given hour in the last two weeks
  final StatisticalGraph viewCountByHourGraph;

  /// [viewCountBySourceGraph] A graph containing number of message views per
  /// source
  final StatisticalGraph viewCountBySourceGraph;

  /// [joinBySourceGraph] A graph containing number of new member joins per
  /// source
  final StatisticalGraph joinBySourceGraph;

  /// [languageGraph] A graph containing number of users viewed chat messages
  /// per language
  final StatisticalGraph languageGraph;

  /// [messageInteractionGraph] A graph containing number of chat message views
  /// and shares
  final StatisticalGraph messageInteractionGraph;

  /// [instantViewInteractionGraph] A graph containing number of views of
  /// associated with the chat instant views
  final StatisticalGraph instantViewInteractionGraph;

  /// [recentMessageInteractions] Detailed statistics about number of views and
  /// shares of recently sent messages
  final List<ChatStatisticsMessageInteractionInfo> recentMessageInteractions;

  static const String CONSTRUCTOR = 'chatStatisticsChannel';

  static ChatStatisticsChannel? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatStatisticsChannel(
        period: DateRange.fromJson(json['period'])!,
        memberCount: StatisticalValue.fromJson(json['member_count'])!,
        meanViewCount: StatisticalValue.fromJson(json['mean_view_count'])!,
        meanShareCount: StatisticalValue.fromJson(json['mean_share_count'])!,
        enabledNotificationsPercentage:
            json['enabled_notifications_percentage'],
        memberCountGraph:
            StatisticalGraph.fromJson(json['member_count_graph'])!,
        joinGraph: StatisticalGraph.fromJson(json['join_graph'])!,
        muteGraph: StatisticalGraph.fromJson(json['mute_graph'])!,
        viewCountByHourGraph:
            StatisticalGraph.fromJson(json['view_count_by_hour_graph'])!,
        viewCountBySourceGraph:
            StatisticalGraph.fromJson(json['view_count_by_source_graph'])!,
        joinBySourceGraph:
            StatisticalGraph.fromJson(json['join_by_source_graph'])!,
        languageGraph: StatisticalGraph.fromJson(json['language_graph'])!,
        messageInteractionGraph:
            StatisticalGraph.fromJson(json['message_interaction_graph'])!,
        instantViewInteractionGraph:
            StatisticalGraph.fromJson(json['instant_view_interaction_graph'])!,
        recentMessageInteractions:
            List<ChatStatisticsMessageInteractionInfo>.from(
                (json['recent_message_interactions'] ?? [])
                    .map((item) =>
                        ChatStatisticsMessageInteractionInfo.fromJson(item))
                    .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'period': this.period.toJson(),
        'member_count': this.memberCount.toJson(),
        'mean_view_count': this.meanViewCount.toJson(),
        'mean_share_count': this.meanShareCount.toJson(),
        'enabled_notifications_percentage': this.enabledNotificationsPercentage,
        'member_count_graph': this.memberCountGraph.toJson(),
        'join_graph': this.joinGraph.toJson(),
        'mute_graph': this.muteGraph.toJson(),
        'view_count_by_hour_graph': this.viewCountByHourGraph.toJson(),
        'view_count_by_source_graph': this.viewCountBySourceGraph.toJson(),
        'join_by_source_graph': this.joinBySourceGraph.toJson(),
        'language_graph': this.languageGraph.toJson(),
        'message_interaction_graph': this.messageInteractionGraph.toJson(),
        'instant_view_interaction_graph':
            this.instantViewInteractionGraph.toJson(),
        'recent_message_interactions':
            recentMessageInteractions.map((item) => item.toJson()).toList(),
        '@type': CONSTRUCTOR
      };
}
