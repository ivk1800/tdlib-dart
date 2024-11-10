import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Clears the list of recently searched for hashtags or cashtags
/// Returns [Ok]
@immutable
class ClearSearchedForTags extends TdFunction {
  const ClearSearchedForTags({
    required this.clearCashtags,
  });

  /// [clearCashtags] Pass true to clear the list of recently searched for
  /// cashtags; otherwise, the list of recently searched for hashtags will be
  /// cleared
  final bool clearCashtags;

  static const String constructor = 'clearSearchedForTags';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'clear_cashtags': clearCashtags,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
