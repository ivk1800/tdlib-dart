import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns default icon name for a filter. Can be called synchronously
/// Returns [Text]
@immutable
class GetChatFilterDefaultIconName extends TdFunction {
  const GetChatFilterDefaultIconName({
    required this.filter,
  });

  /// [filter] Chat filter
  final ChatFilter filter;

  static const String constructor = 'getChatFilterDefaultIconName';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'filter': filter.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
