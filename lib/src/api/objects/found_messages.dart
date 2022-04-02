import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Contains a list of messages found by a search
class FoundMessages extends TdObject {
  FoundMessages(
      {required this.totalCount,
      required this.messages,
      required this.nextOffset});

  /// [totalCount] Approximate total count of messages found; -1 if unknown
  final int totalCount;

  /// [messages] List of messages
  final List<Message> messages;

  /// [nextOffset] The offset for the next request. If empty, there are no more
  /// results
  final String nextOffset;

  static const String CONSTRUCTOR = 'foundMessages';

  static FoundMessages? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return FoundMessages(
        totalCount: json['total_count'],
        messages: List<Message>.from((json['messages'] ?? [])
            .map((item) => Message.fromJson(item))
            .toList()),
        nextOffset: json['next_offset']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'total_count': this.totalCount,
        'messages': messages.map((item) => item.toJson()).toList(),
        'next_offset': this.nextOffset,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
