import '../tdapi.dart';

/// Represents a part of the text that needs to be formatted in some unusual
/// way
class TextEntity extends TdObject {
  TextEntity({required this.offset, required this.length, required this.type});

  /// [offset] Offset of the entity, in UTF-16 code units
  final int offset;

  /// [length] Length of the entity, in UTF-16 code units
  final int length;

  /// [type] Type of the entity
  final TextEntityType type;

  static const String CONSTRUCTOR = 'textEntity';

  static TextEntity? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TextEntity(
        offset: json['offset'],
        length: json['length'],
        type: TextEntityType.fromJson(json['type'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'offset': this.offset,
        'length': this.length,
        'type': this.type.toJson(),
        '@type': CONSTRUCTOR
      };
}
