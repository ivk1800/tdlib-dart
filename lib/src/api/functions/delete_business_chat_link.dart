import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Deletes a business chat link of the current account
/// Returns [Ok]
@immutable
class DeleteBusinessChatLink extends TdFunction {
  const DeleteBusinessChatLink({
    required this.link,
  });

  /// [link] The link to delete
  final String link;

  static const String constructor = 'deleteBusinessChatLink';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'link': link,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
