import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Creates new chat filter. Returns information about the created chat
/// filter. There can be up to getOption("chat_filter_count_max") chat
/// filters, but the limit can be increased with Telegram Premium
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
