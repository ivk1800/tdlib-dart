import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns information about a chat filter by its identifier
/// Returns [ChatFilter]
@immutable
class GetChatFilter extends TdFunction {
  const GetChatFilter({
    required this.chatFilterId,
  });

  /// [chatFilterId] Chat filter identifier
  final int chatFilterId;

  static const String constructor = 'getChatFilter';

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
