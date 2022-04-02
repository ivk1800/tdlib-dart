import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Returns information about a chat filter by its identifier
/// Returns [ChatFilter]
class GetChatFilter extends TdFunction {
  GetChatFilter({required this.chatFilterId});

  /// [chatFilterId] Chat filter identifier
  final int chatFilterId;

  static const String CONSTRUCTOR = 'getChatFilter';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'chat_filter_id': this.chatFilterId, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
