import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes application-specific data associated with a chat
/// Returns [Ok]
@immutable
class SetChatClientData extends TdFunction {
  const SetChatClientData({
    required this.chatId,
    required this.clientData,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [clientData] New value of client_data
  final String clientData;

  static const String constructor = 'setChatClientData';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'client_data': clientData,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
