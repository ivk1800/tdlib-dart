import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Represents a list of stickers
class Stickers extends TdObject {
  Stickers({required this.stickers});

  /// [stickers] List of stickers
  final List<Sticker> stickers;

  static const String CONSTRUCTOR = 'stickers';

  static Stickers? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Stickers(
        stickers: List<Sticker>.from((json['stickers'] ?? [])
            .map((item) => Sticker.fromJson(item))
            .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'stickers': stickers.map((item) => item.toJson()).toList(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
