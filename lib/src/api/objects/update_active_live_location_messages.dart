import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The list of messages with active live location that need to be updated by
/// the application has changed. The list is persistent across application
/// restarts only if the message database is used
@immutable
class UpdateActiveLiveLocationMessages extends Update {
  const UpdateActiveLiveLocationMessages({
    required this.messages,
  });

  /// [messages] The list of messages with active live locations
  final List<Message> messages;

  static const String constructor = 'updateActiveLiveLocationMessages';

  static UpdateActiveLiveLocationMessages? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateActiveLiveLocationMessages(
      messages: List<Message>.from(
          ((json['messages'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => Message.fromJson(item))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'messages': messages.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
