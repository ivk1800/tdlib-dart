import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A sticker message
@immutable
class MessageSticker extends MessageContent {
  const MessageSticker({
    required this.sticker,
    required this.isPremium,
  });

  /// [sticker] The sticker description
  final Sticker sticker;

  /// [isPremium] True, if premium animation of the sticker must be played
  final bool isPremium;

  static const String constructor = 'messageSticker';

  static MessageSticker? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageSticker(
      sticker: Sticker.fromJson(json['sticker'])!,
      isPremium: json['is_premium'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'sticker': sticker.toJson(),
        'is_premium': isPremium,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
