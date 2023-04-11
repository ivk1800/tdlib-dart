import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a list of hashtags
@immutable
class Hashtags extends TdObject {
  const Hashtags({
    required this.hashtags,
  });

  /// [hashtags] A list of hashtags
  final List<String> hashtags;

  static const String constructor = 'hashtags';

  static Hashtags? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Hashtags(
      hashtags: List<String>.from(
          ((json['hashtags'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => item)
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'hashtags': hashtags.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
