import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a list of chats
@immutable
class Chats extends TdObject {
  const Chats({
    required this.totalCount,
    required this.chatIds,
  });

  /// [totalCount] Approximate total number of chats found
  final int totalCount;

  /// [chatIds] List of chat identifiers
  final List<int> chatIds;

  static const String constructor = 'chats';

  static Chats? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Chats(
      totalCount: json['total_count'] as int,
      chatIds: List<int>.from(
          ((json['chat_ids'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => item)
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'total_count': totalCount,
        'chat_ids': chatIds.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
