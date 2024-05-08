import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A message in a business account was edited; for bots only
@immutable
class UpdateBusinessMessageEdited extends Update {
  const UpdateBusinessMessageEdited({
    required this.connectionId,
    required this.message,
  });

  /// [connectionId] Unique identifier of the business connection
  final String connectionId;

  /// [message] The edited message
  final BusinessMessage message;

  static const String constructor = 'updateBusinessMessageEdited';

  static UpdateBusinessMessageEdited? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateBusinessMessageEdited(
      connectionId: json['connection_id'] as String,
      message:
          BusinessMessage.fromJson(json['message'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'connection_id': connectionId,
        'message': message.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
