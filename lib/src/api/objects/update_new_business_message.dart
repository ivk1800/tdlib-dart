import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A new message was added to a business account; for bots only
@immutable
class UpdateNewBusinessMessage extends Update {
  const UpdateNewBusinessMessage({
    required this.connectionId,
    required this.message,
  });

  /// [connectionId] Unique identifier of the business connection
  final String connectionId;

  /// [message] The new message
  final BusinessMessage message;

  static const String constructor = 'updateNewBusinessMessage';

  static UpdateNewBusinessMessage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateNewBusinessMessage(
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
