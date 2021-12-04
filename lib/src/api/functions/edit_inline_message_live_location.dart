import '../tdapi.dart';

/// Edits the content of a live location in an inline message sent via a bot;
/// for bots only
/// Returns [Ok]
class EditInlineMessageLiveLocation extends TdFunction {
  EditInlineMessageLiveLocation(
      {required this.inlineMessageId,
      this.replyMarkup,
      this.location,
      required this.heading,
      required this.proximityAlertRadius});

  /// [inlineMessageId] Inline message identifier
  final String inlineMessageId;

  /// [replyMarkup] The new message reply markup; pass null if none
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

  static const String CONSTRUCTOR = 'editInlineMessageLiveLocation';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'inline_message_id': this.inlineMessageId,
        'reply_markup': this.replyMarkup?.toJson(),
        'location': this.location?.toJson(),
        'heading': this.heading,
        'proximity_alert_radius': this.proximityAlertRadius,
        '@type': CONSTRUCTOR
      };
}
