import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Changes the order of chat filters
/// Returns [Ok]
class ReorderChatFilters extends TdFunction {
  ReorderChatFilters({required this.chatFilterIds});

  /// [chatFilterIds] Identifiers of chat filters in the new correct order
  final List<int> chatFilterIds;

  static const String CONSTRUCTOR = 'reorderChatFilters';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_filter_ids': chatFilterIds.map((item) => item).toList(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
