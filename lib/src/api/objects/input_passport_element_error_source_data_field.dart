import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A data field contains an error. The error is considered resolved when the
/// field's value changes
class InputPassportElementErrorSourceDataField
    extends InputPassportElementErrorSource {
  InputPassportElementErrorSourceDataField(
      {required this.fieldName, required this.dataHash});

  /// [fieldName] Field name
  final String fieldName;

  /// [dataHash] Current data hash
  final String dataHash;

  static const String CONSTRUCTOR = 'inputPassportElementErrorSourceDataField';

  static InputPassportElementErrorSourceDataField? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPassportElementErrorSourceDataField(
        fieldName: json['field_name'], dataHash: json['data_hash']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'field_name': this.fieldName,
        'data_hash': this.dataHash,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
