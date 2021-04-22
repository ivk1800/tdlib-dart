import '../tdapi.dart';

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
}
