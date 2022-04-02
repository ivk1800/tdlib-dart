import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Changes application-specific data associated with a chat
/// Returns [Ok]
class SetChatClientData extends TdFunction {
  SetChatClientData({required this.chatId, required this.clientData});

  /// [chatId] Chat identifier
  final int chatId;

  /// [clientData] New value of client_data
  final String clientData;

  static const String CONSTRUCTOR = 'setChatClientData';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'client_data': this.clientData,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
