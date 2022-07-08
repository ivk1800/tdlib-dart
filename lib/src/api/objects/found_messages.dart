import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a list of messages found by a search
@immutable
class FoundMessages extends TdObject {
  const FoundMessages({
    required this.totalCount,
    required this.messages,
    required this.nextOffset,
  });

  /// [totalCount] Approximate total number of messages found; -1 if unknown
  final int totalCount;

  /// [messages] List of messages
  final List<Message> messages;

  /// [nextOffset] The offset for the next request. If empty, there are no more
  /// results
  final String nextOffset;

  static const String constructor = 'foundMessages';

  static FoundMessages? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return FoundMessages(
      totalCount: json['total_count'],
      messages: List<Message>.from((json['messages'] ?? [])
          .map((item) => Message.fromJson(item))
          .toList()),
      nextOffset: json['next_offset'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'total_count': totalCount,
        'messages': messages.map((item) => item.toJson()).toList(),
        'next_offset': nextOffset,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
