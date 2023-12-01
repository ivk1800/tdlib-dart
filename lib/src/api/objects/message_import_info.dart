import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about a message created with importMessages
@immutable
class MessageImportInfo extends TdObject {
  const MessageImportInfo({
    required this.senderName,
    required this.date,
  });

  /// [senderName] Name of the original sender
  final String senderName;

  /// [date] Point in time (Unix timestamp) when the message was originally sent
  final int date;

  static const String constructor = 'messageImportInfo';

  static MessageImportInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageImportInfo(
      senderName: json['sender_name'] as String,
      date: json['date'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'sender_name': senderName,
        'date': date,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
