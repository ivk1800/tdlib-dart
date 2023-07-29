import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a sponsored message
@immutable
class SponsoredMessage extends TdObject {
  const SponsoredMessage({
    required this.messageId,
    required this.isRecommended,
    required this.content,
    required this.sponsor,
    required this.additionalInfo,
  });

  /// [messageId] Message identifier; unique for the chat to which the sponsored
  /// message belongs among both ordinary and sponsored messages
  final int messageId;

  /// [isRecommended] True, if the message needs to be labeled as "recommended"
  /// instead of "sponsored"
  final bool isRecommended;

  /// [content] Content of the message. Currently, can be only of the type
  /// messageText
  final MessageContent content;

  /// [sponsor] Information about the sponsor of the message
  final MessageSponsor sponsor;

  /// [additionalInfo] If non-empty, additional information about the sponsored
  /// message to be shown along with the message
  final String additionalInfo;

  static const String constructor = 'sponsoredMessage';

  static SponsoredMessage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SponsoredMessage(
      messageId: json['message_id'] as int,
      isRecommended: json['is_recommended'] as bool,
      content:
          MessageContent.fromJson(json['content'] as Map<String, dynamic>?)!,
      sponsor:
          MessageSponsor.fromJson(json['sponsor'] as Map<String, dynamic>?)!,
      additionalInfo: json['additional_info'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'message_id': messageId,
        'is_recommended': isRecommended,
        'content': content.toJson(),
        'sponsor': sponsor.toJson(),
        'additional_info': additionalInfo,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
