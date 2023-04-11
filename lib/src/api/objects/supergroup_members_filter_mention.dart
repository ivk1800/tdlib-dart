import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns users which can be mentioned in the supergroup
@immutable
class SupergroupMembersFilterMention extends SupergroupMembersFilter {
  const SupergroupMembersFilterMention({
    required this.query,
    required this.messageThreadId,
  });

  /// [query] Query to search for
  final String query;

  /// [messageThreadId] If non-zero, the identifier of the current message
  /// thread
  final int messageThreadId;

  static const String constructor = 'supergroupMembersFilterMention';

  static SupergroupMembersFilterMention? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SupergroupMembersFilterMention(
      query: json['query'] as String,
      messageThreadId: json['message_thread_id'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'query': query,
        'message_thread_id': messageThreadId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
