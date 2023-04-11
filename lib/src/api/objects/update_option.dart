import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// An option changed its value
@immutable
class UpdateOption extends Update {
  const UpdateOption({
    required this.name,
    required this.value,
  });

  /// [name] The option name
  final String name;

  /// [value] The new option value
  final OptionValue value;

  static const String constructor = 'updateOption';

  static UpdateOption? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateOption(
      name: json['name'] as String,
      value: OptionValue.fromJson(json['value'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'name': name,
        'value': value.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
