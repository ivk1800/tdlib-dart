import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A Telegram Passport element containing the user's identity card
@immutable
class PassportElementTypeIdentityCard extends PassportElementType {
  const PassportElementTypeIdentityCard();

  static const String constructor = 'passportElementTypeIdentityCard';

  static PassportElementTypeIdentityCard? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PassportElementTypeIdentityCard();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
