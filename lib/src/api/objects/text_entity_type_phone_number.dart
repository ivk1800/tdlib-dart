import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A phone number
@immutable
class TextEntityTypePhoneNumber extends TextEntityType {
  const TextEntityTypePhoneNumber();

  static const String constructor = 'textEntityTypePhoneNumber';

  static TextEntityTypePhoneNumber? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const TextEntityTypePhoneNumber();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
