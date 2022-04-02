import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// The current user has connected a website by logging in using Telegram
/// Login Widget on it
class MessageWebsiteConnected extends MessageContent {
  MessageWebsiteConnected({required this.domainName});

  /// [domainName] Domain name of the connected website
  final String domainName;

  static const String CONSTRUCTOR = 'messageWebsiteConnected';

  static MessageWebsiteConnected? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageWebsiteConnected(domainName: json['domain_name']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'domain_name': this.domainName, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
