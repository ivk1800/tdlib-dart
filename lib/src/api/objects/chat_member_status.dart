import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Provides information about the status of a member in a chat
@immutable
abstract class ChatMemberStatus extends TdObject {
  const ChatMemberStatus();

  static const String constructor = 'chatMemberStatus';

  /// Inherited by:
  /// [ChatMemberStatusCreator]
  /// [ChatMemberStatusAdministrator]
  /// [ChatMemberStatusMember]
  /// [ChatMemberStatusRestricted]
  /// [ChatMemberStatusLeft]
  /// [ChatMemberStatusBanned]
  static ChatMemberStatus? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case ChatMemberStatusCreator.constructor:
        return ChatMemberStatusCreator.fromJson(json);
      case ChatMemberStatusAdministrator.constructor:
        return ChatMemberStatusAdministrator.fromJson(json);
      case ChatMemberStatusMember.constructor:
        return ChatMemberStatusMember.fromJson(json);
      case ChatMemberStatusRestricted.constructor:
        return ChatMemberStatusRestricted.fromJson(json);
      case ChatMemberStatusLeft.constructor:
        return ChatMemberStatusLeft.fromJson(json);
      case ChatMemberStatusBanned.constructor:
        return ChatMemberStatusBanned.fromJson(json);
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
