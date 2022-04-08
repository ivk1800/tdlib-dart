import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes the order of chat filters
/// Returns [Ok]
@immutable
class ReorderChatFilters extends TdFunction {
  const ReorderChatFilters({
    required this.chatFilterIds,
  });

  /// [chatFilterIds] Identifiers of chat filters in the new correct order
  final List<int> chatFilterIds;

  static const String constructor = 'reorderChatFilters';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_filter_ids': chatFilterIds.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
