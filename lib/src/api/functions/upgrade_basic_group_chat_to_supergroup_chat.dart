import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Creates a new supergroup from an existing basic group and sends a
/// corresponding messageChatUpgradeTo and messageChatUpgradeFrom; requires
/// owner privileges. Deactivates the original basic group
/// Returns [Chat]
@immutable
class UpgradeBasicGroupChatToSupergroupChat extends TdFunction {
  const UpgradeBasicGroupChatToSupergroupChat({
    required this.chatId,
  });

  /// [chatId] Identifier of the chat to upgrade
  final int chatId;

  static const String constructor = 'upgradeBasicGroupChatToSupergroupChat';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
