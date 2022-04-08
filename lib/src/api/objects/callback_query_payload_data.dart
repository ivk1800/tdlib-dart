import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The payload for a general callback button
@immutable
class CallbackQueryPayloadData extends CallbackQueryPayload {
  const CallbackQueryPayloadData({
    required this.data,
  });

  /// [data] Data that was attached to the callback button
  final String data;

  static const String constructor = 'callbackQueryPayloadData';

  static CallbackQueryPayloadData? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CallbackQueryPayloadData(
      data: json['data'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'data': data,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
