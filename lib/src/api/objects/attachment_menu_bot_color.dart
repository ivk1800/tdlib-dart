import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a color to highlight a bot added to attachment menu
@immutable
class AttachmentMenuBotColor extends TdObject {
  const AttachmentMenuBotColor({
    required this.lightColor,
    required this.darkColor,
  });

  /// [lightColor] Color in the RGB24 format for light themes
  final int lightColor;

  /// [darkColor] Color in the RGB24 format for dark themes
  final int darkColor;

  static const String constructor = 'attachmentMenuBotColor';

  static AttachmentMenuBotColor? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AttachmentMenuBotColor(
      lightColor: json['light_color'] as int,
      darkColor: json['dark_color'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'light_color': lightColor,
        'dark_color': darkColor,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
