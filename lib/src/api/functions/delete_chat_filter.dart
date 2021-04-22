import '../tdapi.dart';

/// Deletes existing chat filter
/// Returns [Ok]
class DeleteChatFilter extends TdFunction {
  DeleteChatFilter({required this.chatFilterId});

  /// [chatFilterId] Chat filter identifier
  final int chatFilterId;

  static const String CONSTRUCTOR = 'deleteChatFilter';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'chat_filter_id': this.chatFilterId, '@type': CONSTRUCTOR};
}
