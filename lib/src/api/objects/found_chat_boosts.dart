import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a list of boosts applied to a chat
@immutable
class FoundChatBoosts extends TdObject {
  const FoundChatBoosts({
    required this.totalCount,
    required this.boosts,
    required this.nextOffset,
  });

  /// [totalCount] Total number of boosts applied to the chat
  final int totalCount;

  /// [boosts] List of boosts
  final List<ChatBoost> boosts;

  /// [nextOffset] The offset for the next request. If empty, then there are no
  /// more results
  final String nextOffset;

  static const String constructor = 'foundChatBoosts';

  static FoundChatBoosts? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return FoundChatBoosts(
      totalCount: json['total_count'] as int,
      boosts: List<ChatBoost>.from(
          ((json['boosts'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => ChatBoost.fromJson(item))
              .toList()),
      nextOffset: json['next_offset'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'total_count': totalCount,
        'boosts': boosts.map((item) => item.toJson()).toList(),
        'next_offset': nextOffset,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
