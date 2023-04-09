import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes source of a message
@immutable
abstract class MessageSource extends TdObject {
  const MessageSource();

  static const String constructor = 'messageSource';

  /// Inherited by:
  /// [MessageSourceChatEventLog]
  /// [MessageSourceChatHistory]
  /// [MessageSourceChatList]
  /// [MessageSourceForumTopicHistory]
  /// [MessageSourceHistoryPreview]
  /// [MessageSourceMessageThreadHistory]
  /// [MessageSourceNotification]
  /// [MessageSourceOther]
  /// [MessageSourceSearch]
  static MessageSource? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case MessageSourceChatEventLog.constructor:
        return MessageSourceChatEventLog.fromJson(json);
      case MessageSourceChatHistory.constructor:
        return MessageSourceChatHistory.fromJson(json);
      case MessageSourceChatList.constructor:
        return MessageSourceChatList.fromJson(json);
      case MessageSourceForumTopicHistory.constructor:
        return MessageSourceForumTopicHistory.fromJson(json);
      case MessageSourceHistoryPreview.constructor:
        return MessageSourceHistoryPreview.fromJson(json);
      case MessageSourceMessageThreadHistory.constructor:
        return MessageSourceMessageThreadHistory.fromJson(json);
      case MessageSourceNotification.constructor:
        return MessageSourceNotification.fromJson(json);
      case MessageSourceOther.constructor:
        return MessageSourceOther.fromJson(json);
      case MessageSourceSearch.constructor:
        return MessageSourceSearch.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
