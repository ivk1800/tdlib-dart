import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Options to be used when a message is sent
@immutable
class MessageSendOptions extends TdObject {
  const MessageSendOptions({
    required this.disableNotification,
    required this.fromBackground,
    this.protectContent,
    required this.updateOrderOfInstalledStickerSets,
    this.schedulingState,
  });

  /// [disableNotification] Pass true to disable notification for the message
  final bool disableNotification;

  /// [fromBackground] Pass true if the message is sent from the background
  final bool fromBackground;

  /// [protectContent] Pass true if the content of the message must be protected
  /// from forwarding and saving; for bots only
  final bool? protectContent;

  /// [updateOrderOfInstalledStickerSets] Pass true if the user explicitly
  /// chosen a sticker or a custom emoji from an installed sticker set;
  /// applicable only to sendMessage and sendMessageAlbum
  final bool updateOrderOfInstalledStickerSets;

  /// [schedulingState] Message scheduling state; pass null to send message
  /// immediately. Messages sent to a secret chat, live location messages and
  /// self-destructing messages can't be scheduled
  final MessageSchedulingState? schedulingState;

  static const String constructor = 'messageSendOptions';

  static MessageSendOptions? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageSendOptions(
      disableNotification: json['disable_notification'],
      fromBackground: json['from_background'],
      protectContent: json['protect_content'],
      updateOrderOfInstalledStickerSets:
          json['update_order_of_installed_sticker_sets'],
      schedulingState:
          MessageSchedulingState.fromJson(json['scheduling_state']),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'disable_notification': disableNotification,
        'from_background': fromBackground,
        'protect_content': protectContent,
        'update_order_of_installed_sticker_sets':
            updateOrderOfInstalledStickerSets,
        'scheduling_state': schedulingState?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
