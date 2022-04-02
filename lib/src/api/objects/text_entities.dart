import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Contains a list of text entities
class TextEntities extends TdObject {
  TextEntities({required this.entities});

  /// [entities] List of text entities
  final List<TextEntity> entities;

  static const String CONSTRUCTOR = 'textEntities';

  static TextEntities? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TextEntities(
        entities: List<TextEntity>.from((json['entities'] ?? [])
            .map((item) => TextEntity.fromJson(item))
            .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'entities': entities.map((item) => item.toJson()).toList(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
