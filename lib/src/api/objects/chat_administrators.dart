import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a list of chat administrators
@immutable
class ChatAdministrators extends TdObject {
  const ChatAdministrators({
    required this.administrators,
  });

  /// [administrators] A list of chat administrators
  final List<ChatAdministrator> administrators;

  static const String constructor = 'chatAdministrators';

  static ChatAdministrators? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatAdministrators(
      administrators: List<ChatAdministrator>.from(
          (json['administrators'] ?? [])
              .map((item) => ChatAdministrator.fromJson(item))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'administrators': administrators.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
