import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The user allowed the bot to send messages
@immutable
class MessageBotWriteAccessAllowed extends MessageContent {
  const MessageBotWriteAccessAllowed({
    this.webApp,
  });

  /// [webApp] Information about the Web App, which requested the access; may be
  /// null if none or the Web App was opened from the attachment menu
  final WebApp? webApp;

  static const String constructor = 'messageBotWriteAccessAllowed';

  static MessageBotWriteAccessAllowed? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageBotWriteAccessAllowed(
      webApp: WebApp.fromJson(json['web_app'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'web_app': webApp?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
