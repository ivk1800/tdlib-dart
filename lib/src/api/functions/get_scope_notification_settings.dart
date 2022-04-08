import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns the notification settings for chats of a given type
/// Returns [ScopeNotificationSettings]
@immutable
class GetScopeNotificationSettings extends TdFunction {
  const GetScopeNotificationSettings({
    required this.scope,
  });

  /// [scope] Types of chats for which to return the notification settings
  /// information
  final NotificationSettingsScope scope;

  static const String constructor = 'getScopeNotificationSettings';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'scope': scope.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
