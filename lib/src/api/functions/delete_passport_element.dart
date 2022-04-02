import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Deletes a Telegram Passport element
/// Returns [Ok]
class DeletePassportElement extends TdFunction {
  DeletePassportElement({required this.type});

  /// [type] Element type
  final PassportElementType type;

  static const String CONSTRUCTOR = 'deletePassportElement';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'type': this.type.toJson(), '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
