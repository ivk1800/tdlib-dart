import '../tdapi.dart';

/// An option changed its value
class UpdateOption extends Update {
  UpdateOption({required this.name, required this.value});

  /// [name] The option name
  final String name;

  /// [value] The new option value
  final OptionValue value;

  static const String CONSTRUCTOR = 'updateOption';

  static UpdateOption? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateOption(
        name: json['name'], value: OptionValue.fromJson(json['value'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'name': this.name, 'value': this.value.toJson(), '@type': CONSTRUCTOR};
}
