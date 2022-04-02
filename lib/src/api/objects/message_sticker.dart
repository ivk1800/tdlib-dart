import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A sticker message
class MessageSticker extends MessageContent {
  MessageSticker({required this.sticker});

  /// [sticker] The sticker description
  final Sticker sticker;

  static const String CONSTRUCTOR = 'messageSticker';

  static MessageSticker? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageSticker(sticker: Sticker.fromJson(json['sticker'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'sticker': this.sticker.toJson(), '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
