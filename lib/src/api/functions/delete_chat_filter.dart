import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Deletes existing chat filter
/// Returns [Ok]
@immutable
class DeleteChatFilter extends TdFunction {
  const DeleteChatFilter({
    required this.chatFilterId,
  });

  /// [chatFilterId] Chat filter identifier
  final int chatFilterId;

  static const String constructor = 'deleteChatFilter';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_filter_id': chatFilterId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
