import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Saves application log event on the server. Can be called before
/// authorization
/// Returns [Ok]
@immutable
class SaveApplicationLogEvent extends TdFunction {
  const SaveApplicationLogEvent({
    required this.type,
    this.chatId,
    required this.data,
  });

  /// [type] Event type
  final String type;

  /// [chatId] Optional chat identifier, associated with the event
  final int? chatId;

  /// [data] The log event data
  final JsonValue data;

  static const String constructor = 'saveApplicationLogEvent';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'type': type,
        'chat_id': chatId,
        'data': data.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
