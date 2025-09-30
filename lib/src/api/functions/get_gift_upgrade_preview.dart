import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns examples of possible upgraded gifts for a regular gift
/// Returns [GiftUpgradePreview]
@immutable
class GetGiftUpgradePreview extends TdFunction {
  const GetGiftUpgradePreview({required this.giftId});

  /// [giftId] Identifier of the gift
  final int giftId;

  static const String constructor = 'getGiftUpgradePreview';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'gift_id': giftId,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
