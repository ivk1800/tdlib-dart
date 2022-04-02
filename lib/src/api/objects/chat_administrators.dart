import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Represents a list of chat administrators
class ChatAdministrators extends TdObject {
  ChatAdministrators({required this.administrators});

  /// [administrators] A list of chat administrators
  final List<ChatAdministrator> administrators;

  static const String CONSTRUCTOR = 'chatAdministrators';

  static ChatAdministrators? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatAdministrators(
        administrators: List<ChatAdministrator>.from(
            (json['administrators'] ?? [])
                .map((item) => ChatAdministrator.fromJson(item))
                .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'administrators': administrators.map((item) => item.toJson()).toList(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
