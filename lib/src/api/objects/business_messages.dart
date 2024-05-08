import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a list of messages from a business account as received by a bot
@immutable
class BusinessMessages extends TdObject {
  const BusinessMessages({
    required this.messages,
  });

  /// [messages] List of business messages
  final List<BusinessMessage> messages;

  static const String constructor = 'businessMessages';

  static BusinessMessages? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BusinessMessages(
      messages: List<BusinessMessage>.from(
          ((json['messages'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => BusinessMessage.fromJson(item))
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
