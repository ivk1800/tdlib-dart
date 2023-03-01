import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The has_aggressive_anti_spam_enabled setting of a supergroup was toggled
@immutable
class ChatEventHasAggressiveAntiSpamEnabledToggled extends ChatEventAction {
  const ChatEventHasAggressiveAntiSpamEnabledToggled({
    required this.hasAggressiveAntiSpamEnabled,
  });

  /// [hasAggressiveAntiSpamEnabled] New value of
  /// has_aggressive_anti_spam_enabled
  final bool hasAggressiveAntiSpamEnabled;

  static const String constructor =
      'chatEventHasAggressiveAntiSpamEnabledToggled';

  static ChatEventHasAggressiveAntiSpamEnabledToggled? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventHasAggressiveAntiSpamEnabledToggled(
      hasAggressiveAntiSpamEnabled: json['has_aggressive_anti_spam_enabled'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'has_aggressive_anti_spam_enabled': hasAggressiveAntiSpamEnabled,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
