import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Edits the message content of a live location. Messages can be edited for a
/// limited period of time specified in the live location. Returns the edited
/// message after the edit is completed on the server side
/// Returns [Message]
@immutable
class EditMessageLiveLocation extends TdFunction {
  const EditMessageLiveLocation({
    required this.chatId,
    required this.messageId,
    this.replyMarkup,
    this.location,
    required this.heading,
    required this.proximityAlertRadius,
  });

  /// [chatId] The chat the message belongs to
  final int chatId;

  /// [messageId] Identifier of the message
  final int messageId;

  /// [replyMarkup] The new message reply markup; pass null if none; for bots
  /// only
  final ReplyMarkup? replyMarkup;

  /// [location] New location content of the message; pass null to stop sharing
  /// the live location
  final Location? location;

  /// [heading] The new direction in which the location moves, in degrees;
  /// 1-360. Pass 0 if unknown
  final int heading;

  /// [proximityAlertRadius] The new maximum distance for proximity alerts, in
  /// meters (0-100000). Pass 0 if the notification is disabled
  final int proximityAlertRadius;

  static const String constructor = 'editMessageLiveLocation';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        'reply_markup': replyMarkup?.toJson(),
        'location': location?.toJson(),
        'heading': heading,
        'proximity_alert_radius': proximityAlertRadius,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
