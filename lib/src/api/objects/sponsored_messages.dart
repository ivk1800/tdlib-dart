import '../tdapi.dart';

/// Contains a list of sponsored messages
class SponsoredMessages extends TdObject {
  SponsoredMessages({required this.messages});

  /// [messages] List of sponsored messages
  final List<SponsoredMessage> messages;

  static const String CONSTRUCTOR = 'sponsoredMessages';

  static SponsoredMessages? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SponsoredMessages(
        messages: List<SponsoredMessage>.from((json['messages'] ?? [])
            .map((item) => SponsoredMessage.fromJson(item))
            .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'messages': messages.map((item) => item.toJson()).toList(),
        '@type': CONSTRUCTOR
      };
}
