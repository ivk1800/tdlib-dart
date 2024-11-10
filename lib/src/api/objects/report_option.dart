import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes an option to report an entity to Telegram
@immutable
class ReportOption extends TdObject {
  const ReportOption({
    required this.id,
    required this.text,
  });

  /// [id] Unique identifier of the option
  final String id;

  /// [text] Text of the option
  final String text;

  static const String constructor = 'reportOption';

  static ReportOption? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ReportOption(
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
