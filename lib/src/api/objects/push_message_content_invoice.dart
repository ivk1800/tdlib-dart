import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A message with an invoice from a bot
@immutable
class PushMessageContentInvoice extends PushMessageContent {
  const PushMessageContentInvoice({
    required this.price,
    required this.isPinned,
  });

  /// [price] Product price
  final String price;

  /// [isPinned] True, if the message is a pinned message with the specified
  /// content
  final bool isPinned;

  static const String constructor = 'pushMessageContentInvoice';

  static PushMessageContentInvoice? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushMessageContentInvoice(
      price: json['price'],
      isPinned: json['is_pinned'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'price': price,
        'is_pinned': isPinned,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
