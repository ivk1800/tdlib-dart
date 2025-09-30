import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Informs TDLib that the user fully viewed a sponsored chat
/// Returns [Ok]
@immutable
class ViewSponsoredChat extends TdFunction {
  const ViewSponsoredChat({required this.sponsoredChatUniqueId});

  /// [sponsoredChatUniqueId] Unique identifier of the sponsored chat
  final int sponsoredChatUniqueId;

  static const String constructor = 'viewSponsoredChat';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'sponsored_chat_unique_id': sponsoredChatUniqueId,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
