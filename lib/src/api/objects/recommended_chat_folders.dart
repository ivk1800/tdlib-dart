import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a list of recommended chat folders
@immutable
class RecommendedChatFolders extends TdObject {
  const RecommendedChatFolders({
    required this.chatFolders,
  });

  /// [chatFolders] List of recommended chat folders
  final List<RecommendedChatFolder> chatFolders;

  static const String constructor = 'recommendedChatFolders';

  static RecommendedChatFolders? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RecommendedChatFolders(
      chatFolders: List<RecommendedChatFolder>.from(
          ((json['chat_folders'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => RecommendedChatFolder.fromJson(item))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_folders': chatFolders.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
