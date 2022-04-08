import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes actions which must be possible to do through a chat action bar
@immutable
abstract class ChatActionBar extends TdObject {
  const ChatActionBar();

  static const String constructor = 'chatActionBar';

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

    switch (json['@type']) {
      case ChatActionBarReportSpam.constructor:
        return ChatActionBarReportSpam.fromJson(json);
      case ChatActionBarReportUnrelatedLocation.constructor:
        return ChatActionBarReportUnrelatedLocation.fromJson(json);
      case ChatActionBarInviteMembers.constructor:
        return ChatActionBarInviteMembers.fromJson(json);
      case ChatActionBarReportAddBlock.constructor:
        return ChatActionBarReportAddBlock.fromJson(json);
      case ChatActionBarAddContact.constructor:
        return ChatActionBarAddContact.fromJson(json);
      case ChatActionBarSharePhoneNumber.constructor:
        return ChatActionBarSharePhoneNumber.fromJson(json);
      case ChatActionBarJoinRequest.constructor:
        return ChatActionBarJoinRequest.fromJson(json);
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
