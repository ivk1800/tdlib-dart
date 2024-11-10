import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A user gifted Telegram Stars
@immutable
class UserTransactionPurposeGiftedStars extends UserTransactionPurpose {
  const UserTransactionPurposeGiftedStars({
    this.sticker,
  });

  /// [sticker] A sticker to be shown in the transaction information; may be
  /// null if unknown
  final Sticker? sticker;

  static const String constructor = 'userTransactionPurposeGiftedStars';

  static UserTransactionPurposeGiftedStars? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UserTransactionPurposeGiftedStars(
      sticker: Sticker.fromJson(json['sticker'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'sticker': sticker?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
