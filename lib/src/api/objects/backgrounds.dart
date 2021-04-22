import '../tdapi.dart';

/// Contains a list of backgrounds
class Backgrounds extends TdObject {
  Backgrounds({required this.backgrounds});

  /// [backgrounds] A list of backgrounds
  final List<Background> backgrounds;

  static const String CONSTRUCTOR = 'backgrounds';

  static Backgrounds? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Backgrounds(
        backgrounds: List<Background>.from((json['backgrounds'] ?? [])
            .map((item) => Background.fromJson(item))
            .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'backgrounds': backgrounds.map((item) => item.toJson()).toList(),
        '@type': CONSTRUCTOR
      };
}
