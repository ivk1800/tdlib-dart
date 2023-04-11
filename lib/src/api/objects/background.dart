import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a chat background
@immutable
class Background extends TdObject {
  const Background({
    required this.id,
    required this.isDefault,
    required this.isDark,
    required this.name,
    this.document,
    required this.type,
  });

  /// [id] Unique background identifier
  final int id;

  /// [isDefault] True, if this is one of default backgrounds
  final bool isDefault;

  /// [isDark] True, if the background is dark and is recommended to be used
  /// with dark theme
  final bool isDark;

  /// [name] Unique background name
  final String name;

  /// [document] Document with the background; may be null. Null only for filled
  /// backgrounds
  final Document? document;

  /// [type] Type of the background
  final BackgroundType type;

  static const String constructor = 'background';

  static Background? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Background(
      id: int.tryParse(json['id']) ?? 0,
      isDefault: json['is_default'] as bool,
      isDark: json['is_dark'] as bool,
      name: json['name'] as String,
      document: Document.fromJson(json['document'] as Map<String, dynamic>?),
      type: BackgroundType.fromJson(json['type'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'is_default': isDefault,
        'is_dark': isDark,
        'name': name,
        'document': document?.toJson(),
        'type': type.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
