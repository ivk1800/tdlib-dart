import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Informs the user that some of the elements in their Telegram Passport
/// contain errors; for bots only. The user will not be able to resend the
/// elements, until the errors are fixed
/// Returns [Ok]
class SetPassportElementErrors extends TdFunction {
  SetPassportElementErrors({required this.userId, required this.errors});

  /// [userId] User identifier
  final int userId;

  /// [errors] The errors
  final List<InputPassportElementError> errors;

  static const String CONSTRUCTOR = 'setPassportElementErrors';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'user_id': this.userId,
        'errors': errors.map((item) => item.toJson()).toList(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
