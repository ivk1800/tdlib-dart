import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Deletes a Telegram Passport element
/// Returns [Ok]
@immutable
class DeletePassportElement extends TdFunction {
  const DeletePassportElement({
    required this.type,
  });

  /// [type] Element type
  final PassportElementType type;

  static const String constructor = 'deletePassportElement';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'type': type.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
