import '../tdapi.dart';

/// New call signaling data arrived
class UpdateNewCallSignalingData extends Update {
  UpdateNewCallSignalingData({required this.callId, required this.data});

  /// [callId] The call identifier
  final int callId;

  /// [data] The data
  final String data;

  static const String CONSTRUCTOR = 'updateNewCallSignalingData';

  static UpdateNewCallSignalingData? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateNewCallSignalingData(
        callId: json['call_id'], data: json['data']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'call_id': this.callId, 'data': this.data, '@type': CONSTRUCTOR};
}
