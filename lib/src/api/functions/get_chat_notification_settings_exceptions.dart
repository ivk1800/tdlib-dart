import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns list of chats with non-default notification settings for new
/// messages
/// Returns [Chats]
@immutable
class GetChatNotificationSettingsExceptions extends TdFunction {
  const GetChatNotificationSettingsExceptions({
    this.scope,
    required this.compareSound,
  });

  /// [scope] If specified, only chats from the scope will be returned; pass
  /// null to return chats from all scopes
  final NotificationSettingsScope? scope;

  /// [compareSound] Pass true to include in the response chats with only
  /// non-default sound
  final bool compareSound;

  static const String constructor = 'getChatNotificationSettingsExceptions';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'scope': scope?.toJson(),
        'compare_sound': compareSound,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
