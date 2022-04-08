import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A sticker message
@immutable
class MessageSticker extends MessageContent {
  const MessageSticker({
    required this.sticker,
  });

  /// [sticker] The sticker description
  final Sticker sticker;

  static const String constructor = 'messageSticker';

  static MessageSticker? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageSticker(
      sticker: Sticker.fromJson(json['sticker'])!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'sticker': sticker.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
