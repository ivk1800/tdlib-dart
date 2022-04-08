import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a list of stickers
@immutable
class Stickers extends TdObject {
  const Stickers({
    required this.stickers,
  });

  /// [stickers] List of stickers
  final List<Sticker> stickers;

  static const String constructor = 'stickers';

  static Stickers? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Stickers(
      stickers: List<Sticker>.from((json['stickers'] ?? [])
          .map((item) => Sticker.fromJson(item))
          .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'stickers': stickers.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
