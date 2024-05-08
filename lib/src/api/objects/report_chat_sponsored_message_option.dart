import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes an option to report a sponsored message
@immutable
class ReportChatSponsoredMessageOption extends TdObject {
  const ReportChatSponsoredMessageOption({
    required this.id,
    required this.text,
  });

  /// [id] Unique identifier of the option
  final String id;

  /// [text] Text of the option
  final String text;

  static const String constructor = 'reportChatSponsoredMessageOption';

  static ReportChatSponsoredMessageOption? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ReportChatSponsoredMessageOption(
      id: json['id'] as String,
      text: json['text'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'text': text,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
