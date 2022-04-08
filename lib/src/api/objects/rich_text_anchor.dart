import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// An anchor
@immutable
class RichTextAnchor extends RichText {
  const RichTextAnchor({
    required this.name,
  });

  /// [name] Anchor name
  final String name;

  static const String constructor = 'richTextAnchor';

  static RichTextAnchor? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RichTextAnchor(
      name: json['name'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'name': name,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
