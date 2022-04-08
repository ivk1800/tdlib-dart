import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The has_protected_content setting of a channel was toggled
@immutable
class ChatEventHasProtectedContentToggled extends ChatEventAction {
  const ChatEventHasProtectedContentToggled({
    required this.hasProtectedContent,
  });

  /// [hasProtectedContent] New value of has_protected_content
  final bool hasProtectedContent;

  static const String constructor = 'chatEventHasProtectedContentToggled';

  static ChatEventHasProtectedContentToggled? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventHasProtectedContentToggled(
      hasProtectedContent: json['has_protected_content'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'has_protected_content': hasProtectedContent,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
