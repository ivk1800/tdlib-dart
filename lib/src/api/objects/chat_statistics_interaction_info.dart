import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains statistics about interactions with a message sent in the chat or
/// a story sent by the chat
@immutable
class ChatStatisticsInteractionInfo extends TdObject {
  const ChatStatisticsInteractionInfo({
    required this.objectType,
    required this.viewCount,
    required this.forwardCount,
    required this.reactionCount,
  });

  /// [objectType] Type of the object
  final ChatStatisticsObjectType objectType;

  /// [viewCount] Number of times the object was viewed
  final int viewCount;

  /// [forwardCount] Number of times the object was forwarded
  final int forwardCount;

  /// [reactionCount] Number of times reactions were added to the object
  final int reactionCount;

  static const String constructor = 'chatStatisticsInteractionInfo';

  static ChatStatisticsInteractionInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatStatisticsInteractionInfo(
      objectType: ChatStatisticsObjectType.fromJson(
          json['object_type'] as Map<String, dynamic>?)!,
      viewCount: json['view_count'] as int,
      forwardCount: json['forward_count'] as int,
      reactionCount: json['reaction_count'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'object_type': objectType.toJson(),
        'view_count': viewCount,
        'forward_count': forwardCount,
        'reaction_count': reactionCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
