import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The link is an invite link for a basic group
@immutable
class InviteLinkChatTypeBasicGroup extends InviteLinkChatType {
  const InviteLinkChatTypeBasicGroup();

  static const String constructor = 'inviteLinkChatTypeBasicGroup';

  static InviteLinkChatTypeBasicGroup? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const InviteLinkChatTypeBasicGroup();
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
