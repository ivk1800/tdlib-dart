import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes the list of pinned gifts on the current user's or the channel's
/// profile page; requires can_post_messages administrator right in the
/// channel chat
/// Returns [Ok]
@immutable
class SetPinnedGifts extends TdFunction {
  const SetPinnedGifts({required this.ownerId, required this.receivedGiftIds});

  /// [ownerId] Identifier of the user or the channel chat that received the
  /// gifts
  final MessageSender ownerId;

  /// [receivedGiftIds] New list of pinned gifts. All gifts must be upgraded and
  /// saved on the profile page first. There can be up to
  /// getOption("pinned_gift_count_max") pinned gifts
  final List<String> receivedGiftIds;

  static const String constructor = 'setPinnedGifts';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'owner_id': ownerId.toJson(),
    'received_gift_ids': receivedGiftIds.map((item) => item).toList(),
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
