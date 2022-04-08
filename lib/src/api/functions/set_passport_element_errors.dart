import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Informs the user that some of the elements in their Telegram Passport
/// contain errors; for bots only. The user will not be able to resend the
/// elements, until the errors are fixed
/// Returns [Ok]
@immutable
class SetPassportElementErrors extends TdFunction {
  const SetPassportElementErrors({
    required this.userId,
    required this.errors,
  });

  /// [userId] User identifier
  final int userId;

  /// [errors] The errors
  final List<InputPassportElementError> errors;

  static const String constructor = 'setPassportElementErrors';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_id': userId,
        'errors': errors.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
