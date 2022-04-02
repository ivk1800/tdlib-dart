import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Represents a sticker
class InlineQueryResultSticker extends InlineQueryResult {
  InlineQueryResultSticker({required this.id, required this.sticker});

  /// [id] Unique identifier of the query result
  final String id;

  /// [sticker] Sticker
  final Sticker sticker;

  static const String CONSTRUCTOR = 'inlineQueryResultSticker';

  static InlineQueryResultSticker? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InlineQueryResultSticker(
        id: json['id'], sticker: Sticker.fromJson(json['sticker'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'id': this.id, 'sticker': this.sticker.toJson(), '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
