import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Provides information about the status of a member in a chat
abstract class ChatMemberStatus extends TdObject {
  const ChatMemberStatus();

  static const String CONSTRUCTOR = 'chatMemberStatus';

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

    switch (json["@type"]) {
      case ChatMemberStatusCreator.CONSTRUCTOR:
        return ChatMemberStatusCreator.fromJson(json);
      case ChatMemberStatusAdministrator.CONSTRUCTOR:
        return ChatMemberStatusAdministrator.fromJson(json);
      case ChatMemberStatusMember.CONSTRUCTOR:
        return ChatMemberStatusMember.fromJson(json);
      case ChatMemberStatusRestricted.CONSTRUCTOR:
        return ChatMemberStatusRestricted.fromJson(json);
      case ChatMemberStatusLeft.CONSTRUCTOR:
        return ChatMemberStatusLeft.fromJson(json);
      case ChatMemberStatusBanned.CONSTRUCTOR:
        return ChatMemberStatusBanned.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
