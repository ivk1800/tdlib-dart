import '../tdapi.dart';

/// The payload for a general callback button
class CallbackQueryPayloadData extends CallbackQueryPayload {
  CallbackQueryPayloadData({required this.data});

  /// [data] Data that was attached to the callback button
  final String data;

  static const String CONSTRUCTOR = 'callbackQueryPayloadData';

  static CallbackQueryPayloadData? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CallbackQueryPayloadData(data: json['data']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'data': this.data, '@type': CONSTRUCTOR};
}
