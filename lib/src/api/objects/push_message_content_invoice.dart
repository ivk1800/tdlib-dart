import '../tdapi.dart';

/// A message with an invoice from a bot
class PushMessageContentInvoice extends PushMessageContent {
  PushMessageContentInvoice({required this.price, required this.isPinned});

  /// [price] Product price
  final String price;

  /// [isPinned] True, if the message is a pinned message with the specified
  /// content
  final bool isPinned;

  static const String CONSTRUCTOR = 'pushMessageContentInvoice';

  static PushMessageContentInvoice? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushMessageContentInvoice(
        price: json['price'], isPinned: json['is_pinned']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'price': this.price, 'is_pinned': this.isPinned, '@type': CONSTRUCTOR};
}
