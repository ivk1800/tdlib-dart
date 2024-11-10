import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Paid media were bought
@immutable
class BotTransactionPurposePaidMedia extends BotTransactionPurpose {
  const BotTransactionPurposePaidMedia({
    required this.media,
    this.payload,
  });

  /// [media] The bought media if the transaction wasn't refunded
  final List<PaidMedia> media;

  /// [payload] Bot-provided payload; for bots only
  final String? payload;

  static const String constructor = 'botTransactionPurposePaidMedia';

  static BotTransactionPurposePaidMedia? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BotTransactionPurposePaidMedia(
      media: List<PaidMedia>.from(
          ((json['media'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => PaidMedia.fromJson(item))
              .toList()),
      payload: json['payload'] as String?,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'media': media.map((item) => item.toJson()).toList(),
        'payload': payload,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
