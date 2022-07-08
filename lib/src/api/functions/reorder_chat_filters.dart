import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes the order of chat filters
/// Returns [Ok]
@immutable
class ReorderChatFilters extends TdFunction {
  const ReorderChatFilters({
    required this.chatFilterIds,
    required this.mainChatListPosition,
  });

  /// [chatFilterIds] Identifiers of chat filters in the new correct order
  final List<int> chatFilterIds;

  /// [mainChatListPosition] Position of the main chat list among chat filters,
  /// 0-based. Can be non-zero only for Premium users
  final int mainChatListPosition;

  static const String constructor = 'reorderChatFilters';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_filter_ids': chatFilterIds.map((item) => item).toList(),
        'main_chat_list_position': mainChatListPosition,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
