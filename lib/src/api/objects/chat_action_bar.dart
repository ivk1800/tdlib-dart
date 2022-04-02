import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Describes actions which must be possible to do through a chat action bar
abstract class ChatActionBar extends TdObject {
  const ChatActionBar();

  static const String CONSTRUCTOR = 'chatActionBar';

  /// Inherited by:
  /// [ChatActionBarReportSpam]
  /// [ChatActionBarReportUnrelatedLocation]
  /// [ChatActionBarInviteMembers]
  /// [ChatActionBarReportAddBlock]
  /// [ChatActionBarAddContact]
  /// [ChatActionBarSharePhoneNumber]
  /// [ChatActionBarJoinRequest]
  static ChatActionBar? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json["@type"]) {
      case ChatActionBarReportSpam.CONSTRUCTOR:
        return ChatActionBarReportSpam.fromJson(json);
      case ChatActionBarReportUnrelatedLocation.CONSTRUCTOR:
        return ChatActionBarReportUnrelatedLocation.fromJson(json);
      case ChatActionBarInviteMembers.CONSTRUCTOR:
        return ChatActionBarInviteMembers.fromJson(json);
      case ChatActionBarReportAddBlock.CONSTRUCTOR:
        return ChatActionBarReportAddBlock.fromJson(json);
      case ChatActionBarAddContact.CONSTRUCTOR:
        return ChatActionBarAddContact.fromJson(json);
      case ChatActionBarSharePhoneNumber.CONSTRUCTOR:
        return ChatActionBarSharePhoneNumber.fromJson(json);
      case ChatActionBarJoinRequest.CONSTRUCTOR:
        return ChatActionBarJoinRequest.fromJson(json);
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
