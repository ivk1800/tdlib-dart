import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a list of message senders
@immutable
class MessageSenders extends TdObject {
  const MessageSenders({
    required this.totalCount,
    required this.senders,
  });

  /// [totalCount] Approximate total number of messages senders found
  final int totalCount;

  /// [senders] List of message senders
  final List<MessageSender> senders;

  static const String constructor = 'messageSenders';

  static MessageSenders? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageSenders(
      totalCount: json['total_count'] as int,
      senders: List<MessageSender>.from(
          ((json['senders'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => MessageSender.fromJson(item))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'total_count': totalCount,
        'senders': senders.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
