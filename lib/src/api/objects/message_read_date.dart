import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes read date of a recent outgoing message in a private chat
@immutable
abstract class MessageReadDate extends TdObject {
  const MessageReadDate();

  static const String constructor = 'messageReadDate';

  /// Inherited by:
  /// [MessageReadDateMyPrivacyRestricted]
  /// [MessageReadDateRead]
  /// [MessageReadDateTooOld]
  /// [MessageReadDateUnread]
  /// [MessageReadDateUserPrivacyRestricted]
  static MessageReadDate? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case MessageReadDateMyPrivacyRestricted.constructor:
        return MessageReadDateMyPrivacyRestricted.fromJson(json);
      case MessageReadDateRead.constructor:
        return MessageReadDateRead.fromJson(json);
      case MessageReadDateTooOld.constructor:
        return MessageReadDateTooOld.fromJson(json);
      case MessageReadDateUnread.constructor:
        return MessageReadDateUnread.fromJson(json);
      case MessageReadDateUserPrivacyRestricted.constructor:
        return MessageReadDateUserPrivacyRestricted.fromJson(json);
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
