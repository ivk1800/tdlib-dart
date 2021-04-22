import '../tdapi.dart';

/// Contains Telegram terms of service
class TermsOfService extends TdObject {
  TermsOfService(
      {required this.text, required this.minUserAge, required this.showPopup});

  /// [text] Text of the terms of service
  final FormattedText text;

  /// [minUserAge] The minimum age of a user to be able to accept the terms; 0
  /// if any
  final int minUserAge;

  /// [showPopup] True, if a blocking popup with terms of service must be shown
  /// to the user
  final bool showPopup;

  static const String CONSTRUCTOR = 'termsOfService';

  static TermsOfService? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TermsOfService(
        text: FormattedText.fromJson(json['text'])!,
        minUserAge: json['min_user_age'],
        showPopup: json['show_popup']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'text': this.text.toJson(),
        'min_user_age': this.minUserAge,
        'show_popup': this.showPopup,
        '@type': CONSTRUCTOR
      };
}
