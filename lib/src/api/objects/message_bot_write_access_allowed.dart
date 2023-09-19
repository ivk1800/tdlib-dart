import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The user allowed the bot to send messages
@immutable
class MessageBotWriteAccessAllowed extends MessageContent {
  const MessageBotWriteAccessAllowed({
    this.webApp,
    required this.byRequest,
  });

  /// [webApp] Information about the Web App, which requested the access; may be
  /// null if none or the Web App was opened from the attachment menu
  final WebApp? webApp;

  /// [byRequest] True, if user allowed the bot to send messages by an explicit
  /// call to allowBotToSendMessages
  final bool byRequest;

  static const String constructor = 'messageBotWriteAccessAllowed';

  static MessageBotWriteAccessAllowed? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageBotWriteAccessAllowed(
      webApp: WebApp.fromJson(json['web_app'] as Map<String, dynamic>?),
      byRequest: json['by_request'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'web_app': webApp?.toJson(),
        'by_request': byRequest,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
