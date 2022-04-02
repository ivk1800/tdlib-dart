import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Saves application log event on the server. Can be called before
/// authorization
/// Returns [Ok]
class SaveApplicationLogEvent extends TdFunction {
  SaveApplicationLogEvent(
      {required this.type, this.chatId, required this.data});

  /// [type] Event type
  final String type;

  /// [chatId] Optional chat identifier, associated with the event
  final int? chatId;

  /// [data] The log event data
  final JsonValue data;

  static const String CONSTRUCTOR = 'saveApplicationLogEvent';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'type': this.type,
        'chat_id': this.chatId,
        'data': this.data.toJson(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
