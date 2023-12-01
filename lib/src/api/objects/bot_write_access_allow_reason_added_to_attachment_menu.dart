import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The user added the bot to attachment or side menu using
/// toggleBotIsAddedToAttachmentMenu
@immutable
class BotWriteAccessAllowReasonAddedToAttachmentMenu
    extends BotWriteAccessAllowReason {
  const BotWriteAccessAllowReasonAddedToAttachmentMenu();

  static const String constructor =
      'botWriteAccessAllowReasonAddedToAttachmentMenu';

  static BotWriteAccessAllowReasonAddedToAttachmentMenu? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const BotWriteAccessAllowReasonAddedToAttachmentMenu();
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
