import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains Telegram terms of service
@immutable
class TermsOfService extends TdObject {
  const TermsOfService({
    required this.text,
    required this.minUserAge,
    required this.showPopup,
  });

  /// [text] Text of the terms of service
  final FormattedText text;

  /// [minUserAge] The minimum age of a user to be able to accept the terms; 0
  /// if age isn't restricted
  final int minUserAge;

  /// [showPopup] True, if a blocking popup with terms of service must be shown
  /// to the user
  final bool showPopup;

  static const String constructor = 'termsOfService';

  static TermsOfService? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TermsOfService(
      text: FormattedText.fromJson(json['text'])!,
      minUserAge: json['min_user_age'],
      showPopup: json['show_popup'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'text': text.toJson(),
        'min_user_age': minUserAge,
        'show_popup': showPopup,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
