import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a list of sponsored chats
@immutable
class SponsoredChats extends TdObject {
  const SponsoredChats({required this.chats});

  /// [chats] List of sponsored chats
  final List<SponsoredChat> chats;

  static const String constructor = 'sponsoredChats';

  static SponsoredChats? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SponsoredChats(
      chats: List<SponsoredChat>.from(
        ((json['chats'] as List<dynamic>?) ?? <dynamic>[])
            .map((item) => SponsoredChat.fromJson(item))
            .toList(),
      ),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chats': chats.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
