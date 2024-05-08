import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a list of quick reply messages
@immutable
class QuickReplyMessages extends TdObject {
  const QuickReplyMessages({
    this.messages,
  });

  /// [messages] List of quick reply messages; messages may be null
  final List<QuickReplyMessage>? messages;

  static const String constructor = 'quickReplyMessages';

  static QuickReplyMessages? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return QuickReplyMessages(
      messages: List<QuickReplyMessage>.from(
          ((json['messages'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => QuickReplyMessage.fromJson(item))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'messages': messages?.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
