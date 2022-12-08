import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The is_aggressive_anti_spam_enabled setting of a supergroup was toggled
@immutable
class ChatEventIsAggressiveAntiSpamEnabledToggled extends ChatEventAction {
  const ChatEventIsAggressiveAntiSpamEnabledToggled({
    required this.isAggressiveAntiSpamEnabled,
  });

  /// [isAggressiveAntiSpamEnabled] New value of is_aggressive_anti_spam_enabled
  final bool isAggressiveAntiSpamEnabled;

  static const String constructor =
      'chatEventIsAggressiveAntiSpamEnabledToggled';

  static ChatEventIsAggressiveAntiSpamEnabledToggled? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventIsAggressiveAntiSpamEnabledToggled(
      isAggressiveAntiSpamEnabled: json['is_aggressive_anti_spam_enabled'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'is_aggressive_anti_spam_enabled': isAggressiveAntiSpamEnabled,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
