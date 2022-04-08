import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a filter for message search results
@immutable
abstract class SearchMessagesFilter extends TdObject {
  const SearchMessagesFilter();

  static const String constructor = 'searchMessagesFilter';

  /// Inherited by:
  /// [SearchMessagesFilterEmpty]
  /// [SearchMessagesFilterAnimation]
  /// [SearchMessagesFilterAudio]
  /// [SearchMessagesFilterDocument]
  /// [SearchMessagesFilterPhoto]
  /// [SearchMessagesFilterVideo]
  /// [SearchMessagesFilterVoiceNote]
  /// [SearchMessagesFilterPhotoAndVideo]
  /// [SearchMessagesFilterUrl]
  /// [SearchMessagesFilterChatPhoto]
  /// [SearchMessagesFilterVideoNote]
  /// [SearchMessagesFilterVoiceAndVideoNote]
  /// [SearchMessagesFilterMention]
  /// [SearchMessagesFilterUnreadMention]
  /// [SearchMessagesFilterFailedToSend]
  /// [SearchMessagesFilterPinned]
  static SearchMessagesFilter? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case SearchMessagesFilterEmpty.constructor:
        return SearchMessagesFilterEmpty.fromJson(json);
      case SearchMessagesFilterAnimation.constructor:
        return SearchMessagesFilterAnimation.fromJson(json);
      case SearchMessagesFilterAudio.constructor:
        return SearchMessagesFilterAudio.fromJson(json);
      case SearchMessagesFilterDocument.constructor:
        return SearchMessagesFilterDocument.fromJson(json);
      case SearchMessagesFilterPhoto.constructor:
        return SearchMessagesFilterPhoto.fromJson(json);
      case SearchMessagesFilterVideo.constructor:
        return SearchMessagesFilterVideo.fromJson(json);
      case SearchMessagesFilterVoiceNote.constructor:
        return SearchMessagesFilterVoiceNote.fromJson(json);
      case SearchMessagesFilterPhotoAndVideo.constructor:
        return SearchMessagesFilterPhotoAndVideo.fromJson(json);
      case SearchMessagesFilterUrl.constructor:
        return SearchMessagesFilterUrl.fromJson(json);
      case SearchMessagesFilterChatPhoto.constructor:
        return SearchMessagesFilterChatPhoto.fromJson(json);
      case SearchMessagesFilterVideoNote.constructor:
        return SearchMessagesFilterVideoNote.fromJson(json);
      case SearchMessagesFilterVoiceAndVideoNote.constructor:
        return SearchMessagesFilterVoiceAndVideoNote.fromJson(json);
      case SearchMessagesFilterMention.constructor:
        return SearchMessagesFilterMention.fromJson(json);
      case SearchMessagesFilterUnreadMention.constructor:
        return SearchMessagesFilterUnreadMention.fromJson(json);
      case SearchMessagesFilterFailedToSend.constructor:
        return SearchMessagesFilterFailedToSend.fromJson(json);
      case SearchMessagesFilterPinned.constructor:
        return SearchMessagesFilterPinned.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
