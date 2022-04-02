import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Creates a new supergroup from an existing basic group and sends a
/// corresponding messageChatUpgradeTo and messageChatUpgradeFrom; requires
/// creator privileges. Deactivates the original basic group
/// Returns [Chat]
class UpgradeBasicGroupChatToSupergroupChat extends TdFunction {
  UpgradeBasicGroupChatToSupergroupChat({required this.chatId});

  /// [chatId] Identifier of the chat to upgrade
  final int chatId;

  static const String CONSTRUCTOR = 'upgradeBasicGroupChatToSupergroupChat';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'chat_id': this.chatId, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
