import '../tdapi.dart';

/// Returns list of chats with non-default notification settings
/// Returns [Chats]
class GetChatNotificationSettingsExceptions extends TdFunction {
  GetChatNotificationSettingsExceptions(
      {this.scope, required this.compareSound});

  /// [scope] If specified, only chats from the scope will be returned; pass
  /// null to return chats from all scopes
  final NotificationSettingsScope? scope;

  /// [compareSound] If true, also chats with non-default sound will be returned
  final bool compareSound;

  static const String CONSTRUCTOR = 'getChatNotificationSettingsExceptions';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'scope': this.scope?.toJson(),
        'compare_sound': this.compareSound,
        '@type': CONSTRUCTOR
      };
}
