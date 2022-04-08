import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Creates new chat filter. Returns information about the created chat filter
/// Returns [ChatFilterInfo]
@immutable
class CreateChatFilter extends TdFunction {
  const CreateChatFilter({
    required this.filter,
  });

  /// [filter] Chat filter
  final ChatFilter filter;

  static const String constructor = 'createChatFilter';

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
