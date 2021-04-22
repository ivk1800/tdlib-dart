import '../tdapi.dart';

/// Represents a list of emoji
class Emojis extends TdObject {
  Emojis({required this.emojis});

  /// [emojis] List of emojis
  final List<String> emojis;

  static const String CONSTRUCTOR = 'emojis';

  static Emojis? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Emojis(
        emojis: List<String>.from(
            (json['emojis'] ?? []).map((item) => item).toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'emojis': emojis.map((item) => item).toList(), '@type': CONSTRUCTOR};
}
