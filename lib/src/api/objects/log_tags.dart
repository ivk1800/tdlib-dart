import '../tdapi.dart';

/// Contains a list of available TDLib internal log tags
class LogTags extends TdObject {
  LogTags({required this.tags});

  /// [tags] List of log tags
  final List<String> tags;

  static const String CONSTRUCTOR = 'logTags';

  static LogTags? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LogTags(
        tags: List<String>.from(
            (json['tags'] ?? []).map((item) => item).toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'tags': tags.map((item) => item).toList(), '@type': CONSTRUCTOR};
}
