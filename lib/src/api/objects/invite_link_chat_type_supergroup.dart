import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The link is an invite link for a supergroup
@immutable
class InviteLinkChatTypeSupergroup extends InviteLinkChatType {
  const InviteLinkChatTypeSupergroup();

  static const String constructor = 'inviteLinkChatTypeSupergroup';

  static InviteLinkChatTypeSupergroup? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const InviteLinkChatTypeSupergroup();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
