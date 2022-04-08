import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a reason why an external chat is shown in a chat list
@immutable
abstract class ChatSource extends TdObject {
  const ChatSource();

  static const String constructor = 'chatSource';

  /// Inherited by:
  /// [ChatSourceMtprotoProxy]
  /// [ChatSourcePublicServiceAnnouncement]
  static ChatSource? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case ChatSourceMtprotoProxy.constructor:
        return ChatSourceMtprotoProxy.fromJson(json);
      case ChatSourcePublicServiceAnnouncement.constructor:
        return ChatSourcePublicServiceAnnouncement.fromJson(json);
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
