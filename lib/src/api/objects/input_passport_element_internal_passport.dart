import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A Telegram Passport element to be saved containing the user's internal
/// passport
@immutable
class InputPassportElementInternalPassport extends InputPassportElement {
  const InputPassportElementInternalPassport({
    required this.internalPassport,
  });

  /// [internalPassport] The internal passport to be saved
  final InputIdentityDocument internalPassport;

  static const String constructor = 'inputPassportElementInternalPassport';

  static InputPassportElementInternalPassport? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPassportElementInternalPassport(
      internalPassport:
          InputIdentityDocument.fromJson(json['internal_passport'])!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'internal_passport': internalPassport.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
