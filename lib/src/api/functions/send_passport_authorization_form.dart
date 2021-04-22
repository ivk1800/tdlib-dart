import '../tdapi.dart';

/// Sends a Telegram Passport authorization form, effectively sharing data
/// with the service. This method must be called after
/// getPassportAuthorizationFormAvailableElements if some previously available
/// elements are going to be reused
/// Returns [Ok]
class SendPassportAuthorizationForm extends TdFunction {
  SendPassportAuthorizationForm(
      {required this.autorizationFormId, required this.types});

  /// [autorizationFormId] Authorization form identifier
  final int autorizationFormId;

  /// [types] Types of Telegram Passport elements chosen by user to complete the
  /// authorization form
  final List<PassportElementType> types;

  static const String CONSTRUCTOR = 'sendPassportAuthorizationForm';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'autorization_form_id': this.autorizationFormId,
        'types': types.map((item) => item.toJson()).toList(),
        '@type': CONSTRUCTOR
      };
}
