import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The link is an invite link for a channel
@immutable
class InviteLinkChatTypeChannel extends InviteLinkChatType {
  const InviteLinkChatTypeChannel();

  static const String constructor = 'inviteLinkChatTypeChannel';

  static InviteLinkChatTypeChannel? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const InviteLinkChatTypeChannel();
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
