import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns the list of features available on the specific chat boost level;
/// this is an offline request
/// Returns [ChatBoostLevelFeatures]
@immutable
class GetChatBoostLevelFeatures extends TdFunction {
  const GetChatBoostLevelFeatures({
    required this.isChannel,
    required this.level,
  });

  /// [isChannel] Pass true to get the list of features for channels; pass false
  /// to get the list of features for supergroups
  final bool isChannel;

  /// [level] Chat boost level
  final int level;

  static const String constructor = 'getChatBoostLevelFeatures';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'is_channel': isChannel,
        'level': level,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
