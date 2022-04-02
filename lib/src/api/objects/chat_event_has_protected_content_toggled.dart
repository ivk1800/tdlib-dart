import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// The has_protected_content setting of a channel was toggled
class ChatEventHasProtectedContentToggled extends ChatEventAction {
  ChatEventHasProtectedContentToggled({required this.hasProtectedContent});

  /// [hasProtectedContent] New value of has_protected_content
  final bool hasProtectedContent;

  static const String CONSTRUCTOR = 'chatEventHasProtectedContentToggled';

  static ChatEventHasProtectedContentToggled? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventHasProtectedContentToggled(
        hasProtectedContent: json['has_protected_content']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'has_protected_content': this.hasProtectedContent, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
