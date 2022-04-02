import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Describes an action associated with a bank card number
class BankCardActionOpenUrl extends TdObject {
  BankCardActionOpenUrl({required this.text, required this.url});

  /// [text] Action text
  final String text;

  /// [url] The URL to be opened
  final String url;

  static const String CONSTRUCTOR = 'bankCardActionOpenUrl';

  static BankCardActionOpenUrl? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BankCardActionOpenUrl(text: json['text'], url: json['url']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'text': this.text, 'url': this.url, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
