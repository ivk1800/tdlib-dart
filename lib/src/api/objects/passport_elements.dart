import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about saved Telegram Passport elements
@immutable
class PassportElements extends TdObject {
  const PassportElements({
    required this.elements,
  });

  /// [elements] Telegram Passport elements
  final List<PassportElement> elements;

  static const String constructor = 'passportElements';

  static PassportElements? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PassportElements(
      elements: List<PassportElement>.from((json['elements'] ?? [])
          .map((item) => PassportElement.fromJson(item))
          .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'elements': elements.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
