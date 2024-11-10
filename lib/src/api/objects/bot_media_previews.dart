import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a list of media previews of a bot
@immutable
class BotMediaPreviews extends TdObject {
  const BotMediaPreviews({
    required this.previews,
  });

  /// [previews] List of media previews
  final List<BotMediaPreview> previews;

  static const String constructor = 'botMediaPreviews';

  static BotMediaPreviews? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BotMediaPreviews(
      previews: List<BotMediaPreview>.from(
          ((json['previews'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => BotMediaPreview.fromJson(item))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'previews': previews.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
