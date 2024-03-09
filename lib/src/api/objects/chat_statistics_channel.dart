import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A detailed statistics about a channel chat
@immutable
class ChatStatisticsChannel extends ChatStatistics {
  const ChatStatisticsChannel({
    required this.period,
    required this.memberCount,
    required this.meanMessageViewCount,
    required this.meanMessageShareCount,
    required this.meanMessageReactionCount,
    required this.meanStoryViewCount,
    required this.meanStoryShareCount,
    required this.meanStoryReactionCount,
    required this.enabledNotificationsPercentage,
    required this.memberCountGraph,
    required this.joinGraph,
    required this.muteGraph,
    required this.viewCountByHourGraph,
    required this.viewCountBySourceGraph,
    required this.joinBySourceGraph,
    required this.languageGraph,
    required this.messageInteractionGraph,
    required this.messageReactionGraph,
    required this.storyInteractionGraph,
    required this.storyReactionGraph,
    required this.instantViewInteractionGraph,
    required this.recentInteractions,
  });

  /// [period] A period to which the statistics applies
  final DateRange period;

  /// [memberCount] Number of members in the chat
  final StatisticalValue memberCount;

  /// [meanMessageViewCount] Mean number of times the recently sent messages
  /// were viewed
  final StatisticalValue meanMessageViewCount;

  /// [meanMessageShareCount] Mean number of times the recently sent messages
  /// were shared
  final StatisticalValue meanMessageShareCount;

  /// [meanMessageReactionCount] Mean number of times reactions were added to
  /// the recently sent messages
  final StatisticalValue meanMessageReactionCount;

  /// [meanStoryViewCount] Mean number of times the recently sent stories were
  /// viewed
  final StatisticalValue meanStoryViewCount;

  /// [meanStoryShareCount] Mean number of times the recently sent stories were
  /// shared
  final StatisticalValue meanStoryShareCount;

  /// [meanStoryReactionCount] Mean number of times reactions were added to the
  /// recently sent stories
  final StatisticalValue meanStoryReactionCount;

  /// [enabledNotificationsPercentage] A percentage of users with enabled
  /// notifications for the chat; 0-100
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

  /// [messageReactionGraph] A graph containing number of reactions on messages
  final StatisticalGraph messageReactionGraph;

  /// [storyInteractionGraph] A graph containing number of story views and
  /// shares
  final StatisticalGraph storyInteractionGraph;

  /// [storyReactionGraph] A graph containing number of reactions on stories
  final StatisticalGraph storyReactionGraph;

  /// [instantViewInteractionGraph] A graph containing number of views of
  /// associated with the chat instant views
  final StatisticalGraph instantViewInteractionGraph;

  /// [recentInteractions] Detailed statistics about number of views and shares
  /// of recently sent messages and stories
  final List<ChatStatisticsInteractionInfo> recentInteractions;

  static const String constructor = 'chatStatisticsChannel';

  static ChatStatisticsChannel? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatStatisticsChannel(
      period: DateRange.fromJson(json['period'] as Map<String, dynamic>?)!,
      memberCount: StatisticalValue.fromJson(
          json['member_count'] as Map<String, dynamic>?)!,
      meanMessageViewCount: StatisticalValue.fromJson(
          json['mean_message_view_count'] as Map<String, dynamic>?)!,
      meanMessageShareCount: StatisticalValue.fromJson(
          json['mean_message_share_count'] as Map<String, dynamic>?)!,
      meanMessageReactionCount: StatisticalValue.fromJson(
          json['mean_message_reaction_count'] as Map<String, dynamic>?)!,
      meanStoryViewCount: StatisticalValue.fromJson(
          json['mean_story_view_count'] as Map<String, dynamic>?)!,
      meanStoryShareCount: StatisticalValue.fromJson(
          json['mean_story_share_count'] as Map<String, dynamic>?)!,
      meanStoryReactionCount: StatisticalValue.fromJson(
          json['mean_story_reaction_count'] as Map<String, dynamic>?)!,
      enabledNotificationsPercentage:
          (json['enabled_notifications_percentage'] as num).toDouble(),
      memberCountGraph: StatisticalGraph.fromJson(
          json['member_count_graph'] as Map<String, dynamic>?)!,
      joinGraph: StatisticalGraph.fromJson(
          json['join_graph'] as Map<String, dynamic>?)!,
      muteGraph: StatisticalGraph.fromJson(
          json['mute_graph'] as Map<String, dynamic>?)!,
      viewCountByHourGraph: StatisticalGraph.fromJson(
          json['view_count_by_hour_graph'] as Map<String, dynamic>?)!,
      viewCountBySourceGraph: StatisticalGraph.fromJson(
          json['view_count_by_source_graph'] as Map<String, dynamic>?)!,
      joinBySourceGraph: StatisticalGraph.fromJson(
          json['join_by_source_graph'] as Map<String, dynamic>?)!,
      languageGraph: StatisticalGraph.fromJson(
          json['language_graph'] as Map<String, dynamic>?)!,
      messageInteractionGraph: StatisticalGraph.fromJson(
          json['message_interaction_graph'] as Map<String, dynamic>?)!,
      messageReactionGraph: StatisticalGraph.fromJson(
          json['message_reaction_graph'] as Map<String, dynamic>?)!,
      storyInteractionGraph: StatisticalGraph.fromJson(
          json['story_interaction_graph'] as Map<String, dynamic>?)!,
      storyReactionGraph: StatisticalGraph.fromJson(
          json['story_reaction_graph'] as Map<String, dynamic>?)!,
      instantViewInteractionGraph: StatisticalGraph.fromJson(
          json['instant_view_interaction_graph'] as Map<String, dynamic>?)!,
      recentInteractions: List<ChatStatisticsInteractionInfo>.from(
          ((json['recent_interactions'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => ChatStatisticsInteractionInfo.fromJson(item))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'period': period.toJson(),
        'member_count': memberCount.toJson(),
        'mean_message_view_count': meanMessageViewCount.toJson(),
        'mean_message_share_count': meanMessageShareCount.toJson(),
        'mean_message_reaction_count': meanMessageReactionCount.toJson(),
        'mean_story_view_count': meanStoryViewCount.toJson(),
        'mean_story_share_count': meanStoryShareCount.toJson(),
        'mean_story_reaction_count': meanStoryReactionCount.toJson(),
        'enabled_notifications_percentage': enabledNotificationsPercentage,
        'member_count_graph': memberCountGraph.toJson(),
        'join_graph': joinGraph.toJson(),
        'mute_graph': muteGraph.toJson(),
        'view_count_by_hour_graph': viewCountByHourGraph.toJson(),
        'view_count_by_source_graph': viewCountBySourceGraph.toJson(),
        'join_by_source_graph': joinBySourceGraph.toJson(),
        'language_graph': languageGraph.toJson(),
        'message_interaction_graph': messageInteractionGraph.toJson(),
        'message_reaction_graph': messageReactionGraph.toJson(),
        'story_interaction_graph': storyInteractionGraph.toJson(),
        'story_reaction_graph': storyReactionGraph.toJson(),
        'instant_view_interaction_graph': instantViewInteractionGraph.toJson(),
        'recent_interactions':
            recentInteractions.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
