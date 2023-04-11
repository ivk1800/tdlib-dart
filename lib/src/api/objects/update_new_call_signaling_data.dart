import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// New call signaling data arrived
@immutable
class UpdateNewCallSignalingData extends Update {
  const UpdateNewCallSignalingData({
    required this.callId,
    required this.data,
  });

  /// [callId] The call identifier
  final int callId;

  /// [data] The data
  final String data;

  static const String constructor = 'updateNewCallSignalingData';

  static UpdateNewCallSignalingData? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateNewCallSignalingData(
      callId: json['call_id'] as int,
      data: json['data'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'call_id': callId,
        'data': data,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
