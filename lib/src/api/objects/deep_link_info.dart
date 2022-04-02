import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Contains information about a tg: deep link
class DeepLinkInfo extends TdObject {
  DeepLinkInfo({required this.text, required this.needUpdateApplication});

  /// [text] Text to be shown to the user
  final FormattedText text;

  /// [needUpdateApplication] True, if the user must be asked to update the
  /// application
  final bool needUpdateApplication;

  static const String CONSTRUCTOR = 'deepLinkInfo';

  static DeepLinkInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DeepLinkInfo(
        text: FormattedText.fromJson(json['text'])!,
        needUpdateApplication: json['need_update_application']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'text': this.text.toJson(),
        'need_update_application': this.needUpdateApplication,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
