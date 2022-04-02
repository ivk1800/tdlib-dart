import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Represents a filter for message search results
abstract class SearchMessagesFilter extends TdObject {
  const SearchMessagesFilter();

  static const String CONSTRUCTOR = 'searchMessagesFilter';

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

    switch (json["@type"]) {
      case SearchMessagesFilterEmpty.CONSTRUCTOR:
        return SearchMessagesFilterEmpty.fromJson(json);
      case SearchMessagesFilterAnimation.CONSTRUCTOR:
        return SearchMessagesFilterAnimation.fromJson(json);
      case SearchMessagesFilterAudio.CONSTRUCTOR:
        return SearchMessagesFilterAudio.fromJson(json);
      case SearchMessagesFilterDocument.CONSTRUCTOR:
        return SearchMessagesFilterDocument.fromJson(json);
      case SearchMessagesFilterPhoto.CONSTRUCTOR:
        return SearchMessagesFilterPhoto.fromJson(json);
      case SearchMessagesFilterVideo.CONSTRUCTOR:
        return SearchMessagesFilterVideo.fromJson(json);
      case SearchMessagesFilterVoiceNote.CONSTRUCTOR:
        return SearchMessagesFilterVoiceNote.fromJson(json);
      case SearchMessagesFilterPhotoAndVideo.CONSTRUCTOR:
        return SearchMessagesFilterPhotoAndVideo.fromJson(json);
      case SearchMessagesFilterUrl.CONSTRUCTOR:
        return SearchMessagesFilterUrl.fromJson(json);
      case SearchMessagesFilterChatPhoto.CONSTRUCTOR:
        return SearchMessagesFilterChatPhoto.fromJson(json);
      case SearchMessagesFilterVideoNote.CONSTRUCTOR:
        return SearchMessagesFilterVideoNote.fromJson(json);
      case SearchMessagesFilterVoiceAndVideoNote.CONSTRUCTOR:
        return SearchMessagesFilterVoiceAndVideoNote.fromJson(json);
      case SearchMessagesFilterMention.CONSTRUCTOR:
        return SearchMessagesFilterMention.fromJson(json);
      case SearchMessagesFilterUnreadMention.CONSTRUCTOR:
        return SearchMessagesFilterUnreadMention.fromJson(json);
      case SearchMessagesFilterFailedToSend.CONSTRUCTOR:
        return SearchMessagesFilterFailedToSend.fromJson(json);
      case SearchMessagesFilterPinned.CONSTRUCTOR:
        return SearchMessagesFilterPinned.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
