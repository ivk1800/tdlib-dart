import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A basic group was upgraded to a supergroup and was deactivated as the
/// result
class MessageChatUpgradeTo extends MessageContent {
  MessageChatUpgradeTo({required this.supergroupId});

  /// [supergroupId] Identifier of the supergroup to which the basic group was
  /// upgraded
  final int supergroupId;

  static const String CONSTRUCTOR = 'messageChatUpgradeTo';

  static MessageChatUpgradeTo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageChatUpgradeTo(supergroupId: json['supergroup_id']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'supergroup_id': this.supergroupId, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
