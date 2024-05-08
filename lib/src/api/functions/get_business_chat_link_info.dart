import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns information about a business chat link
/// Returns [BusinessChatLinkInfo]
@immutable
class GetBusinessChatLinkInfo extends TdFunction {
  const GetBusinessChatLinkInfo({
    required this.linkName,
  });

  /// [linkName] Name of the link
  final String linkName;

  static const String constructor = 'getBusinessChatLinkInfo';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'link_name': linkName,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
