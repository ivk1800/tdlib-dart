import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Edits existing chat filter. Returns information about the edited chat
/// filter
/// Returns [ChatFilterInfo]
@immutable
class EditChatFilter extends TdFunction {
  const EditChatFilter({
    required this.chatFilterId,
    required this.filter,
  });

  /// [chatFilterId] Chat filter identifier
  final int chatFilterId;

  /// [filter] The edited chat filter
  final ChatFilter filter;

  static const String constructor = 'editChatFilter';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_filter_id': chatFilterId,
        'filter': filter.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
