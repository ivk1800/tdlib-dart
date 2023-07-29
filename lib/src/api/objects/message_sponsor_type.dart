import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes type of a message sponsor
@immutable
abstract class MessageSponsorType extends TdObject {
  const MessageSponsorType();

  static const String constructor = 'messageSponsorType';

  /// Inherited by:
  /// [MessageSponsorTypeBot]
  /// [MessageSponsorTypePrivateChannel]
  /// [MessageSponsorTypePublicChannel]
  /// [MessageSponsorTypeWebsite]
  static MessageSponsorType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case MessageSponsorTypeBot.constructor:
        return MessageSponsorTypeBot.fromJson(json);
      case MessageSponsorTypePrivateChannel.constructor:
        return MessageSponsorTypePrivateChannel.fromJson(json);
      case MessageSponsorTypePublicChannel.constructor:
        return MessageSponsorTypePublicChannel.fromJson(json);
      case MessageSponsorTypeWebsite.constructor:
        return MessageSponsorTypeWebsite.fromJson(json);
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
