import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a list of media previews of a bot for the given language and the
/// list of languages for which the bot has dedicated previews
@immutable
class BotMediaPreviewInfo extends TdObject {
  const BotMediaPreviewInfo({
    required this.previews,
    required this.languageCodes,
  });

  /// [previews] List of media previews
  final List<BotMediaPreview> previews;

  /// [languageCodes] List of language codes for which the bot has dedicated
  /// previews
  final List<String> languageCodes;

  static const String constructor = 'botMediaPreviewInfo';

  static BotMediaPreviewInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BotMediaPreviewInfo(
      previews: List<BotMediaPreview>.from(
          ((json['previews'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => BotMediaPreview.fromJson(item))
              .toList()),
      languageCodes: List<String>.from(
          ((json['language_codes'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => item)
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'previews': previews.map((item) => item.toJson()).toList(),
        'language_codes': languageCodes.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
