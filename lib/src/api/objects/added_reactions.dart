import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a list of reactions added to a message
@immutable
class AddedReactions extends TdObject {
  const AddedReactions({
    required this.totalCount,
    required this.reactions,
    required this.nextOffset,
  });

  /// [totalCount] The total number of found reactions
  final int totalCount;

  /// [reactions] The list of added reactions
  final List<AddedReaction> reactions;

  /// [nextOffset] The offset for the next request. If empty, then there are no
  /// more results
  final String nextOffset;

  static const String constructor = 'addedReactions';

  static AddedReactions? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AddedReactions(
      totalCount: json['total_count'] as int,
      reactions: List<AddedReaction>.from(
          ((json['reactions'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => AddedReaction.fromJson(item))
              .toList()),
      nextOffset: json['next_offset'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'total_count': totalCount,
        'reactions': reactions.map((item) => item.toJson()).toList(),
        'next_offset': nextOffset,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
