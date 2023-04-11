import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A Telegram Passport element to be saved containing the user's identity
/// card
@immutable
class InputPassportElementIdentityCard extends InputPassportElement {
  const InputPassportElementIdentityCard({
    required this.identityCard,
  });

  /// [identityCard] The identity card to be saved
  final InputIdentityDocument identityCard;

  static const String constructor = 'inputPassportElementIdentityCard';

  static InputPassportElementIdentityCard? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPassportElementIdentityCard(
      identityCard: InputIdentityDocument.fromJson(
          json['identity_card'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'identity_card': identityCard.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
