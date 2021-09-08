import '../tdapi.dart';

/// Edits the message content of a live location. Messages can be edited for a
/// limited period of time specified in the live location. Returns the edited
/// message after the edit is completed on the server side
/// Returns [Message]
class EditMessageLiveLocation extends TdFunction {
  EditMessageLiveLocation(
      {required this.chatId,
      required this.messageId,
      this.replyMarkup,
      this.location,
      required this.heading,
      required this.proximityAlertRadius});

  /// [chatId] The chat the message belongs to
  final int chatId;

  /// [messageId] Identifier of the message
  final int messageId;

  /// [replyMarkup] The new message reply markup; for bots only
  final ReplyMarkup? replyMarkup;

  /// [location] New location content of the message; may be null. Pass null to
  /// stop sharing the live location
  final Location? location;

  /// [heading] The new direction in which the location moves, in degrees;
  /// 1-360. Pass 0 if unknown
  final int heading;

  /// [proximityAlertRadius] The new maximum distance for proximity alerts, in
  /// meters (0-100000). Pass 0 if the notification is disabled
  final int proximityAlertRadius;

  static const String CONSTRUCTOR = 'editMessageLiveLocation';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'message_id': this.messageId,
        'reply_markup': this.replyMarkup?.toJson(),
        'location': this.location?.toJson(),
        'heading': this.heading,
        'proximity_alert_radius': this.proximityAlertRadius,
        '@type': CONSTRUCTOR
      };
}
