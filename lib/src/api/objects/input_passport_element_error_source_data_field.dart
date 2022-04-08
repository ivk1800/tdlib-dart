import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A data field contains an error. The error is considered resolved when the
/// field's value changes
@immutable
class InputPassportElementErrorSourceDataField
    extends InputPassportElementErrorSource {
  const InputPassportElementErrorSourceDataField({
    required this.fieldName,
    required this.dataHash,
  });

  /// [fieldName] Field name
  final String fieldName;

  /// [dataHash] Current data hash
  final String dataHash;

  static const String constructor = 'inputPassportElementErrorSourceDataField';

  static InputPassportElementErrorSourceDataField? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPassportElementErrorSourceDataField(
      fieldName: json['field_name'],
      dataHash: json['data_hash'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'field_name': fieldName,
        'data_hash': dataHash,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
