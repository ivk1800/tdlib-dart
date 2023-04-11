import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a list of sponsored messages
@immutable
class SponsoredMessages extends TdObject {
  const SponsoredMessages({
    required this.messages,
    required this.messagesBetween,
  });

  /// [messages] List of sponsored messages
  final List<SponsoredMessage> messages;

  /// [messagesBetween] The minimum number of messages between shown sponsored
  /// messages, or 0 if only one sponsored message must be shown after all
  /// ordinary messages
  final int messagesBetween;

  static const String constructor = 'sponsoredMessages';

  static SponsoredMessages? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SponsoredMessages(
      messages: List<SponsoredMessage>.from(
          ((json['messages'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => SponsoredMessage.fromJson(item))
              .toList()),
      messagesBetween: json['messages_between'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'messages': messages.map((item) => item.toJson()).toList(),
        'messages_between': messagesBetween,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
