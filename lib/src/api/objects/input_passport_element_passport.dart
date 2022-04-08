import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A Telegram Passport element to be saved containing the user's passport
@immutable
class InputPassportElementPassport extends InputPassportElement {
  const InputPassportElementPassport({
    required this.passport,
  });

  /// [passport] The passport to be saved
  final InputIdentityDocument passport;

  static const String constructor = 'inputPassportElementPassport';

  static InputPassportElementPassport? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPassportElementPassport(
      passport: InputIdentityDocument.fromJson(json['passport'])!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'passport': passport.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
