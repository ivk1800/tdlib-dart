import 'package:tdlib/td_api.dart';

extension TdErrorCopyExtension on TdError {
  TdError copy({int? code, String? message}) =>
      TdError(code: code ?? this.code, message: message ?? this.message);
}

extension TdlibParametersCopyExtension on TdlibParameters {
  TdlibParameters copy(
          {bool? useTestDc,
          String? databaseDirectory,
          String? filesDirectory,
          bool? useFileDatabase,
          bool? useChatInfoDatabase,
          bool? useMessageDatabase,
          bool? useSecretChats,
          int? apiId,
          String? apiHash,
          String? systemLanguageCode,
          String? deviceModel,
          String? systemVersion,
          String? applicationVersion,
          bool? enableStorageOptimizer,
          bool? ignoreFileNames}) =>
      TdlibParameters(
          useTestDc: useTestDc ?? this.useTestDc,
          databaseDirectory: databaseDirectory ?? this.databaseDirectory,
          filesDirectory: filesDirectory ?? this.filesDirectory,
          useFileDatabase: useFileDatabase ?? this.useFileDatabase,
          useChatInfoDatabase: useChatInfoDatabase ?? this.useChatInfoDatabase,
          useMessageDatabase: useMessageDatabase ?? this.useMessageDatabase,
          useSecretChats: useSecretChats ?? this.useSecretChats,
          apiId: apiId ?? this.apiId,
          apiHash: apiHash ?? this.apiHash,
          systemLanguageCode: systemLanguageCode ?? this.systemLanguageCode,
          deviceModel: deviceModel ?? this.deviceModel,
          systemVersion: systemVersion ?? this.systemVersion,
          applicationVersion: applicationVersion ?? this.applicationVersion,
          enableStorageOptimizer:
              enableStorageOptimizer ?? this.enableStorageOptimizer,
          ignoreFileNames: ignoreFileNames ?? this.ignoreFileNames);
}

extension AuthenticationCodeTypeTelegramMessageCopyExtension
    on AuthenticationCodeTypeTelegramMessage {
  AuthenticationCodeTypeTelegramMessage copy({int? length}) =>
      AuthenticationCodeTypeTelegramMessage(length: length ?? this.length);
}

extension AuthenticationCodeTypeSmsCopyExtension on AuthenticationCodeTypeSms {
  AuthenticationCodeTypeSms copy({int? length}) =>
      AuthenticationCodeTypeSms(length: length ?? this.length);
}

extension AuthenticationCodeTypeCallCopyExtension
    on AuthenticationCodeTypeCall {
  AuthenticationCodeTypeCall copy({int? length}) =>
      AuthenticationCodeTypeCall(length: length ?? this.length);
}

extension AuthenticationCodeTypeFlashCallCopyExtension
    on AuthenticationCodeTypeFlashCall {
  AuthenticationCodeTypeFlashCall copy({String? pattern}) =>
      AuthenticationCodeTypeFlashCall(pattern: pattern ?? this.pattern);
}

extension AuthenticationCodeInfoCopyExtension on AuthenticationCodeInfo {
  AuthenticationCodeInfo copy(
          {String? phoneNumber,
          AuthenticationCodeType? type,
          AuthenticationCodeType? nextType,
          int? timeout}) =>
      AuthenticationCodeInfo(
          phoneNumber: phoneNumber ?? this.phoneNumber,
          type: type ?? this.type,
          nextType: nextType ?? this.nextType,
          timeout: timeout ?? this.timeout);
}

extension EmailAddressAuthenticationCodeInfoCopyExtension
    on EmailAddressAuthenticationCodeInfo {
  EmailAddressAuthenticationCodeInfo copy(
          {String? emailAddressPattern, int? length}) =>
      EmailAddressAuthenticationCodeInfo(
          emailAddressPattern: emailAddressPattern ?? this.emailAddressPattern,
          length: length ?? this.length);
}

extension TextEntityCopyExtension on TextEntity {
  TextEntity copy({int? offset, int? length, TextEntityType? type}) =>
      TextEntity(
          offset: offset ?? this.offset,
          length: length ?? this.length,
          type: type ?? this.type);
}

extension TextEntitiesCopyExtension on TextEntities {
  TextEntities copy({List<TextEntity>? entities}) =>
      TextEntities(entities: entities ?? this.entities);
}

extension FormattedTextCopyExtension on FormattedText {
  FormattedText copy({String? text, List<TextEntity>? entities}) =>
      FormattedText(
          text: text ?? this.text, entities: entities ?? this.entities);
}

extension TermsOfServiceCopyExtension on TermsOfService {
  TermsOfService copy(
          {FormattedText? text, int? minUserAge, bool? showPopup}) =>
      TermsOfService(
          text: text ?? this.text,
          minUserAge: minUserAge ?? this.minUserAge,
          showPopup: showPopup ?? this.showPopup);
}

extension AuthorizationStateWaitEncryptionKeyCopyExtension
    on AuthorizationStateWaitEncryptionKey {
  AuthorizationStateWaitEncryptionKey copy({bool? isEncrypted}) =>
      AuthorizationStateWaitEncryptionKey(
          isEncrypted: isEncrypted ?? this.isEncrypted);
}

extension AuthorizationStateWaitCodeCopyExtension
    on AuthorizationStateWaitCode {
  AuthorizationStateWaitCode copy({AuthenticationCodeInfo? codeInfo}) =>
      AuthorizationStateWaitCode(codeInfo: codeInfo ?? this.codeInfo);
}

extension AuthorizationStateWaitOtherDeviceConfirmationCopyExtension
    on AuthorizationStateWaitOtherDeviceConfirmation {
  AuthorizationStateWaitOtherDeviceConfirmation copy({String? link}) =>
      AuthorizationStateWaitOtherDeviceConfirmation(link: link ?? this.link);
}

extension AuthorizationStateWaitRegistrationCopyExtension
    on AuthorizationStateWaitRegistration {
  AuthorizationStateWaitRegistration copy({TermsOfService? termsOfService}) =>
      AuthorizationStateWaitRegistration(
          termsOfService: termsOfService ?? this.termsOfService);
}

extension AuthorizationStateWaitPasswordCopyExtension
    on AuthorizationStateWaitPassword {
  AuthorizationStateWaitPassword copy(
          {String? passwordHint,
          bool? hasRecoveryEmailAddress,
          String? recoveryEmailAddressPattern}) =>
      AuthorizationStateWaitPassword(
          passwordHint: passwordHint ?? this.passwordHint,
          hasRecoveryEmailAddress:
              hasRecoveryEmailAddress ?? this.hasRecoveryEmailAddress,
          recoveryEmailAddressPattern:
              recoveryEmailAddressPattern ?? this.recoveryEmailAddressPattern);
}

extension PasswordStateCopyExtension on PasswordState {
  PasswordState copy(
          {bool? hasPassword,
          String? passwordHint,
          bool? hasRecoveryEmailAddress,
          bool? hasPassportData,
          EmailAddressAuthenticationCodeInfo? recoveryEmailAddressCodeInfo}) =>
      PasswordState(
          hasPassword: hasPassword ?? this.hasPassword,
          passwordHint: passwordHint ?? this.passwordHint,
          hasRecoveryEmailAddress:
              hasRecoveryEmailAddress ?? this.hasRecoveryEmailAddress,
          hasPassportData: hasPassportData ?? this.hasPassportData,
          recoveryEmailAddressCodeInfo: recoveryEmailAddressCodeInfo ??
              this.recoveryEmailAddressCodeInfo);
}

extension RecoveryEmailAddressCopyExtension on RecoveryEmailAddress {
  RecoveryEmailAddress copy({String? recoveryEmailAddress}) =>
      RecoveryEmailAddress(
          recoveryEmailAddress:
              recoveryEmailAddress ?? this.recoveryEmailAddress);
}

extension TemporaryPasswordStateCopyExtension on TemporaryPasswordState {
  TemporaryPasswordState copy({bool? hasPassword, int? validFor}) =>
      TemporaryPasswordState(
          hasPassword: hasPassword ?? this.hasPassword,
          validFor: validFor ?? this.validFor);
}

extension LocalFileCopyExtension on LocalFile {
  LocalFile copy(
          {String? path,
          bool? canBeDownloaded,
          bool? canBeDeleted,
          bool? isDownloadingActive,
          bool? isDownloadingCompleted,
          int? downloadOffset,
          int? downloadedPrefixSize,
          int? downloadedSize}) =>
      LocalFile(
          path: path ?? this.path,
          canBeDownloaded: canBeDownloaded ?? this.canBeDownloaded,
          canBeDeleted: canBeDeleted ?? this.canBeDeleted,
          isDownloadingActive: isDownloadingActive ?? this.isDownloadingActive,
          isDownloadingCompleted:
              isDownloadingCompleted ?? this.isDownloadingCompleted,
          downloadOffset: downloadOffset ?? this.downloadOffset,
          downloadedPrefixSize:
              downloadedPrefixSize ?? this.downloadedPrefixSize,
          downloadedSize: downloadedSize ?? this.downloadedSize);
}

extension RemoteFileCopyExtension on RemoteFile {
  RemoteFile copy(
          {String? id,
          String? uniqueId,
          bool? isUploadingActive,
          bool? isUploadingCompleted,
          int? uploadedSize}) =>
      RemoteFile(
          id: id ?? this.id,
          uniqueId: uniqueId ?? this.uniqueId,
          isUploadingActive: isUploadingActive ?? this.isUploadingActive,
          isUploadingCompleted:
              isUploadingCompleted ?? this.isUploadingCompleted,
          uploadedSize: uploadedSize ?? this.uploadedSize);
}

extension FileCopyExtension on File {
  File copy(
          {int? id,
          int? size,
          int? expectedSize,
          LocalFile? local,
          RemoteFile? remote}) =>
      File(
          id: id ?? this.id,
          size: size ?? this.size,
          expectedSize: expectedSize ?? this.expectedSize,
          local: local ?? this.local,
          remote: remote ?? this.remote);
}

extension InputFileIdCopyExtension on InputFileId {
  InputFileId copy({int? id}) => InputFileId(id: id ?? this.id);
}

extension InputFileRemoteCopyExtension on InputFileRemote {
  InputFileRemote copy({String? id}) => InputFileRemote(id: id ?? this.id);
}

extension InputFileLocalCopyExtension on InputFileLocal {
  InputFileLocal copy({String? path}) =>
      InputFileLocal(path: path ?? this.path);
}

extension InputFileGeneratedCopyExtension on InputFileGenerated {
  InputFileGenerated copy(
          {String? originalPath, String? conversion, int? expectedSize}) =>
      InputFileGenerated(
          originalPath: originalPath ?? this.originalPath,
          conversion: conversion ?? this.conversion,
          expectedSize: expectedSize ?? this.expectedSize);
}

extension PhotoSizeCopyExtension on PhotoSize {
  PhotoSize copy(
          {String? type,
          File? photo,
          int? width,
          int? height,
          List<int>? progressiveSizes}) =>
      PhotoSize(
          type: type ?? this.type,
          photo: photo ?? this.photo,
          width: width ?? this.width,
          height: height ?? this.height,
          progressiveSizes: progressiveSizes ?? this.progressiveSizes);
}

extension MinithumbnailCopyExtension on Minithumbnail {
  Minithumbnail copy({int? width, int? height, String? data}) => Minithumbnail(
      width: width ?? this.width,
      height: height ?? this.height,
      data: data ?? this.data);
}

extension ThumbnailCopyExtension on Thumbnail {
  Thumbnail copy(
          {ThumbnailFormat? format, int? width, int? height, File? file}) =>
      Thumbnail(
          format: format ?? this.format,
          width: width ?? this.width,
          height: height ?? this.height,
          file: file ?? this.file);
}

extension MaskPositionCopyExtension on MaskPosition {
  MaskPosition copy(
          {MaskPoint? point, double? xShift, double? yShift, double? scale}) =>
      MaskPosition(
          point: point ?? this.point,
          xShift: xShift ?? this.xShift,
          yShift: yShift ?? this.yShift,
          scale: scale ?? this.scale);
}

extension ClosedVectorPathCopyExtension on ClosedVectorPath {
  ClosedVectorPath copy({List<VectorPathCommand>? commands}) =>
      ClosedVectorPath(commands: commands ?? this.commands);
}

extension PollOptionCopyExtension on PollOption {
  PollOption copy(
          {String? text,
          int? voterCount,
          int? votePercentage,
          bool? isChosen,
          bool? isBeingChosen}) =>
      PollOption(
          text: text ?? this.text,
          voterCount: voterCount ?? this.voterCount,
          votePercentage: votePercentage ?? this.votePercentage,
          isChosen: isChosen ?? this.isChosen,
          isBeingChosen: isBeingChosen ?? this.isBeingChosen);
}

extension PollTypeRegularCopyExtension on PollTypeRegular {
  PollTypeRegular copy({bool? allowMultipleAnswers}) => PollTypeRegular(
      allowMultipleAnswers: allowMultipleAnswers ?? this.allowMultipleAnswers);
}

extension PollTypeQuizCopyExtension on PollTypeQuiz {
  PollTypeQuiz copy({int? correctOptionId, FormattedText? explanation}) =>
      PollTypeQuiz(
          correctOptionId: correctOptionId ?? this.correctOptionId,
          explanation: explanation ?? this.explanation);
}

extension AnimationCopyExtension on Animation {
  Animation copy(
          {int? duration,
          int? width,
          int? height,
          String? fileName,
          String? mimeType,
          bool? hasStickers,
          Minithumbnail? minithumbnail,
          Thumbnail? thumbnail,
          File? animation}) =>
      Animation(
          duration: duration ?? this.duration,
          width: width ?? this.width,
          height: height ?? this.height,
          fileName: fileName ?? this.fileName,
          mimeType: mimeType ?? this.mimeType,
          hasStickers: hasStickers ?? this.hasStickers,
          minithumbnail: minithumbnail ?? this.minithumbnail,
          thumbnail: thumbnail ?? this.thumbnail,
          animation: animation ?? this.animation);
}

extension AudioCopyExtension on Audio {
  Audio copy(
          {int? duration,
          String? title,
          String? performer,
          String? fileName,
          String? mimeType,
          Minithumbnail? albumCoverMinithumbnail,
          Thumbnail? albumCoverThumbnail,
          File? audio}) =>
      Audio(
          duration: duration ?? this.duration,
          title: title ?? this.title,
          performer: performer ?? this.performer,
          fileName: fileName ?? this.fileName,
          mimeType: mimeType ?? this.mimeType,
          albumCoverMinithumbnail:
              albumCoverMinithumbnail ?? this.albumCoverMinithumbnail,
          albumCoverThumbnail: albumCoverThumbnail ?? this.albumCoverThumbnail,
          audio: audio ?? this.audio);
}

extension DocumentCopyExtension on Document {
  Document copy(
          {String? fileName,
          String? mimeType,
          Minithumbnail? minithumbnail,
          Thumbnail? thumbnail,
          File? document}) =>
      Document(
          fileName: fileName ?? this.fileName,
          mimeType: mimeType ?? this.mimeType,
          minithumbnail: minithumbnail ?? this.minithumbnail,
          thumbnail: thumbnail ?? this.thumbnail,
          document: document ?? this.document);
}

extension PhotoCopyExtension on Photo {
  Photo copy(
          {bool? hasStickers,
          Minithumbnail? minithumbnail,
          List<PhotoSize>? sizes}) =>
      Photo(
          hasStickers: hasStickers ?? this.hasStickers,
          minithumbnail: minithumbnail ?? this.minithumbnail,
          sizes: sizes ?? this.sizes);
}

extension StickerCopyExtension on Sticker {
  Sticker copy(
          {int? setId,
          int? width,
          int? height,
          String? emoji,
          bool? isAnimated,
          bool? isMask,
          MaskPosition? maskPosition,
          List<ClosedVectorPath>? outline,
          Thumbnail? thumbnail,
          File? sticker}) =>
      Sticker(
          setId: setId ?? this.setId,
          width: width ?? this.width,
          height: height ?? this.height,
          emoji: emoji ?? this.emoji,
          isAnimated: isAnimated ?? this.isAnimated,
          isMask: isMask ?? this.isMask,
          maskPosition: maskPosition ?? this.maskPosition,
          outline: outline ?? this.outline,
          thumbnail: thumbnail ?? this.thumbnail,
          sticker: sticker ?? this.sticker);
}

extension VideoCopyExtension on Video {
  Video copy(
          {int? duration,
          int? width,
          int? height,
          String? fileName,
          String? mimeType,
          bool? hasStickers,
          bool? supportsStreaming,
          Minithumbnail? minithumbnail,
          Thumbnail? thumbnail,
          File? video}) =>
      Video(
          duration: duration ?? this.duration,
          width: width ?? this.width,
          height: height ?? this.height,
          fileName: fileName ?? this.fileName,
          mimeType: mimeType ?? this.mimeType,
          hasStickers: hasStickers ?? this.hasStickers,
          supportsStreaming: supportsStreaming ?? this.supportsStreaming,
          minithumbnail: minithumbnail ?? this.minithumbnail,
          thumbnail: thumbnail ?? this.thumbnail,
          video: video ?? this.video);
}

extension VideoNoteCopyExtension on VideoNote {
  VideoNote copy(
          {int? duration,
          int? length,
          Minithumbnail? minithumbnail,
          Thumbnail? thumbnail,
          File? video}) =>
      VideoNote(
          duration: duration ?? this.duration,
          length: length ?? this.length,
          minithumbnail: minithumbnail ?? this.minithumbnail,
          thumbnail: thumbnail ?? this.thumbnail,
          video: video ?? this.video);
}

extension VoiceNoteCopyExtension on VoiceNote {
  VoiceNote copy(
          {int? duration, String? waveform, String? mimeType, File? voice}) =>
      VoiceNote(
          duration: duration ?? this.duration,
          waveform: waveform ?? this.waveform,
          mimeType: mimeType ?? this.mimeType,
          voice: voice ?? this.voice);
}

extension ContactCopyExtension on Contact {
  Contact copy(
          {String? phoneNumber,
          String? firstName,
          String? lastName,
          String? vcard,
          int? userId}) =>
      Contact(
          phoneNumber: phoneNumber ?? this.phoneNumber,
          firstName: firstName ?? this.firstName,
          lastName: lastName ?? this.lastName,
          vcard: vcard ?? this.vcard,
          userId: userId ?? this.userId);
}

extension LocationCopyExtension on Location {
  Location copy(
          {double? latitude, double? longitude, double? horizontalAccuracy}) =>
      Location(
          latitude: latitude ?? this.latitude,
          longitude: longitude ?? this.longitude,
          horizontalAccuracy: horizontalAccuracy ?? this.horizontalAccuracy);
}

extension VenueCopyExtension on Venue {
  Venue copy(
          {Location? location,
          String? title,
          String? address,
          String? provider,
          String? id,
          String? type}) =>
      Venue(
          location: location ?? this.location,
          title: title ?? this.title,
          address: address ?? this.address,
          provider: provider ?? this.provider,
          id: id ?? this.id,
          type: type ?? this.type);
}

extension GameCopyExtension on Game {
  Game copy(
          {int? id,
          String? shortName,
          String? title,
          FormattedText? text,
          String? description,
          Photo? photo,
          Animation? animation}) =>
      Game(
          id: id ?? this.id,
          shortName: shortName ?? this.shortName,
          title: title ?? this.title,
          text: text ?? this.text,
          description: description ?? this.description,
          photo: photo ?? this.photo,
          animation: animation ?? this.animation);
}

extension PollCopyExtension on Poll {
  Poll copy(
          {int? id,
          String? question,
          List<PollOption>? options,
          int? totalVoterCount,
          List<int>? recentVoterUserIds,
          bool? isAnonymous,
          PollType? type,
          int? openPeriod,
          int? closeDate,
          bool? isClosed}) =>
      Poll(
          id: id ?? this.id,
          question: question ?? this.question,
          options: options ?? this.options,
          totalVoterCount: totalVoterCount ?? this.totalVoterCount,
          recentVoterUserIds: recentVoterUserIds ?? this.recentVoterUserIds,
          isAnonymous: isAnonymous ?? this.isAnonymous,
          type: type ?? this.type,
          openPeriod: openPeriod ?? this.openPeriod,
          closeDate: closeDate ?? this.closeDate,
          isClosed: isClosed ?? this.isClosed);
}

extension ProfilePhotoCopyExtension on ProfilePhoto {
  ProfilePhoto copy({int? id, File? small, File? big, bool? hasAnimation}) =>
      ProfilePhoto(
          id: id ?? this.id,
          small: small ?? this.small,
          big: big ?? this.big,
          hasAnimation: hasAnimation ?? this.hasAnimation);
}

extension ChatPhotoInfoCopyExtension on ChatPhotoInfo {
  ChatPhotoInfo copy({File? small, File? big, bool? hasAnimation}) =>
      ChatPhotoInfo(
          small: small ?? this.small,
          big: big ?? this.big,
          hasAnimation: hasAnimation ?? this.hasAnimation);
}

extension UserTypeBotCopyExtension on UserTypeBot {
  UserTypeBot copy(
          {bool? canJoinGroups,
          bool? canReadAllGroupMessages,
          bool? isInline,
          String? inlineQueryPlaceholder,
          bool? needLocation}) =>
      UserTypeBot(
          canJoinGroups: canJoinGroups ?? this.canJoinGroups,
          canReadAllGroupMessages:
              canReadAllGroupMessages ?? this.canReadAllGroupMessages,
          isInline: isInline ?? this.isInline,
          inlineQueryPlaceholder:
              inlineQueryPlaceholder ?? this.inlineQueryPlaceholder,
          needLocation: needLocation ?? this.needLocation);
}

extension BotCommandCopyExtension on BotCommand {
  BotCommand copy({String? command, String? description}) => BotCommand(
      command: command ?? this.command,
      description: description ?? this.description);
}

extension BotInfoCopyExtension on BotInfo {
  BotInfo copy({String? description, List<BotCommand>? commands}) => BotInfo(
      description: description ?? this.description,
      commands: commands ?? this.commands);
}

extension ChatLocationCopyExtension on ChatLocation {
  ChatLocation copy({Location? location, String? address}) => ChatLocation(
      location: location ?? this.location, address: address ?? this.address);
}

extension AnimatedChatPhotoCopyExtension on AnimatedChatPhoto {
  AnimatedChatPhoto copy(
          {int? length, File? file, double? mainFrameTimestamp}) =>
      AnimatedChatPhoto(
          length: length ?? this.length,
          file: file ?? this.file,
          mainFrameTimestamp: mainFrameTimestamp ?? this.mainFrameTimestamp);
}

extension ChatPhotoCopyExtension on ChatPhoto {
  ChatPhoto copy(
          {int? id,
          int? addedDate,
          Minithumbnail? minithumbnail,
          List<PhotoSize>? sizes,
          AnimatedChatPhoto? animation}) =>
      ChatPhoto(
          id: id ?? this.id,
          addedDate: addedDate ?? this.addedDate,
          minithumbnail: minithumbnail ?? this.minithumbnail,
          sizes: sizes ?? this.sizes,
          animation: animation ?? this.animation);
}

extension ChatPhotosCopyExtension on ChatPhotos {
  ChatPhotos copy({int? totalCount, List<ChatPhoto>? photos}) => ChatPhotos(
      totalCount: totalCount ?? this.totalCount, photos: photos ?? this.photos);
}

extension InputChatPhotoPreviousCopyExtension on InputChatPhotoPrevious {
  InputChatPhotoPrevious copy({int? chatPhotoId}) =>
      InputChatPhotoPrevious(chatPhotoId: chatPhotoId ?? this.chatPhotoId);
}

extension InputChatPhotoStaticCopyExtension on InputChatPhotoStatic {
  InputChatPhotoStatic copy({InputFile? photo}) =>
      InputChatPhotoStatic(photo: photo ?? this.photo);
}

extension InputChatPhotoAnimationCopyExtension on InputChatPhotoAnimation {
  InputChatPhotoAnimation copy(
          {InputFile? animation, double? mainFrameTimestamp}) =>
      InputChatPhotoAnimation(
          animation: animation ?? this.animation,
          mainFrameTimestamp: mainFrameTimestamp ?? this.mainFrameTimestamp);
}

extension UserCopyExtension on User {
  User copy(
          {int? id,
          String? firstName,
          String? lastName,
          String? username,
          String? phoneNumber,
          UserStatus? status,
          ProfilePhoto? profilePhoto,
          bool? isContact,
          bool? isMutualContact,
          bool? isVerified,
          bool? isSupport,
          String? restrictionReason,
          bool? isScam,
          bool? isFake,
          bool? haveAccess,
          UserType? type,
          String? languageCode}) =>
      User(
          id: id ?? this.id,
          firstName: firstName ?? this.firstName,
          lastName: lastName ?? this.lastName,
          username: username ?? this.username,
          phoneNumber: phoneNumber ?? this.phoneNumber,
          status: status ?? this.status,
          profilePhoto: profilePhoto ?? this.profilePhoto,
          isContact: isContact ?? this.isContact,
          isMutualContact: isMutualContact ?? this.isMutualContact,
          isVerified: isVerified ?? this.isVerified,
          isSupport: isSupport ?? this.isSupport,
          restrictionReason: restrictionReason ?? this.restrictionReason,
          isScam: isScam ?? this.isScam,
          isFake: isFake ?? this.isFake,
          haveAccess: haveAccess ?? this.haveAccess,
          type: type ?? this.type,
          languageCode: languageCode ?? this.languageCode);
}

extension UserFullInfoCopyExtension on UserFullInfo {
  UserFullInfo copy(
          {ChatPhoto? photo,
          bool? isBlocked,
          bool? canBeCalled,
          bool? supportsVideoCalls,
          bool? hasPrivateCalls,
          bool? needPhoneNumberPrivacyException,
          String? bio,
          String? shareText,
          int? groupInCommonCount,
          BotInfo? botInfo}) =>
      UserFullInfo(
          photo: photo ?? this.photo,
          isBlocked: isBlocked ?? this.isBlocked,
          canBeCalled: canBeCalled ?? this.canBeCalled,
          supportsVideoCalls: supportsVideoCalls ?? this.supportsVideoCalls,
          hasPrivateCalls: hasPrivateCalls ?? this.hasPrivateCalls,
          needPhoneNumberPrivacyException: needPhoneNumberPrivacyException ??
              this.needPhoneNumberPrivacyException,
          bio: bio ?? this.bio,
          shareText: shareText ?? this.shareText,
          groupInCommonCount: groupInCommonCount ?? this.groupInCommonCount,
          botInfo: botInfo ?? this.botInfo);
}

extension UsersCopyExtension on Users {
  Users copy({int? totalCount, List<int>? userIds}) => Users(
      totalCount: totalCount ?? this.totalCount,
      userIds: userIds ?? this.userIds);
}

extension ChatAdministratorCopyExtension on ChatAdministrator {
  ChatAdministrator copy({int? userId, String? customTitle, bool? isOwner}) =>
      ChatAdministrator(
          userId: userId ?? this.userId,
          customTitle: customTitle ?? this.customTitle,
          isOwner: isOwner ?? this.isOwner);
}

extension ChatAdministratorsCopyExtension on ChatAdministrators {
  ChatAdministrators copy({List<ChatAdministrator>? administrators}) =>
      ChatAdministrators(administrators: administrators ?? this.administrators);
}

extension ChatPermissionsCopyExtension on ChatPermissions {
  ChatPermissions copy(
          {bool? canSendMessages,
          bool? canSendMediaMessages,
          bool? canSendPolls,
          bool? canSendOtherMessages,
          bool? canAddWebPagePreviews,
          bool? canChangeInfo,
          bool? canInviteUsers,
          bool? canPinMessages}) =>
      ChatPermissions(
          canSendMessages: canSendMessages ?? this.canSendMessages,
          canSendMediaMessages:
              canSendMediaMessages ?? this.canSendMediaMessages,
          canSendPolls: canSendPolls ?? this.canSendPolls,
          canSendOtherMessages:
              canSendOtherMessages ?? this.canSendOtherMessages,
          canAddWebPagePreviews:
              canAddWebPagePreviews ?? this.canAddWebPagePreviews,
          canChangeInfo: canChangeInfo ?? this.canChangeInfo,
          canInviteUsers: canInviteUsers ?? this.canInviteUsers,
          canPinMessages: canPinMessages ?? this.canPinMessages);
}

extension ChatMemberStatusCreatorCopyExtension on ChatMemberStatusCreator {
  ChatMemberStatusCreator copy(
          {String? customTitle, bool? isAnonymous, bool? isMember}) =>
      ChatMemberStatusCreator(
          customTitle: customTitle ?? this.customTitle,
          isAnonymous: isAnonymous ?? this.isAnonymous,
          isMember: isMember ?? this.isMember);
}

extension ChatMemberStatusAdministratorCopyExtension
    on ChatMemberStatusAdministrator {
  ChatMemberStatusAdministrator copy(
          {String? customTitle,
          bool? canBeEdited,
          bool? canManageChat,
          bool? canChangeInfo,
          bool? canPostMessages,
          bool? canEditMessages,
          bool? canDeleteMessages,
          bool? canInviteUsers,
          bool? canRestrictMembers,
          bool? canPinMessages,
          bool? canPromoteMembers,
          bool? canManageVoiceChats,
          bool? isAnonymous}) =>
      ChatMemberStatusAdministrator(
          customTitle: customTitle ?? this.customTitle,
          canBeEdited: canBeEdited ?? this.canBeEdited,
          canManageChat: canManageChat ?? this.canManageChat,
          canChangeInfo: canChangeInfo ?? this.canChangeInfo,
          canPostMessages: canPostMessages ?? this.canPostMessages,
          canEditMessages: canEditMessages ?? this.canEditMessages,
          canDeleteMessages: canDeleteMessages ?? this.canDeleteMessages,
          canInviteUsers: canInviteUsers ?? this.canInviteUsers,
          canRestrictMembers: canRestrictMembers ?? this.canRestrictMembers,
          canPinMessages: canPinMessages ?? this.canPinMessages,
          canPromoteMembers: canPromoteMembers ?? this.canPromoteMembers,
          canManageVoiceChats: canManageVoiceChats ?? this.canManageVoiceChats,
          isAnonymous: isAnonymous ?? this.isAnonymous);
}

extension ChatMemberStatusRestrictedCopyExtension
    on ChatMemberStatusRestricted {
  ChatMemberStatusRestricted copy(
          {bool? isMember,
          int? restrictedUntilDate,
          ChatPermissions? permissions}) =>
      ChatMemberStatusRestricted(
          isMember: isMember ?? this.isMember,
          restrictedUntilDate: restrictedUntilDate ?? this.restrictedUntilDate,
          permissions: permissions ?? this.permissions);
}

extension ChatMemberStatusBannedCopyExtension on ChatMemberStatusBanned {
  ChatMemberStatusBanned copy({int? bannedUntilDate}) => ChatMemberStatusBanned(
      bannedUntilDate: bannedUntilDate ?? this.bannedUntilDate);
}

extension ChatMemberCopyExtension on ChatMember {
  ChatMember copy(
          {int? userId,
          int? inviterUserId,
          int? joinedChatDate,
          ChatMemberStatus? status,
          BotInfo? botInfo}) =>
      ChatMember(
          userId: userId ?? this.userId,
          inviterUserId: inviterUserId ?? this.inviterUserId,
          joinedChatDate: joinedChatDate ?? this.joinedChatDate,
          status: status ?? this.status,
          botInfo: botInfo ?? this.botInfo);
}

extension ChatMembersCopyExtension on ChatMembers {
  ChatMembers copy({int? totalCount, List<ChatMember>? members}) => ChatMembers(
      totalCount: totalCount ?? this.totalCount,
      members: members ?? this.members);
}

extension ChatMembersFilterMentionCopyExtension on ChatMembersFilterMention {
  ChatMembersFilterMention copy({int? messageThreadId}) =>
      ChatMembersFilterMention(
          messageThreadId: messageThreadId ?? this.messageThreadId);
}

extension SupergroupMembersFilterContactsCopyExtension
    on SupergroupMembersFilterContacts {
  SupergroupMembersFilterContacts copy({String? query}) =>
      SupergroupMembersFilterContacts(query: query ?? this.query);
}

extension SupergroupMembersFilterSearchCopyExtension
    on SupergroupMembersFilterSearch {
  SupergroupMembersFilterSearch copy({String? query}) =>
      SupergroupMembersFilterSearch(query: query ?? this.query);
}

extension SupergroupMembersFilterRestrictedCopyExtension
    on SupergroupMembersFilterRestricted {
  SupergroupMembersFilterRestricted copy({String? query}) =>
      SupergroupMembersFilterRestricted(query: query ?? this.query);
}

extension SupergroupMembersFilterBannedCopyExtension
    on SupergroupMembersFilterBanned {
  SupergroupMembersFilterBanned copy({String? query}) =>
      SupergroupMembersFilterBanned(query: query ?? this.query);
}

extension SupergroupMembersFilterMentionCopyExtension
    on SupergroupMembersFilterMention {
  SupergroupMembersFilterMention copy({String? query, int? messageThreadId}) =>
      SupergroupMembersFilterMention(
          query: query ?? this.query,
          messageThreadId: messageThreadId ?? this.messageThreadId);
}

extension ChatInviteLinkCopyExtension on ChatInviteLink {
  ChatInviteLink copy(
          {String? inviteLink,
          int? creatorUserId,
          int? date,
          int? editDate,
          int? expireDate,
          int? memberLimit,
          int? memberCount,
          bool? isPrimary,
          bool? isRevoked}) =>
      ChatInviteLink(
          inviteLink: inviteLink ?? this.inviteLink,
          creatorUserId: creatorUserId ?? this.creatorUserId,
          date: date ?? this.date,
          editDate: editDate ?? this.editDate,
          expireDate: expireDate ?? this.expireDate,
          memberLimit: memberLimit ?? this.memberLimit,
          memberCount: memberCount ?? this.memberCount,
          isPrimary: isPrimary ?? this.isPrimary,
          isRevoked: isRevoked ?? this.isRevoked);
}

extension ChatInviteLinksCopyExtension on ChatInviteLinks {
  ChatInviteLinks copy({int? totalCount, List<ChatInviteLink>? inviteLinks}) =>
      ChatInviteLinks(
          totalCount: totalCount ?? this.totalCount,
          inviteLinks: inviteLinks ?? this.inviteLinks);
}

extension ChatInviteLinkCountCopyExtension on ChatInviteLinkCount {
  ChatInviteLinkCount copy(
          {int? userId, int? inviteLinkCount, int? revokedInviteLinkCount}) =>
      ChatInviteLinkCount(
          userId: userId ?? this.userId,
          inviteLinkCount: inviteLinkCount ?? this.inviteLinkCount,
          revokedInviteLinkCount:
              revokedInviteLinkCount ?? this.revokedInviteLinkCount);
}

extension ChatInviteLinkCountsCopyExtension on ChatInviteLinkCounts {
  ChatInviteLinkCounts copy({List<ChatInviteLinkCount>? inviteLinkCounts}) =>
      ChatInviteLinkCounts(
          inviteLinkCounts: inviteLinkCounts ?? this.inviteLinkCounts);
}

extension ChatInviteLinkMemberCopyExtension on ChatInviteLinkMember {
  ChatInviteLinkMember copy({int? userId, int? joinedChatDate}) =>
      ChatInviteLinkMember(
          userId: userId ?? this.userId,
          joinedChatDate: joinedChatDate ?? this.joinedChatDate);
}

extension ChatInviteLinkMembersCopyExtension on ChatInviteLinkMembers {
  ChatInviteLinkMembers copy(
          {int? totalCount, List<ChatInviteLinkMember>? members}) =>
      ChatInviteLinkMembers(
          totalCount: totalCount ?? this.totalCount,
          members: members ?? this.members);
}

extension ChatInviteLinkInfoCopyExtension on ChatInviteLinkInfo {
  ChatInviteLinkInfo copy(
          {int? chatId,
          int? accessibleFor,
          ChatType? type,
          String? title,
          ChatPhotoInfo? photo,
          int? memberCount,
          List<int>? memberUserIds,
          bool? isPublic}) =>
      ChatInviteLinkInfo(
          chatId: chatId ?? this.chatId,
          accessibleFor: accessibleFor ?? this.accessibleFor,
          type: type ?? this.type,
          title: title ?? this.title,
          photo: photo ?? this.photo,
          memberCount: memberCount ?? this.memberCount,
          memberUserIds: memberUserIds ?? this.memberUserIds,
          isPublic: isPublic ?? this.isPublic);
}

extension BasicGroupCopyExtension on BasicGroup {
  BasicGroup copy(
          {int? id,
          int? memberCount,
          ChatMemberStatus? status,
          bool? isActive,
          int? upgradedToSupergroupId}) =>
      BasicGroup(
          id: id ?? this.id,
          memberCount: memberCount ?? this.memberCount,
          status: status ?? this.status,
          isActive: isActive ?? this.isActive,
          upgradedToSupergroupId:
              upgradedToSupergroupId ?? this.upgradedToSupergroupId);
}

extension BasicGroupFullInfoCopyExtension on BasicGroupFullInfo {
  BasicGroupFullInfo copy(
          {ChatPhoto? photo,
          String? description,
          int? creatorUserId,
          List<ChatMember>? members,
          ChatInviteLink? inviteLink}) =>
      BasicGroupFullInfo(
          photo: photo ?? this.photo,
          description: description ?? this.description,
          creatorUserId: creatorUserId ?? this.creatorUserId,
          members: members ?? this.members,
          inviteLink: inviteLink ?? this.inviteLink);
}

extension SupergroupCopyExtension on Supergroup {
  Supergroup copy(
          {int? id,
          String? username,
          int? date,
          ChatMemberStatus? status,
          int? memberCount,
          bool? hasLinkedChat,
          bool? hasLocation,
          bool? signMessages,
          bool? isSlowModeEnabled,
          bool? isChannel,
          bool? isBroadcastGroup,
          bool? isVerified,
          String? restrictionReason,
          bool? isScam,
          bool? isFake}) =>
      Supergroup(
          id: id ?? this.id,
          username: username ?? this.username,
          date: date ?? this.date,
          status: status ?? this.status,
          memberCount: memberCount ?? this.memberCount,
          hasLinkedChat: hasLinkedChat ?? this.hasLinkedChat,
          hasLocation: hasLocation ?? this.hasLocation,
          signMessages: signMessages ?? this.signMessages,
          isSlowModeEnabled: isSlowModeEnabled ?? this.isSlowModeEnabled,
          isChannel: isChannel ?? this.isChannel,
          isBroadcastGroup: isBroadcastGroup ?? this.isBroadcastGroup,
          isVerified: isVerified ?? this.isVerified,
          restrictionReason: restrictionReason ?? this.restrictionReason,
          isScam: isScam ?? this.isScam,
          isFake: isFake ?? this.isFake);
}

extension SupergroupFullInfoCopyExtension on SupergroupFullInfo {
  SupergroupFullInfo copy(
          {ChatPhoto? photo,
          String? description,
          int? memberCount,
          int? administratorCount,
          int? restrictedCount,
          int? bannedCount,
          int? linkedChatId,
          int? slowModeDelay,
          double? slowModeDelayExpiresIn,
          bool? canGetMembers,
          bool? canSetUsername,
          bool? canSetStickerSet,
          bool? canSetLocation,
          bool? canGetStatistics,
          bool? isAllHistoryAvailable,
          int? stickerSetId,
          ChatLocation? location,
          ChatInviteLink? inviteLink,
          int? upgradedFromBasicGroupId,
          int? upgradedFromMaxMessageId}) =>
      SupergroupFullInfo(
          photo: photo ?? this.photo,
          description: description ?? this.description,
          memberCount: memberCount ?? this.memberCount,
          administratorCount: administratorCount ?? this.administratorCount,
          restrictedCount: restrictedCount ?? this.restrictedCount,
          bannedCount: bannedCount ?? this.bannedCount,
          linkedChatId: linkedChatId ?? this.linkedChatId,
          slowModeDelay: slowModeDelay ?? this.slowModeDelay,
          slowModeDelayExpiresIn:
              slowModeDelayExpiresIn ?? this.slowModeDelayExpiresIn,
          canGetMembers: canGetMembers ?? this.canGetMembers,
          canSetUsername: canSetUsername ?? this.canSetUsername,
          canSetStickerSet: canSetStickerSet ?? this.canSetStickerSet,
          canSetLocation: canSetLocation ?? this.canSetLocation,
          canGetStatistics: canGetStatistics ?? this.canGetStatistics,
          isAllHistoryAvailable:
              isAllHistoryAvailable ?? this.isAllHistoryAvailable,
          stickerSetId: stickerSetId ?? this.stickerSetId,
          location: location ?? this.location,
          inviteLink: inviteLink ?? this.inviteLink,
          upgradedFromBasicGroupId:
              upgradedFromBasicGroupId ?? this.upgradedFromBasicGroupId,
          upgradedFromMaxMessageId:
              upgradedFromMaxMessageId ?? this.upgradedFromMaxMessageId);
}

extension SecretChatCopyExtension on SecretChat {
  SecretChat copy(
          {int? id,
          int? userId,
          SecretChatState? state,
          bool? isOutbound,
          String? keyHash,
          int? layer}) =>
      SecretChat(
          id: id ?? this.id,
          userId: userId ?? this.userId,
          state: state ?? this.state,
          isOutbound: isOutbound ?? this.isOutbound,
          keyHash: keyHash ?? this.keyHash,
          layer: layer ?? this.layer);
}

extension MessageSenderUserCopyExtension on MessageSenderUser {
  MessageSenderUser copy({int? userId}) =>
      MessageSenderUser(userId: userId ?? this.userId);
}

extension MessageSenderChatCopyExtension on MessageSenderChat {
  MessageSenderChat copy({int? chatId}) =>
      MessageSenderChat(chatId: chatId ?? this.chatId);
}

extension MessageSendersCopyExtension on MessageSenders {
  MessageSenders copy({int? totalCount, List<MessageSender>? senders}) =>
      MessageSenders(
          totalCount: totalCount ?? this.totalCount,
          senders: senders ?? this.senders);
}

extension MessageForwardOriginUserCopyExtension on MessageForwardOriginUser {
  MessageForwardOriginUser copy({int? senderUserId}) =>
      MessageForwardOriginUser(senderUserId: senderUserId ?? this.senderUserId);
}

extension MessageForwardOriginChatCopyExtension on MessageForwardOriginChat {
  MessageForwardOriginChat copy({int? senderChatId, String? authorSignature}) =>
      MessageForwardOriginChat(
          senderChatId: senderChatId ?? this.senderChatId,
          authorSignature: authorSignature ?? this.authorSignature);
}

extension MessageForwardOriginHiddenUserCopyExtension
    on MessageForwardOriginHiddenUser {
  MessageForwardOriginHiddenUser copy({String? senderName}) =>
      MessageForwardOriginHiddenUser(senderName: senderName ?? this.senderName);
}

extension MessageForwardOriginChannelCopyExtension
    on MessageForwardOriginChannel {
  MessageForwardOriginChannel copy(
          {int? chatId, int? messageId, String? authorSignature}) =>
      MessageForwardOriginChannel(
          chatId: chatId ?? this.chatId,
          messageId: messageId ?? this.messageId,
          authorSignature: authorSignature ?? this.authorSignature);
}

extension MessageForwardOriginMessageImportCopyExtension
    on MessageForwardOriginMessageImport {
  MessageForwardOriginMessageImport copy({String? senderName}) =>
      MessageForwardOriginMessageImport(
          senderName: senderName ?? this.senderName);
}

extension MessageForwardInfoCopyExtension on MessageForwardInfo {
  MessageForwardInfo copy(
          {MessageForwardOrigin? origin,
          int? date,
          String? publicServiceAnnouncementType,
          int? fromChatId,
          int? fromMessageId}) =>
      MessageForwardInfo(
          origin: origin ?? this.origin,
          date: date ?? this.date,
          publicServiceAnnouncementType: publicServiceAnnouncementType ??
              this.publicServiceAnnouncementType,
          fromChatId: fromChatId ?? this.fromChatId,
          fromMessageId: fromMessageId ?? this.fromMessageId);
}

extension MessageReplyInfoCopyExtension on MessageReplyInfo {
  MessageReplyInfo copy(
          {int? replyCount,
          List<MessageSender>? recentRepliers,
          int? lastReadInboxMessageId,
          int? lastReadOutboxMessageId,
          int? lastMessageId}) =>
      MessageReplyInfo(
          replyCount: replyCount ?? this.replyCount,
          recentRepliers: recentRepliers ?? this.recentRepliers,
          lastReadInboxMessageId:
              lastReadInboxMessageId ?? this.lastReadInboxMessageId,
          lastReadOutboxMessageId:
              lastReadOutboxMessageId ?? this.lastReadOutboxMessageId,
          lastMessageId: lastMessageId ?? this.lastMessageId);
}

extension MessageInteractionInfoCopyExtension on MessageInteractionInfo {
  MessageInteractionInfo copy(
          {int? viewCount, int? forwardCount, MessageReplyInfo? replyInfo}) =>
      MessageInteractionInfo(
          viewCount: viewCount ?? this.viewCount,
          forwardCount: forwardCount ?? this.forwardCount,
          replyInfo: replyInfo ?? this.replyInfo);
}

extension MessageSendingStateFailedCopyExtension on MessageSendingStateFailed {
  MessageSendingStateFailed copy(
          {int? errorCode,
          String? errorMessage,
          bool? canRetry,
          double? retryAfter}) =>
      MessageSendingStateFailed(
          errorCode: errorCode ?? this.errorCode,
          errorMessage: errorMessage ?? this.errorMessage,
          canRetry: canRetry ?? this.canRetry,
          retryAfter: retryAfter ?? this.retryAfter);
}

extension MessageCopyExtension on Message {
  Message copy(
          {int? id,
          MessageSender? sender,
          int? chatId,
          MessageSendingState? sendingState,
          MessageSchedulingState? schedulingState,
          bool? isOutgoing,
          bool? isPinned,
          bool? canBeEdited,
          bool? canBeForwarded,
          bool? canBeDeletedOnlyForSelf,
          bool? canBeDeletedForAllUsers,
          bool? canGetStatistics,
          bool? canGetMessageThread,
          bool? isChannelPost,
          bool? containsUnreadMention,
          int? date,
          int? editDate,
          MessageForwardInfo? forwardInfo,
          MessageInteractionInfo? interactionInfo,
          int? replyInChatId,
          int? replyToMessageId,
          int? messageThreadId,
          int? ttl,
          double? ttlExpiresIn,
          int? viaBotUserId,
          String? authorSignature,
          int? mediaAlbumId,
          String? restrictionReason,
          MessageContent? content,
          ReplyMarkup? replyMarkup}) =>
      Message(
          id: id ?? this.id,
          sender: sender ?? this.sender,
          chatId: chatId ?? this.chatId,
          sendingState: sendingState ?? this.sendingState,
          schedulingState: schedulingState ?? this.schedulingState,
          isOutgoing: isOutgoing ?? this.isOutgoing,
          isPinned: isPinned ?? this.isPinned,
          canBeEdited: canBeEdited ?? this.canBeEdited,
          canBeForwarded: canBeForwarded ?? this.canBeForwarded,
          canBeDeletedOnlyForSelf:
              canBeDeletedOnlyForSelf ?? this.canBeDeletedOnlyForSelf,
          canBeDeletedForAllUsers:
              canBeDeletedForAllUsers ?? this.canBeDeletedForAllUsers,
          canGetStatistics: canGetStatistics ?? this.canGetStatistics,
          canGetMessageThread: canGetMessageThread ?? this.canGetMessageThread,
          isChannelPost: isChannelPost ?? this.isChannelPost,
          containsUnreadMention:
              containsUnreadMention ?? this.containsUnreadMention,
          date: date ?? this.date,
          editDate: editDate ?? this.editDate,
          forwardInfo: forwardInfo ?? this.forwardInfo,
          interactionInfo: interactionInfo ?? this.interactionInfo,
          replyInChatId: replyInChatId ?? this.replyInChatId,
          replyToMessageId: replyToMessageId ?? this.replyToMessageId,
          messageThreadId: messageThreadId ?? this.messageThreadId,
          ttl: ttl ?? this.ttl,
          ttlExpiresIn: ttlExpiresIn ?? this.ttlExpiresIn,
          viaBotUserId: viaBotUserId ?? this.viaBotUserId,
          authorSignature: authorSignature ?? this.authorSignature,
          mediaAlbumId: mediaAlbumId ?? this.mediaAlbumId,
          restrictionReason: restrictionReason ?? this.restrictionReason,
          content: content ?? this.content,
          replyMarkup: replyMarkup ?? this.replyMarkup);
}

extension MessagesCopyExtension on Messages {
  Messages copy({int? totalCount, List<Message>? messages}) => Messages(
      totalCount: totalCount ?? this.totalCount,
      messages: messages ?? this.messages);
}

extension FoundMessagesCopyExtension on FoundMessages {
  FoundMessages copy(
          {int? totalCount, List<Message>? messages, String? nextOffset}) =>
      FoundMessages(
          totalCount: totalCount ?? this.totalCount,
          messages: messages ?? this.messages,
          nextOffset: nextOffset ?? this.nextOffset);
}

extension ChatNotificationSettingsCopyExtension on ChatNotificationSettings {
  ChatNotificationSettings copy(
          {bool? useDefaultMuteFor,
          int? muteFor,
          bool? useDefaultSound,
          String? sound,
          bool? useDefaultShowPreview,
          bool? showPreview,
          bool? useDefaultDisablePinnedMessageNotifications,
          bool? disablePinnedMessageNotifications,
          bool? useDefaultDisableMentionNotifications,
          bool? disableMentionNotifications}) =>
      ChatNotificationSettings(
          useDefaultMuteFor: useDefaultMuteFor ?? this.useDefaultMuteFor,
          muteFor: muteFor ?? this.muteFor,
          useDefaultSound: useDefaultSound ?? this.useDefaultSound,
          sound: sound ?? this.sound,
          useDefaultShowPreview:
              useDefaultShowPreview ?? this.useDefaultShowPreview,
          showPreview: showPreview ?? this.showPreview,
          useDefaultDisablePinnedMessageNotifications:
              useDefaultDisablePinnedMessageNotifications ??
                  this.useDefaultDisablePinnedMessageNotifications,
          disablePinnedMessageNotifications:
              disablePinnedMessageNotifications ??
                  this.disablePinnedMessageNotifications,
          useDefaultDisableMentionNotifications:
              useDefaultDisableMentionNotifications ??
                  this.useDefaultDisableMentionNotifications,
          disableMentionNotifications:
              disableMentionNotifications ?? this.disableMentionNotifications);
}

extension ScopeNotificationSettingsCopyExtension on ScopeNotificationSettings {
  ScopeNotificationSettings copy(
          {int? muteFor,
          String? sound,
          bool? showPreview,
          bool? disablePinnedMessageNotifications,
          bool? disableMentionNotifications}) =>
      ScopeNotificationSettings(
          muteFor: muteFor ?? this.muteFor,
          sound: sound ?? this.sound,
          showPreview: showPreview ?? this.showPreview,
          disablePinnedMessageNotifications:
              disablePinnedMessageNotifications ??
                  this.disablePinnedMessageNotifications,
          disableMentionNotifications:
              disableMentionNotifications ?? this.disableMentionNotifications);
}

extension DraftMessageCopyExtension on DraftMessage {
  DraftMessage copy(
          {int? replyToMessageId,
          int? date,
          InputMessageContent? inputMessageText}) =>
      DraftMessage(
          replyToMessageId: replyToMessageId ?? this.replyToMessageId,
          date: date ?? this.date,
          inputMessageText: inputMessageText ?? this.inputMessageText);
}

extension ChatTypePrivateCopyExtension on ChatTypePrivate {
  ChatTypePrivate copy({int? userId}) =>
      ChatTypePrivate(userId: userId ?? this.userId);
}

extension ChatTypeBasicGroupCopyExtension on ChatTypeBasicGroup {
  ChatTypeBasicGroup copy({int? basicGroupId}) =>
      ChatTypeBasicGroup(basicGroupId: basicGroupId ?? this.basicGroupId);
}

extension ChatTypeSupergroupCopyExtension on ChatTypeSupergroup {
  ChatTypeSupergroup copy({int? supergroupId, bool? isChannel}) =>
      ChatTypeSupergroup(
          supergroupId: supergroupId ?? this.supergroupId,
          isChannel: isChannel ?? this.isChannel);
}

extension ChatTypeSecretCopyExtension on ChatTypeSecret {
  ChatTypeSecret copy({int? secretChatId, int? userId}) => ChatTypeSecret(
      secretChatId: secretChatId ?? this.secretChatId,
      userId: userId ?? this.userId);
}

extension ChatFilterCopyExtension on ChatFilter {
  ChatFilter copy(
          {String? title,
          String? iconName,
          List<int>? pinnedChatIds,
          List<int>? includedChatIds,
          List<int>? excludedChatIds,
          bool? excludeMuted,
          bool? excludeRead,
          bool? excludeArchived,
          bool? includeContacts,
          bool? includeNonContacts,
          bool? includeBots,
          bool? includeGroups,
          bool? includeChannels}) =>
      ChatFilter(
          title: title ?? this.title,
          iconName: iconName ?? this.iconName,
          pinnedChatIds: pinnedChatIds ?? this.pinnedChatIds,
          includedChatIds: includedChatIds ?? this.includedChatIds,
          excludedChatIds: excludedChatIds ?? this.excludedChatIds,
          excludeMuted: excludeMuted ?? this.excludeMuted,
          excludeRead: excludeRead ?? this.excludeRead,
          excludeArchived: excludeArchived ?? this.excludeArchived,
          includeContacts: includeContacts ?? this.includeContacts,
          includeNonContacts: includeNonContacts ?? this.includeNonContacts,
          includeBots: includeBots ?? this.includeBots,
          includeGroups: includeGroups ?? this.includeGroups,
          includeChannels: includeChannels ?? this.includeChannels);
}

extension ChatFilterInfoCopyExtension on ChatFilterInfo {
  ChatFilterInfo copy({int? id, String? title, String? iconName}) =>
      ChatFilterInfo(
          id: id ?? this.id,
          title: title ?? this.title,
          iconName: iconName ?? this.iconName);
}

extension RecommendedChatFilterCopyExtension on RecommendedChatFilter {
  RecommendedChatFilter copy({ChatFilter? filter, String? description}) =>
      RecommendedChatFilter(
          filter: filter ?? this.filter,
          description: description ?? this.description);
}

extension RecommendedChatFiltersCopyExtension on RecommendedChatFilters {
  RecommendedChatFilters copy({List<RecommendedChatFilter>? chatFilters}) =>
      RecommendedChatFilters(chatFilters: chatFilters ?? this.chatFilters);
}

extension ChatListFilterCopyExtension on ChatListFilter {
  ChatListFilter copy({int? chatFilterId}) =>
      ChatListFilter(chatFilterId: chatFilterId ?? this.chatFilterId);
}

extension ChatListsCopyExtension on ChatLists {
  ChatLists copy({List<ChatList>? chatLists}) =>
      ChatLists(chatLists: chatLists ?? this.chatLists);
}

extension ChatSourcePublicServiceAnnouncementCopyExtension
    on ChatSourcePublicServiceAnnouncement {
  ChatSourcePublicServiceAnnouncement copy({String? type, String? text}) =>
      ChatSourcePublicServiceAnnouncement(
          type: type ?? this.type, text: text ?? this.text);
}

extension ChatPositionCopyExtension on ChatPosition {
  ChatPosition copy(
          {ChatList? list, int? order, bool? isPinned, ChatSource? source}) =>
      ChatPosition(
          list: list ?? this.list,
          order: order ?? this.order,
          isPinned: isPinned ?? this.isPinned,
          source: source ?? this.source);
}

extension VoiceChatCopyExtension on VoiceChat {
  VoiceChat copy(
          {int? groupCallId,
          bool? hasParticipants,
          MessageSender? defaultParticipantAlias}) =>
      VoiceChat(
          groupCallId: groupCallId ?? this.groupCallId,
          hasParticipants: hasParticipants ?? this.hasParticipants,
          defaultParticipantAlias:
              defaultParticipantAlias ?? this.defaultParticipantAlias);
}

extension ChatCopyExtension on Chat {
  Chat copy(
          {int? id,
          ChatType? type,
          String? title,
          ChatPhotoInfo? photo,
          ChatPermissions? permissions,
          Message? lastMessage,
          List<ChatPosition>? positions,
          bool? isMarkedAsUnread,
          bool? isBlocked,
          bool? hasScheduledMessages,
          bool? canBeDeletedOnlyForSelf,
          bool? canBeDeletedForAllUsers,
          bool? canBeReported,
          bool? defaultDisableNotification,
          int? unreadCount,
          int? lastReadInboxMessageId,
          int? lastReadOutboxMessageId,
          int? unreadMentionCount,
          ChatNotificationSettings? notificationSettings,
          int? messageTtlSetting,
          ChatActionBar? actionBar,
          VoiceChat? voiceChat,
          int? replyMarkupMessageId,
          DraftMessage? draftMessage,
          String? clientData}) =>
      Chat(
          id: id ?? this.id,
          type: type ?? this.type,
          title: title ?? this.title,
          photo: photo ?? this.photo,
          permissions: permissions ?? this.permissions,
          lastMessage: lastMessage ?? this.lastMessage,
          positions: positions ?? this.positions,
          isMarkedAsUnread: isMarkedAsUnread ?? this.isMarkedAsUnread,
          isBlocked: isBlocked ?? this.isBlocked,
          hasScheduledMessages:
              hasScheduledMessages ?? this.hasScheduledMessages,
          canBeDeletedOnlyForSelf:
              canBeDeletedOnlyForSelf ?? this.canBeDeletedOnlyForSelf,
          canBeDeletedForAllUsers:
              canBeDeletedForAllUsers ?? this.canBeDeletedForAllUsers,
          canBeReported: canBeReported ?? this.canBeReported,
          defaultDisableNotification:
              defaultDisableNotification ?? this.defaultDisableNotification,
          unreadCount: unreadCount ?? this.unreadCount,
          lastReadInboxMessageId:
              lastReadInboxMessageId ?? this.lastReadInboxMessageId,
          lastReadOutboxMessageId:
              lastReadOutboxMessageId ?? this.lastReadOutboxMessageId,
          unreadMentionCount: unreadMentionCount ?? this.unreadMentionCount,
          notificationSettings:
              notificationSettings ?? this.notificationSettings,
          messageTtlSetting: messageTtlSetting ?? this.messageTtlSetting,
          actionBar: actionBar ?? this.actionBar,
          voiceChat: voiceChat ?? this.voiceChat,
          replyMarkupMessageId:
              replyMarkupMessageId ?? this.replyMarkupMessageId,
          draftMessage: draftMessage ?? this.draftMessage,
          clientData: clientData ?? this.clientData);
}

extension ChatsCopyExtension on Chats {
  Chats copy({int? totalCount, List<int>? chatIds}) => Chats(
      totalCount: totalCount ?? this.totalCount,
      chatIds: chatIds ?? this.chatIds);
}

extension ChatNearbyCopyExtension on ChatNearby {
  ChatNearby copy({int? chatId, int? distance}) => ChatNearby(
      chatId: chatId ?? this.chatId, distance: distance ?? this.distance);
}

extension ChatsNearbyCopyExtension on ChatsNearby {
  ChatsNearby copy(
          {List<ChatNearby>? usersNearby,
          List<ChatNearby>? supergroupsNearby}) =>
      ChatsNearby(
          usersNearby: usersNearby ?? this.usersNearby,
          supergroupsNearby: supergroupsNearby ?? this.supergroupsNearby);
}

extension ChatActionBarReportSpamCopyExtension on ChatActionBarReportSpam {
  ChatActionBarReportSpam copy({bool? canUnarchive}) =>
      ChatActionBarReportSpam(canUnarchive: canUnarchive ?? this.canUnarchive);
}

extension ChatActionBarReportAddBlockCopyExtension
    on ChatActionBarReportAddBlock {
  ChatActionBarReportAddBlock copy({bool? canUnarchive, int? distance}) =>
      ChatActionBarReportAddBlock(
          canUnarchive: canUnarchive ?? this.canUnarchive,
          distance: distance ?? this.distance);
}

extension KeyboardButtonTypeRequestPollCopyExtension
    on KeyboardButtonTypeRequestPoll {
  KeyboardButtonTypeRequestPoll copy({bool? forceRegular, bool? forceQuiz}) =>
      KeyboardButtonTypeRequestPoll(
          forceRegular: forceRegular ?? this.forceRegular,
          forceQuiz: forceQuiz ?? this.forceQuiz);
}

extension KeyboardButtonCopyExtension on KeyboardButton {
  KeyboardButton copy({String? text, KeyboardButtonType? type}) =>
      KeyboardButton(text: text ?? this.text, type: type ?? this.type);
}

extension InlineKeyboardButtonTypeUrlCopyExtension
    on InlineKeyboardButtonTypeUrl {
  InlineKeyboardButtonTypeUrl copy({String? url}) =>
      InlineKeyboardButtonTypeUrl(url: url ?? this.url);
}

extension InlineKeyboardButtonTypeLoginUrlCopyExtension
    on InlineKeyboardButtonTypeLoginUrl {
  InlineKeyboardButtonTypeLoginUrl copy(
          {String? url, int? id, String? forwardText}) =>
      InlineKeyboardButtonTypeLoginUrl(
          url: url ?? this.url,
          id: id ?? this.id,
          forwardText: forwardText ?? this.forwardText);
}

extension InlineKeyboardButtonTypeCallbackCopyExtension
    on InlineKeyboardButtonTypeCallback {
  InlineKeyboardButtonTypeCallback copy({String? data}) =>
      InlineKeyboardButtonTypeCallback(data: data ?? this.data);
}

extension InlineKeyboardButtonTypeCallbackWithPasswordCopyExtension
    on InlineKeyboardButtonTypeCallbackWithPassword {
  InlineKeyboardButtonTypeCallbackWithPassword copy({String? data}) =>
      InlineKeyboardButtonTypeCallbackWithPassword(data: data ?? this.data);
}

extension InlineKeyboardButtonTypeSwitchInlineCopyExtension
    on InlineKeyboardButtonTypeSwitchInline {
  InlineKeyboardButtonTypeSwitchInline copy(
          {String? query, bool? inCurrentChat}) =>
      InlineKeyboardButtonTypeSwitchInline(
          query: query ?? this.query,
          inCurrentChat: inCurrentChat ?? this.inCurrentChat);
}

extension InlineKeyboardButtonCopyExtension on InlineKeyboardButton {
  InlineKeyboardButton copy({String? text, InlineKeyboardButtonType? type}) =>
      InlineKeyboardButton(text: text ?? this.text, type: type ?? this.type);
}

extension ReplyMarkupRemoveKeyboardCopyExtension on ReplyMarkupRemoveKeyboard {
  ReplyMarkupRemoveKeyboard copy({bool? isPersonal}) =>
      ReplyMarkupRemoveKeyboard(isPersonal: isPersonal ?? this.isPersonal);
}

extension ReplyMarkupForceReplyCopyExtension on ReplyMarkupForceReply {
  ReplyMarkupForceReply copy({bool? isPersonal}) =>
      ReplyMarkupForceReply(isPersonal: isPersonal ?? this.isPersonal);
}

extension ReplyMarkupShowKeyboardCopyExtension on ReplyMarkupShowKeyboard {
  ReplyMarkupShowKeyboard copy(
          {List<List<KeyboardButton>>? rows,
          bool? resizeKeyboard,
          bool? oneTime,
          bool? isPersonal}) =>
      ReplyMarkupShowKeyboard(
          rows: rows ?? this.rows,
          resizeKeyboard: resizeKeyboard ?? this.resizeKeyboard,
          oneTime: oneTime ?? this.oneTime,
          isPersonal: isPersonal ?? this.isPersonal);
}

extension ReplyMarkupInlineKeyboardCopyExtension on ReplyMarkupInlineKeyboard {
  ReplyMarkupInlineKeyboard copy({List<List<InlineKeyboardButton>>? rows}) =>
      ReplyMarkupInlineKeyboard(rows: rows ?? this.rows);
}

extension LoginUrlInfoOpenCopyExtension on LoginUrlInfoOpen {
  LoginUrlInfoOpen copy({String? url, bool? skipConfirm}) => LoginUrlInfoOpen(
      url: url ?? this.url, skipConfirm: skipConfirm ?? this.skipConfirm);
}

extension LoginUrlInfoRequestConfirmationCopyExtension
    on LoginUrlInfoRequestConfirmation {
  LoginUrlInfoRequestConfirmation copy(
          {String? url,
          String? domain,
          int? botUserId,
          bool? requestWriteAccess}) =>
      LoginUrlInfoRequestConfirmation(
          url: url ?? this.url,
          domain: domain ?? this.domain,
          botUserId: botUserId ?? this.botUserId,
          requestWriteAccess: requestWriteAccess ?? this.requestWriteAccess);
}

extension MessageThreadInfoCopyExtension on MessageThreadInfo {
  MessageThreadInfo copy(
          {int? chatId,
          int? messageThreadId,
          MessageReplyInfo? replyInfo,
          List<Message>? messages,
          DraftMessage? draftMessage}) =>
      MessageThreadInfo(
          chatId: chatId ?? this.chatId,
          messageThreadId: messageThreadId ?? this.messageThreadId,
          replyInfo: replyInfo ?? this.replyInfo,
          messages: messages ?? this.messages,
          draftMessage: draftMessage ?? this.draftMessage);
}

extension RichTextPlainCopyExtension on RichTextPlain {
  RichTextPlain copy({String? text}) => RichTextPlain(text: text ?? this.text);
}

extension RichTextBoldCopyExtension on RichTextBold {
  RichTextBold copy({RichText? text}) => RichTextBold(text: text ?? this.text);
}

extension RichTextItalicCopyExtension on RichTextItalic {
  RichTextItalic copy({RichText? text}) =>
      RichTextItalic(text: text ?? this.text);
}

extension RichTextUnderlineCopyExtension on RichTextUnderline {
  RichTextUnderline copy({RichText? text}) =>
      RichTextUnderline(text: text ?? this.text);
}

extension RichTextStrikethroughCopyExtension on RichTextStrikethrough {
  RichTextStrikethrough copy({RichText? text}) =>
      RichTextStrikethrough(text: text ?? this.text);
}

extension RichTextFixedCopyExtension on RichTextFixed {
  RichTextFixed copy({RichText? text}) =>
      RichTextFixed(text: text ?? this.text);
}

extension RichTextUrlCopyExtension on RichTextUrl {
  RichTextUrl copy({RichText? text, String? url, bool? isCached}) =>
      RichTextUrl(
          text: text ?? this.text,
          url: url ?? this.url,
          isCached: isCached ?? this.isCached);
}

extension RichTextEmailAddressCopyExtension on RichTextEmailAddress {
  RichTextEmailAddress copy({RichText? text, String? emailAddress}) =>
      RichTextEmailAddress(
          text: text ?? this.text,
          emailAddress: emailAddress ?? this.emailAddress);
}

extension RichTextSubscriptCopyExtension on RichTextSubscript {
  RichTextSubscript copy({RichText? text}) =>
      RichTextSubscript(text: text ?? this.text);
}

extension RichTextSuperscriptCopyExtension on RichTextSuperscript {
  RichTextSuperscript copy({RichText? text}) =>
      RichTextSuperscript(text: text ?? this.text);
}

extension RichTextMarkedCopyExtension on RichTextMarked {
  RichTextMarked copy({RichText? text}) =>
      RichTextMarked(text: text ?? this.text);
}

extension RichTextPhoneNumberCopyExtension on RichTextPhoneNumber {
  RichTextPhoneNumber copy({RichText? text, String? phoneNumber}) =>
      RichTextPhoneNumber(
          text: text ?? this.text,
          phoneNumber: phoneNumber ?? this.phoneNumber);
}

extension RichTextIconCopyExtension on RichTextIcon {
  RichTextIcon copy({Document? document, int? width, int? height}) =>
      RichTextIcon(
          document: document ?? this.document,
          width: width ?? this.width,
          height: height ?? this.height);
}

extension RichTextReferenceCopyExtension on RichTextReference {
  RichTextReference copy({RichText? text, String? anchorName, String? url}) =>
      RichTextReference(
          text: text ?? this.text,
          anchorName: anchorName ?? this.anchorName,
          url: url ?? this.url);
}

extension RichTextAnchorCopyExtension on RichTextAnchor {
  RichTextAnchor copy({String? name}) =>
      RichTextAnchor(name: name ?? this.name);
}

extension RichTextAnchorLinkCopyExtension on RichTextAnchorLink {
  RichTextAnchorLink copy({RichText? text, String? anchorName, String? url}) =>
      RichTextAnchorLink(
          text: text ?? this.text,
          anchorName: anchorName ?? this.anchorName,
          url: url ?? this.url);
}

extension RichTextsCopyExtension on RichTexts {
  RichTexts copy({List<RichText>? texts}) =>
      RichTexts(texts: texts ?? this.texts);
}

extension PageBlockCaptionCopyExtension on PageBlockCaption {
  PageBlockCaption copy({RichText? text, RichText? credit}) =>
      PageBlockCaption(text: text ?? this.text, credit: credit ?? this.credit);
}

extension PageBlockListItemCopyExtension on PageBlockListItem {
  PageBlockListItem copy({String? label, List<PageBlock>? pageBlocks}) =>
      PageBlockListItem(
          label: label ?? this.label,
          pageBlocks: pageBlocks ?? this.pageBlocks);
}

extension PageBlockTableCellCopyExtension on PageBlockTableCell {
  PageBlockTableCell copy(
          {RichText? text,
          bool? isHeader,
          int? colspan,
          int? rowspan,
          PageBlockHorizontalAlignment? align,
          PageBlockVerticalAlignment? valign}) =>
      PageBlockTableCell(
          text: text ?? this.text,
          isHeader: isHeader ?? this.isHeader,
          colspan: colspan ?? this.colspan,
          rowspan: rowspan ?? this.rowspan,
          align: align ?? this.align,
          valign: valign ?? this.valign);
}

extension PageBlockRelatedArticleCopyExtension on PageBlockRelatedArticle {
  PageBlockRelatedArticle copy(
          {String? url,
          String? title,
          String? description,
          Photo? photo,
          String? author,
          int? publishDate}) =>
      PageBlockRelatedArticle(
          url: url ?? this.url,
          title: title ?? this.title,
          description: description ?? this.description,
          photo: photo ?? this.photo,
          author: author ?? this.author,
          publishDate: publishDate ?? this.publishDate);
}

extension PageBlockTitleCopyExtension on PageBlockTitle {
  PageBlockTitle copy({RichText? title}) =>
      PageBlockTitle(title: title ?? this.title);
}

extension PageBlockSubtitleCopyExtension on PageBlockSubtitle {
  PageBlockSubtitle copy({RichText? subtitle}) =>
      PageBlockSubtitle(subtitle: subtitle ?? this.subtitle);
}

extension PageBlockAuthorDateCopyExtension on PageBlockAuthorDate {
  PageBlockAuthorDate copy({RichText? author, int? publishDate}) =>
      PageBlockAuthorDate(
          author: author ?? this.author,
          publishDate: publishDate ?? this.publishDate);
}

extension PageBlockHeaderCopyExtension on PageBlockHeader {
  PageBlockHeader copy({RichText? header}) =>
      PageBlockHeader(header: header ?? this.header);
}

extension PageBlockSubheaderCopyExtension on PageBlockSubheader {
  PageBlockSubheader copy({RichText? subheader}) =>
      PageBlockSubheader(subheader: subheader ?? this.subheader);
}

extension PageBlockKickerCopyExtension on PageBlockKicker {
  PageBlockKicker copy({RichText? kicker}) =>
      PageBlockKicker(kicker: kicker ?? this.kicker);
}

extension PageBlockParagraphCopyExtension on PageBlockParagraph {
  PageBlockParagraph copy({RichText? text}) =>
      PageBlockParagraph(text: text ?? this.text);
}

extension PageBlockPreformattedCopyExtension on PageBlockPreformatted {
  PageBlockPreformatted copy({RichText? text, String? language}) =>
      PageBlockPreformatted(
          text: text ?? this.text, language: language ?? this.language);
}

extension PageBlockFooterCopyExtension on PageBlockFooter {
  PageBlockFooter copy({RichText? footer}) =>
      PageBlockFooter(footer: footer ?? this.footer);
}

extension PageBlockAnchorCopyExtension on PageBlockAnchor {
  PageBlockAnchor copy({String? name}) =>
      PageBlockAnchor(name: name ?? this.name);
}

extension PageBlockListCopyExtension on PageBlockList {
  PageBlockList copy({List<PageBlockListItem>? items}) =>
      PageBlockList(items: items ?? this.items);
}

extension PageBlockBlockQuoteCopyExtension on PageBlockBlockQuote {
  PageBlockBlockQuote copy({RichText? text, RichText? credit}) =>
      PageBlockBlockQuote(
          text: text ?? this.text, credit: credit ?? this.credit);
}

extension PageBlockPullQuoteCopyExtension on PageBlockPullQuote {
  PageBlockPullQuote copy({RichText? text, RichText? credit}) =>
      PageBlockPullQuote(
          text: text ?? this.text, credit: credit ?? this.credit);
}

extension PageBlockAnimationCopyExtension on PageBlockAnimation {
  PageBlockAnimation copy(
          {Animation? animation,
          PageBlockCaption? caption,
          bool? needAutoplay}) =>
      PageBlockAnimation(
          animation: animation ?? this.animation,
          caption: caption ?? this.caption,
          needAutoplay: needAutoplay ?? this.needAutoplay);
}

extension PageBlockAudioCopyExtension on PageBlockAudio {
  PageBlockAudio copy({Audio? audio, PageBlockCaption? caption}) =>
      PageBlockAudio(
          audio: audio ?? this.audio, caption: caption ?? this.caption);
}

extension PageBlockPhotoCopyExtension on PageBlockPhoto {
  PageBlockPhoto copy({Photo? photo, PageBlockCaption? caption, String? url}) =>
      PageBlockPhoto(
          photo: photo ?? this.photo,
          caption: caption ?? this.caption,
          url: url ?? this.url);
}

extension PageBlockVideoCopyExtension on PageBlockVideo {
  PageBlockVideo copy(
          {Video? video,
          PageBlockCaption? caption,
          bool? needAutoplay,
          bool? isLooped}) =>
      PageBlockVideo(
          video: video ?? this.video,
          caption: caption ?? this.caption,
          needAutoplay: needAutoplay ?? this.needAutoplay,
          isLooped: isLooped ?? this.isLooped);
}

extension PageBlockVoiceNoteCopyExtension on PageBlockVoiceNote {
  PageBlockVoiceNote copy({VoiceNote? voiceNote, PageBlockCaption? caption}) =>
      PageBlockVoiceNote(
          voiceNote: voiceNote ?? this.voiceNote,
          caption: caption ?? this.caption);
}

extension PageBlockCoverCopyExtension on PageBlockCover {
  PageBlockCover copy({PageBlock? cover}) =>
      PageBlockCover(cover: cover ?? this.cover);
}

extension PageBlockEmbeddedCopyExtension on PageBlockEmbedded {
  PageBlockEmbedded copy(
          {String? url,
          String? html,
          Photo? posterPhoto,
          int? width,
          int? height,
          PageBlockCaption? caption,
          bool? isFullWidth,
          bool? allowScrolling}) =>
      PageBlockEmbedded(
          url: url ?? this.url,
          html: html ?? this.html,
          posterPhoto: posterPhoto ?? this.posterPhoto,
          width: width ?? this.width,
          height: height ?? this.height,
          caption: caption ?? this.caption,
          isFullWidth: isFullWidth ?? this.isFullWidth,
          allowScrolling: allowScrolling ?? this.allowScrolling);
}

extension PageBlockEmbeddedPostCopyExtension on PageBlockEmbeddedPost {
  PageBlockEmbeddedPost copy(
          {String? url,
          String? author,
          Photo? authorPhoto,
          int? date,
          List<PageBlock>? pageBlocks,
          PageBlockCaption? caption}) =>
      PageBlockEmbeddedPost(
          url: url ?? this.url,
          author: author ?? this.author,
          authorPhoto: authorPhoto ?? this.authorPhoto,
          date: date ?? this.date,
          pageBlocks: pageBlocks ?? this.pageBlocks,
          caption: caption ?? this.caption);
}

extension PageBlockCollageCopyExtension on PageBlockCollage {
  PageBlockCollage copy(
          {List<PageBlock>? pageBlocks, PageBlockCaption? caption}) =>
      PageBlockCollage(
          pageBlocks: pageBlocks ?? this.pageBlocks,
          caption: caption ?? this.caption);
}

extension PageBlockSlideshowCopyExtension on PageBlockSlideshow {
  PageBlockSlideshow copy(
          {List<PageBlock>? pageBlocks, PageBlockCaption? caption}) =>
      PageBlockSlideshow(
          pageBlocks: pageBlocks ?? this.pageBlocks,
          caption: caption ?? this.caption);
}

extension PageBlockChatLinkCopyExtension on PageBlockChatLink {
  PageBlockChatLink copy(
          {String? title, ChatPhotoInfo? photo, String? username}) =>
      PageBlockChatLink(
          title: title ?? this.title,
          photo: photo ?? this.photo,
          username: username ?? this.username);
}

extension PageBlockTableCopyExtension on PageBlockTable {
  PageBlockTable copy(
          {RichText? caption,
          List<List<PageBlockTableCell>>? cells,
          bool? isBordered,
          bool? isStriped}) =>
      PageBlockTable(
          caption: caption ?? this.caption,
          cells: cells ?? this.cells,
          isBordered: isBordered ?? this.isBordered,
          isStriped: isStriped ?? this.isStriped);
}

extension PageBlockDetailsCopyExtension on PageBlockDetails {
  PageBlockDetails copy(
          {RichText? header, List<PageBlock>? pageBlocks, bool? isOpen}) =>
      PageBlockDetails(
          header: header ?? this.header,
          pageBlocks: pageBlocks ?? this.pageBlocks,
          isOpen: isOpen ?? this.isOpen);
}

extension PageBlockRelatedArticlesCopyExtension on PageBlockRelatedArticles {
  PageBlockRelatedArticles copy(
          {RichText? header, List<PageBlockRelatedArticle>? articles}) =>
      PageBlockRelatedArticles(
          header: header ?? this.header, articles: articles ?? this.articles);
}

extension PageBlockMapCopyExtension on PageBlockMap {
  PageBlockMap copy(
          {Location? location,
          int? zoom,
          int? width,
          int? height,
          PageBlockCaption? caption}) =>
      PageBlockMap(
          location: location ?? this.location,
          zoom: zoom ?? this.zoom,
          width: width ?? this.width,
          height: height ?? this.height,
          caption: caption ?? this.caption);
}

extension WebPageInstantViewCopyExtension on WebPageInstantView {
  WebPageInstantView copy(
          {List<PageBlock>? pageBlocks,
          int? viewCount,
          int? version,
          bool? isRtl,
          bool? isFull}) =>
      WebPageInstantView(
          pageBlocks: pageBlocks ?? this.pageBlocks,
          viewCount: viewCount ?? this.viewCount,
          version: version ?? this.version,
          isRtl: isRtl ?? this.isRtl,
          isFull: isFull ?? this.isFull);
}

extension WebPageCopyExtension on WebPage {
  WebPage copy(
          {String? url,
          String? displayUrl,
          String? type,
          String? siteName,
          String? title,
          FormattedText? description,
          Photo? photo,
          String? embedUrl,
          String? embedType,
          int? embedWidth,
          int? embedHeight,
          int? duration,
          String? author,
          Animation? animation,
          Audio? audio,
          Document? document,
          Sticker? sticker,
          Video? video,
          VideoNote? videoNote,
          VoiceNote? voiceNote,
          int? instantViewVersion}) =>
      WebPage(
          url: url ?? this.url,
          displayUrl: displayUrl ?? this.displayUrl,
          type: type ?? this.type,
          siteName: siteName ?? this.siteName,
          title: title ?? this.title,
          description: description ?? this.description,
          photo: photo ?? this.photo,
          embedUrl: embedUrl ?? this.embedUrl,
          embedType: embedType ?? this.embedType,
          embedWidth: embedWidth ?? this.embedWidth,
          embedHeight: embedHeight ?? this.embedHeight,
          duration: duration ?? this.duration,
          author: author ?? this.author,
          animation: animation ?? this.animation,
          audio: audio ?? this.audio,
          document: document ?? this.document,
          sticker: sticker ?? this.sticker,
          video: video ?? this.video,
          videoNote: videoNote ?? this.videoNote,
          voiceNote: voiceNote ?? this.voiceNote,
          instantViewVersion: instantViewVersion ?? this.instantViewVersion);
}

extension CountryInfoCopyExtension on CountryInfo {
  CountryInfo copy(
          {String? countryCode,
          String? name,
          String? englishName,
          bool? isHidden,
          List<String>? callingCodes}) =>
      CountryInfo(
          countryCode: countryCode ?? this.countryCode,
          name: name ?? this.name,
          englishName: englishName ?? this.englishName,
          isHidden: isHidden ?? this.isHidden,
          callingCodes: callingCodes ?? this.callingCodes);
}

extension CountriesCopyExtension on Countries {
  Countries copy({List<CountryInfo>? countries}) =>
      Countries(countries: countries ?? this.countries);
}

extension PhoneNumberInfoCopyExtension on PhoneNumberInfo {
  PhoneNumberInfo copy(
          {CountryInfo? country,
          String? countryCallingCode,
          String? formattedPhoneNumber}) =>
      PhoneNumberInfo(
          country: country ?? this.country,
          countryCallingCode: countryCallingCode ?? this.countryCallingCode,
          formattedPhoneNumber:
              formattedPhoneNumber ?? this.formattedPhoneNumber);
}

extension BankCardActionOpenUrlCopyExtension on BankCardActionOpenUrl {
  BankCardActionOpenUrl copy({String? text, String? url}) =>
      BankCardActionOpenUrl(text: text ?? this.text, url: url ?? this.url);
}

extension BankCardInfoCopyExtension on BankCardInfo {
  BankCardInfo copy({String? title, List<BankCardActionOpenUrl>? actions}) =>
      BankCardInfo(
          title: title ?? this.title, actions: actions ?? this.actions);
}

extension AddressCopyExtension on Address {
  Address copy(
          {String? countryCode,
          String? state,
          String? city,
          String? streetLine1,
          String? streetLine2,
          String? postalCode}) =>
      Address(
          countryCode: countryCode ?? this.countryCode,
          state: state ?? this.state,
          city: city ?? this.city,
          streetLine1: streetLine1 ?? this.streetLine1,
          streetLine2: streetLine2 ?? this.streetLine2,
          postalCode: postalCode ?? this.postalCode);
}

extension LabeledPricePartCopyExtension on LabeledPricePart {
  LabeledPricePart copy({String? label, int? amount}) => LabeledPricePart(
      label: label ?? this.label, amount: amount ?? this.amount);
}

extension InvoiceCopyExtension on Invoice {
  Invoice copy(
          {String? currency,
          List<LabeledPricePart>? priceParts,
          bool? isTest,
          bool? needName,
          bool? needPhoneNumber,
          bool? needEmailAddress,
          bool? needShippingAddress,
          bool? sendPhoneNumberToProvider,
          bool? sendEmailAddressToProvider,
          bool? isFlexible}) =>
      Invoice(
          currency: currency ?? this.currency,
          priceParts: priceParts ?? this.priceParts,
          isTest: isTest ?? this.isTest,
          needName: needName ?? this.needName,
          needPhoneNumber: needPhoneNumber ?? this.needPhoneNumber,
          needEmailAddress: needEmailAddress ?? this.needEmailAddress,
          needShippingAddress: needShippingAddress ?? this.needShippingAddress,
          sendPhoneNumberToProvider:
              sendPhoneNumberToProvider ?? this.sendPhoneNumberToProvider,
          sendEmailAddressToProvider:
              sendEmailAddressToProvider ?? this.sendEmailAddressToProvider,
          isFlexible: isFlexible ?? this.isFlexible);
}

extension OrderInfoCopyExtension on OrderInfo {
  OrderInfo copy(
          {String? name,
          String? phoneNumber,
          String? emailAddress,
          Address? shippingAddress}) =>
      OrderInfo(
          name: name ?? this.name,
          phoneNumber: phoneNumber ?? this.phoneNumber,
          emailAddress: emailAddress ?? this.emailAddress,
          shippingAddress: shippingAddress ?? this.shippingAddress);
}

extension ShippingOptionCopyExtension on ShippingOption {
  ShippingOption copy(
          {String? id, String? title, List<LabeledPricePart>? priceParts}) =>
      ShippingOption(
          id: id ?? this.id,
          title: title ?? this.title,
          priceParts: priceParts ?? this.priceParts);
}

extension SavedCredentialsCopyExtension on SavedCredentials {
  SavedCredentials copy({String? id, String? title}) =>
      SavedCredentials(id: id ?? this.id, title: title ?? this.title);
}

extension InputCredentialsSavedCopyExtension on InputCredentialsSaved {
  InputCredentialsSaved copy({String? savedCredentialsId}) =>
      InputCredentialsSaved(
          savedCredentialsId: savedCredentialsId ?? this.savedCredentialsId);
}

extension InputCredentialsNewCopyExtension on InputCredentialsNew {
  InputCredentialsNew copy({String? data, bool? allowSave}) =>
      InputCredentialsNew(
          data: data ?? this.data, allowSave: allowSave ?? this.allowSave);
}

extension InputCredentialsApplePayCopyExtension on InputCredentialsApplePay {
  InputCredentialsApplePay copy({String? data}) =>
      InputCredentialsApplePay(data: data ?? this.data);
}

extension InputCredentialsGooglePayCopyExtension on InputCredentialsGooglePay {
  InputCredentialsGooglePay copy({String? data}) =>
      InputCredentialsGooglePay(data: data ?? this.data);
}

extension PaymentsProviderStripeCopyExtension on PaymentsProviderStripe {
  PaymentsProviderStripe copy(
          {String? publishableKey,
          bool? needCountry,
          bool? needPostalCode,
          bool? needCardholderName}) =>
      PaymentsProviderStripe(
          publishableKey: publishableKey ?? this.publishableKey,
          needCountry: needCountry ?? this.needCountry,
          needPostalCode: needPostalCode ?? this.needPostalCode,
          needCardholderName: needCardholderName ?? this.needCardholderName);
}

extension PaymentFormCopyExtension on PaymentForm {
  PaymentForm copy(
          {Invoice? invoice,
          String? url,
          PaymentsProviderStripe? paymentsProvider,
          OrderInfo? savedOrderInfo,
          SavedCredentials? savedCredentials,
          bool? canSaveCredentials,
          bool? needPassword}) =>
      PaymentForm(
          invoice: invoice ?? this.invoice,
          url: url ?? this.url,
          paymentsProvider: paymentsProvider ?? this.paymentsProvider,
          savedOrderInfo: savedOrderInfo ?? this.savedOrderInfo,
          savedCredentials: savedCredentials ?? this.savedCredentials,
          canSaveCredentials: canSaveCredentials ?? this.canSaveCredentials,
          needPassword: needPassword ?? this.needPassword);
}

extension ValidatedOrderInfoCopyExtension on ValidatedOrderInfo {
  ValidatedOrderInfo copy(
          {String? orderInfoId, List<ShippingOption>? shippingOptions}) =>
      ValidatedOrderInfo(
          orderInfoId: orderInfoId ?? this.orderInfoId,
          shippingOptions: shippingOptions ?? this.shippingOptions);
}

extension PaymentResultCopyExtension on PaymentResult {
  PaymentResult copy({bool? success, String? verificationUrl}) => PaymentResult(
      success: success ?? this.success,
      verificationUrl: verificationUrl ?? this.verificationUrl);
}

extension PaymentReceiptCopyExtension on PaymentReceipt {
  PaymentReceipt copy(
          {int? date,
          int? paymentsProviderUserId,
          Invoice? invoice,
          OrderInfo? orderInfo,
          ShippingOption? shippingOption,
          String? credentialsTitle}) =>
      PaymentReceipt(
          date: date ?? this.date,
          paymentsProviderUserId:
              paymentsProviderUserId ?? this.paymentsProviderUserId,
          invoice: invoice ?? this.invoice,
          orderInfo: orderInfo ?? this.orderInfo,
          shippingOption: shippingOption ?? this.shippingOption,
          credentialsTitle: credentialsTitle ?? this.credentialsTitle);
}

extension DatedFileCopyExtension on DatedFile {
  DatedFile copy({File? file, int? date}) =>
      DatedFile(file: file ?? this.file, date: date ?? this.date);
}

extension DateCopyExtension on Date {
  Date copy({int? day, int? month, int? year}) => Date(
      day: day ?? this.day,
      month: month ?? this.month,
      year: year ?? this.year);
}

extension PersonalDetailsCopyExtension on PersonalDetails {
  PersonalDetails copy(
          {String? firstName,
          String? middleName,
          String? lastName,
          String? nativeFirstName,
          String? nativeMiddleName,
          String? nativeLastName,
          Date? birthdate,
          String? gender,
          String? countryCode,
          String? residenceCountryCode}) =>
      PersonalDetails(
          firstName: firstName ?? this.firstName,
          middleName: middleName ?? this.middleName,
          lastName: lastName ?? this.lastName,
          nativeFirstName: nativeFirstName ?? this.nativeFirstName,
          nativeMiddleName: nativeMiddleName ?? this.nativeMiddleName,
          nativeLastName: nativeLastName ?? this.nativeLastName,
          birthdate: birthdate ?? this.birthdate,
          gender: gender ?? this.gender,
          countryCode: countryCode ?? this.countryCode,
          residenceCountryCode:
              residenceCountryCode ?? this.residenceCountryCode);
}

extension IdentityDocumentCopyExtension on IdentityDocument {
  IdentityDocument copy(
          {String? number,
          Date? expiryDate,
          DatedFile? frontSide,
          DatedFile? reverseSide,
          DatedFile? selfie,
          List<DatedFile>? translation}) =>
      IdentityDocument(
          number: number ?? this.number,
          expiryDate: expiryDate ?? this.expiryDate,
          frontSide: frontSide ?? this.frontSide,
          reverseSide: reverseSide ?? this.reverseSide,
          selfie: selfie ?? this.selfie,
          translation: translation ?? this.translation);
}

extension InputIdentityDocumentCopyExtension on InputIdentityDocument {
  InputIdentityDocument copy(
          {String? number,
          Date? expiryDate,
          InputFile? frontSide,
          InputFile? reverseSide,
          InputFile? selfie,
          List<InputFile>? translation}) =>
      InputIdentityDocument(
          number: number ?? this.number,
          expiryDate: expiryDate ?? this.expiryDate,
          frontSide: frontSide ?? this.frontSide,
          reverseSide: reverseSide ?? this.reverseSide,
          selfie: selfie ?? this.selfie,
          translation: translation ?? this.translation);
}

extension PersonalDocumentCopyExtension on PersonalDocument {
  PersonalDocument copy(
          {List<DatedFile>? files, List<DatedFile>? translation}) =>
      PersonalDocument(
          files: files ?? this.files,
          translation: translation ?? this.translation);
}

extension InputPersonalDocumentCopyExtension on InputPersonalDocument {
  InputPersonalDocument copy(
          {List<InputFile>? files, List<InputFile>? translation}) =>
      InputPersonalDocument(
          files: files ?? this.files,
          translation: translation ?? this.translation);
}

extension PassportElementPersonalDetailsCopyExtension
    on PassportElementPersonalDetails {
  PassportElementPersonalDetails copy({PersonalDetails? personalDetails}) =>
      PassportElementPersonalDetails(
          personalDetails: personalDetails ?? this.personalDetails);
}

extension PassportElementPassportCopyExtension on PassportElementPassport {
  PassportElementPassport copy({IdentityDocument? passport}) =>
      PassportElementPassport(passport: passport ?? this.passport);
}

extension PassportElementDriverLicenseCopyExtension
    on PassportElementDriverLicense {
  PassportElementDriverLicense copy({IdentityDocument? driverLicense}) =>
      PassportElementDriverLicense(
          driverLicense: driverLicense ?? this.driverLicense);
}

extension PassportElementIdentityCardCopyExtension
    on PassportElementIdentityCard {
  PassportElementIdentityCard copy({IdentityDocument? identityCard}) =>
      PassportElementIdentityCard(
          identityCard: identityCard ?? this.identityCard);
}

extension PassportElementInternalPassportCopyExtension
    on PassportElementInternalPassport {
  PassportElementInternalPassport copy({IdentityDocument? internalPassport}) =>
      PassportElementInternalPassport(
          internalPassport: internalPassport ?? this.internalPassport);
}

extension PassportElementAddressCopyExtension on PassportElementAddress {
  PassportElementAddress copy({Address? address}) =>
      PassportElementAddress(address: address ?? this.address);
}

extension PassportElementUtilityBillCopyExtension
    on PassportElementUtilityBill {
  PassportElementUtilityBill copy({PersonalDocument? utilityBill}) =>
      PassportElementUtilityBill(utilityBill: utilityBill ?? this.utilityBill);
}

extension PassportElementBankStatementCopyExtension
    on PassportElementBankStatement {
  PassportElementBankStatement copy({PersonalDocument? bankStatement}) =>
      PassportElementBankStatement(
          bankStatement: bankStatement ?? this.bankStatement);
}

extension PassportElementRentalAgreementCopyExtension
    on PassportElementRentalAgreement {
  PassportElementRentalAgreement copy({PersonalDocument? rentalAgreement}) =>
      PassportElementRentalAgreement(
          rentalAgreement: rentalAgreement ?? this.rentalAgreement);
}

extension PassportElementPassportRegistrationCopyExtension
    on PassportElementPassportRegistration {
  PassportElementPassportRegistration copy(
          {PersonalDocument? passportRegistration}) =>
      PassportElementPassportRegistration(
          passportRegistration:
              passportRegistration ?? this.passportRegistration);
}

extension PassportElementTemporaryRegistrationCopyExtension
    on PassportElementTemporaryRegistration {
  PassportElementTemporaryRegistration copy(
          {PersonalDocument? temporaryRegistration}) =>
      PassportElementTemporaryRegistration(
          temporaryRegistration:
              temporaryRegistration ?? this.temporaryRegistration);
}

extension PassportElementPhoneNumberCopyExtension
    on PassportElementPhoneNumber {
  PassportElementPhoneNumber copy({String? phoneNumber}) =>
      PassportElementPhoneNumber(phoneNumber: phoneNumber ?? this.phoneNumber);
}

extension PassportElementEmailAddressCopyExtension
    on PassportElementEmailAddress {
  PassportElementEmailAddress copy({String? emailAddress}) =>
      PassportElementEmailAddress(
          emailAddress: emailAddress ?? this.emailAddress);
}

extension InputPassportElementPersonalDetailsCopyExtension
    on InputPassportElementPersonalDetails {
  InputPassportElementPersonalDetails copy(
          {PersonalDetails? personalDetails}) =>
      InputPassportElementPersonalDetails(
          personalDetails: personalDetails ?? this.personalDetails);
}

extension InputPassportElementPassportCopyExtension
    on InputPassportElementPassport {
  InputPassportElementPassport copy({InputIdentityDocument? passport}) =>
      InputPassportElementPassport(passport: passport ?? this.passport);
}

extension InputPassportElementDriverLicenseCopyExtension
    on InputPassportElementDriverLicense {
  InputPassportElementDriverLicense copy(
          {InputIdentityDocument? driverLicense}) =>
      InputPassportElementDriverLicense(
          driverLicense: driverLicense ?? this.driverLicense);
}

extension InputPassportElementIdentityCardCopyExtension
    on InputPassportElementIdentityCard {
  InputPassportElementIdentityCard copy(
          {InputIdentityDocument? identityCard}) =>
      InputPassportElementIdentityCard(
          identityCard: identityCard ?? this.identityCard);
}

extension InputPassportElementInternalPassportCopyExtension
    on InputPassportElementInternalPassport {
  InputPassportElementInternalPassport copy(
          {InputIdentityDocument? internalPassport}) =>
      InputPassportElementInternalPassport(
          internalPassport: internalPassport ?? this.internalPassport);
}

extension InputPassportElementAddressCopyExtension
    on InputPassportElementAddress {
  InputPassportElementAddress copy({Address? address}) =>
      InputPassportElementAddress(address: address ?? this.address);
}

extension InputPassportElementUtilityBillCopyExtension
    on InputPassportElementUtilityBill {
  InputPassportElementUtilityBill copy({InputPersonalDocument? utilityBill}) =>
      InputPassportElementUtilityBill(
          utilityBill: utilityBill ?? this.utilityBill);
}

extension InputPassportElementBankStatementCopyExtension
    on InputPassportElementBankStatement {
  InputPassportElementBankStatement copy(
          {InputPersonalDocument? bankStatement}) =>
      InputPassportElementBankStatement(
          bankStatement: bankStatement ?? this.bankStatement);
}

extension InputPassportElementRentalAgreementCopyExtension
    on InputPassportElementRentalAgreement {
  InputPassportElementRentalAgreement copy(
          {InputPersonalDocument? rentalAgreement}) =>
      InputPassportElementRentalAgreement(
          rentalAgreement: rentalAgreement ?? this.rentalAgreement);
}

extension InputPassportElementPassportRegistrationCopyExtension
    on InputPassportElementPassportRegistration {
  InputPassportElementPassportRegistration copy(
          {InputPersonalDocument? passportRegistration}) =>
      InputPassportElementPassportRegistration(
          passportRegistration:
              passportRegistration ?? this.passportRegistration);
}

extension InputPassportElementTemporaryRegistrationCopyExtension
    on InputPassportElementTemporaryRegistration {
  InputPassportElementTemporaryRegistration copy(
          {InputPersonalDocument? temporaryRegistration}) =>
      InputPassportElementTemporaryRegistration(
          temporaryRegistration:
              temporaryRegistration ?? this.temporaryRegistration);
}

extension InputPassportElementPhoneNumberCopyExtension
    on InputPassportElementPhoneNumber {
  InputPassportElementPhoneNumber copy({String? phoneNumber}) =>
      InputPassportElementPhoneNumber(
          phoneNumber: phoneNumber ?? this.phoneNumber);
}

extension InputPassportElementEmailAddressCopyExtension
    on InputPassportElementEmailAddress {
  InputPassportElementEmailAddress copy({String? emailAddress}) =>
      InputPassportElementEmailAddress(
          emailAddress: emailAddress ?? this.emailAddress);
}

extension PassportElementsCopyExtension on PassportElements {
  PassportElements copy({List<PassportElement>? elements}) =>
      PassportElements(elements: elements ?? this.elements);
}

extension PassportElementErrorSourceDataFieldCopyExtension
    on PassportElementErrorSourceDataField {
  PassportElementErrorSourceDataField copy({String? fieldName}) =>
      PassportElementErrorSourceDataField(
          fieldName: fieldName ?? this.fieldName);
}

extension PassportElementErrorSourceTranslationFileCopyExtension
    on PassportElementErrorSourceTranslationFile {
  PassportElementErrorSourceTranslationFile copy({int? fileIndex}) =>
      PassportElementErrorSourceTranslationFile(
          fileIndex: fileIndex ?? this.fileIndex);
}

extension PassportElementErrorSourceFileCopyExtension
    on PassportElementErrorSourceFile {
  PassportElementErrorSourceFile copy({int? fileIndex}) =>
      PassportElementErrorSourceFile(fileIndex: fileIndex ?? this.fileIndex);
}

extension PassportElementErrorCopyExtension on PassportElementError {
  PassportElementError copy(
          {PassportElementType? type,
          String? message,
          PassportElementErrorSource? source}) =>
      PassportElementError(
          type: type ?? this.type,
          message: message ?? this.message,
          source: source ?? this.source);
}

extension PassportSuitableElementCopyExtension on PassportSuitableElement {
  PassportSuitableElement copy(
          {PassportElementType? type,
          bool? isSelfieRequired,
          bool? isTranslationRequired,
          bool? isNativeNameRequired}) =>
      PassportSuitableElement(
          type: type ?? this.type,
          isSelfieRequired: isSelfieRequired ?? this.isSelfieRequired,
          isTranslationRequired:
              isTranslationRequired ?? this.isTranslationRequired,
          isNativeNameRequired:
              isNativeNameRequired ?? this.isNativeNameRequired);
}

extension PassportRequiredElementCopyExtension on PassportRequiredElement {
  PassportRequiredElement copy(
          {List<PassportSuitableElement>? suitableElements}) =>
      PassportRequiredElement(
          suitableElements: suitableElements ?? this.suitableElements);
}

extension PassportAuthorizationFormCopyExtension on PassportAuthorizationForm {
  PassportAuthorizationForm copy(
          {int? id,
          List<PassportRequiredElement>? requiredElements,
          String? privacyPolicyUrl}) =>
      PassportAuthorizationForm(
          id: id ?? this.id,
          requiredElements: requiredElements ?? this.requiredElements,
          privacyPolicyUrl: privacyPolicyUrl ?? this.privacyPolicyUrl);
}

extension PassportElementsWithErrorsCopyExtension
    on PassportElementsWithErrors {
  PassportElementsWithErrors copy(
          {List<PassportElement>? elements,
          List<PassportElementError>? errors}) =>
      PassportElementsWithErrors(
          elements: elements ?? this.elements, errors: errors ?? this.errors);
}

extension EncryptedCredentialsCopyExtension on EncryptedCredentials {
  EncryptedCredentials copy({String? data, String? hash, String? secret}) =>
      EncryptedCredentials(
          data: data ?? this.data,
          hash: hash ?? this.hash,
          secret: secret ?? this.secret);
}

extension EncryptedPassportElementCopyExtension on EncryptedPassportElement {
  EncryptedPassportElement copy(
          {PassportElementType? type,
          String? data,
          DatedFile? frontSide,
          DatedFile? reverseSide,
          DatedFile? selfie,
          List<DatedFile>? translation,
          List<DatedFile>? files,
          String? value,
          String? hash}) =>
      EncryptedPassportElement(
          type: type ?? this.type,
          data: data ?? this.data,
          frontSide: frontSide ?? this.frontSide,
          reverseSide: reverseSide ?? this.reverseSide,
          selfie: selfie ?? this.selfie,
          translation: translation ?? this.translation,
          files: files ?? this.files,
          value: value ?? this.value,
          hash: hash ?? this.hash);
}

extension InputPassportElementErrorSourceUnspecifiedCopyExtension
    on InputPassportElementErrorSourceUnspecified {
  InputPassportElementErrorSourceUnspecified copy({String? elementHash}) =>
      InputPassportElementErrorSourceUnspecified(
          elementHash: elementHash ?? this.elementHash);
}

extension InputPassportElementErrorSourceDataFieldCopyExtension
    on InputPassportElementErrorSourceDataField {
  InputPassportElementErrorSourceDataField copy(
          {String? fieldName, String? dataHash}) =>
      InputPassportElementErrorSourceDataField(
          fieldName: fieldName ?? this.fieldName,
          dataHash: dataHash ?? this.dataHash);
}

extension InputPassportElementErrorSourceFrontSideCopyExtension
    on InputPassportElementErrorSourceFrontSide {
  InputPassportElementErrorSourceFrontSide copy({String? fileHash}) =>
      InputPassportElementErrorSourceFrontSide(
          fileHash: fileHash ?? this.fileHash);
}

extension InputPassportElementErrorSourceReverseSideCopyExtension
    on InputPassportElementErrorSourceReverseSide {
  InputPassportElementErrorSourceReverseSide copy({String? fileHash}) =>
      InputPassportElementErrorSourceReverseSide(
          fileHash: fileHash ?? this.fileHash);
}

extension InputPassportElementErrorSourceSelfieCopyExtension
    on InputPassportElementErrorSourceSelfie {
  InputPassportElementErrorSourceSelfie copy({String? fileHash}) =>
      InputPassportElementErrorSourceSelfie(
          fileHash: fileHash ?? this.fileHash);
}

extension InputPassportElementErrorSourceTranslationFileCopyExtension
    on InputPassportElementErrorSourceTranslationFile {
  InputPassportElementErrorSourceTranslationFile copy({String? fileHash}) =>
      InputPassportElementErrorSourceTranslationFile(
          fileHash: fileHash ?? this.fileHash);
}

extension InputPassportElementErrorSourceTranslationFilesCopyExtension
    on InputPassportElementErrorSourceTranslationFiles {
  InputPassportElementErrorSourceTranslationFiles copy(
          {List<String>? fileHashes}) =>
      InputPassportElementErrorSourceTranslationFiles(
          fileHashes: fileHashes ?? this.fileHashes);
}

extension InputPassportElementErrorSourceFileCopyExtension
    on InputPassportElementErrorSourceFile {
  InputPassportElementErrorSourceFile copy({String? fileHash}) =>
      InputPassportElementErrorSourceFile(fileHash: fileHash ?? this.fileHash);
}

extension InputPassportElementErrorSourceFilesCopyExtension
    on InputPassportElementErrorSourceFiles {
  InputPassportElementErrorSourceFiles copy({List<String>? fileHashes}) =>
      InputPassportElementErrorSourceFiles(
          fileHashes: fileHashes ?? this.fileHashes);
}

extension InputPassportElementErrorCopyExtension on InputPassportElementError {
  InputPassportElementError copy(
          {PassportElementType? type,
          String? message,
          InputPassportElementErrorSource? source}) =>
      InputPassportElementError(
          type: type ?? this.type,
          message: message ?? this.message,
          source: source ?? this.source);
}

extension MessageTextCopyExtension on MessageText {
  MessageText copy({FormattedText? text, WebPage? webPage}) =>
      MessageText(text: text ?? this.text, webPage: webPage ?? this.webPage);
}

extension MessageAnimationCopyExtension on MessageAnimation {
  MessageAnimation copy(
          {Animation? animation, FormattedText? caption, bool? isSecret}) =>
      MessageAnimation(
          animation: animation ?? this.animation,
          caption: caption ?? this.caption,
          isSecret: isSecret ?? this.isSecret);
}

extension MessageAudioCopyExtension on MessageAudio {
  MessageAudio copy({Audio? audio, FormattedText? caption}) => MessageAudio(
      audio: audio ?? this.audio, caption: caption ?? this.caption);
}

extension MessageDocumentCopyExtension on MessageDocument {
  MessageDocument copy({Document? document, FormattedText? caption}) =>
      MessageDocument(
          document: document ?? this.document,
          caption: caption ?? this.caption);
}

extension MessagePhotoCopyExtension on MessagePhoto {
  MessagePhoto copy({Photo? photo, FormattedText? caption, bool? isSecret}) =>
      MessagePhoto(
          photo: photo ?? this.photo,
          caption: caption ?? this.caption,
          isSecret: isSecret ?? this.isSecret);
}

extension MessageStickerCopyExtension on MessageSticker {
  MessageSticker copy({Sticker? sticker}) =>
      MessageSticker(sticker: sticker ?? this.sticker);
}

extension MessageVideoCopyExtension on MessageVideo {
  MessageVideo copy({Video? video, FormattedText? caption, bool? isSecret}) =>
      MessageVideo(
          video: video ?? this.video,
          caption: caption ?? this.caption,
          isSecret: isSecret ?? this.isSecret);
}

extension MessageVideoNoteCopyExtension on MessageVideoNote {
  MessageVideoNote copy(
          {VideoNote? videoNote, bool? isViewed, bool? isSecret}) =>
      MessageVideoNote(
          videoNote: videoNote ?? this.videoNote,
          isViewed: isViewed ?? this.isViewed,
          isSecret: isSecret ?? this.isSecret);
}

extension MessageVoiceNoteCopyExtension on MessageVoiceNote {
  MessageVoiceNote copy(
          {VoiceNote? voiceNote, FormattedText? caption, bool? isListened}) =>
      MessageVoiceNote(
          voiceNote: voiceNote ?? this.voiceNote,
          caption: caption ?? this.caption,
          isListened: isListened ?? this.isListened);
}

extension MessageLocationCopyExtension on MessageLocation {
  MessageLocation copy(
          {Location? location,
          int? livePeriod,
          int? expiresIn,
          int? heading,
          int? proximityAlertRadius}) =>
      MessageLocation(
          location: location ?? this.location,
          livePeriod: livePeriod ?? this.livePeriod,
          expiresIn: expiresIn ?? this.expiresIn,
          heading: heading ?? this.heading,
          proximityAlertRadius:
              proximityAlertRadius ?? this.proximityAlertRadius);
}

extension MessageVenueCopyExtension on MessageVenue {
  MessageVenue copy({Venue? venue}) => MessageVenue(venue: venue ?? this.venue);
}

extension MessageContactCopyExtension on MessageContact {
  MessageContact copy({Contact? contact}) =>
      MessageContact(contact: contact ?? this.contact);
}

extension MessageDiceCopyExtension on MessageDice {
  MessageDice copy(
          {DiceStickers? initialState,
          DiceStickers? finalState,
          String? emoji,
          int? value,
          int? successAnimationFrameNumber}) =>
      MessageDice(
          initialState: initialState ?? this.initialState,
          finalState: finalState ?? this.finalState,
          emoji: emoji ?? this.emoji,
          value: value ?? this.value,
          successAnimationFrameNumber:
              successAnimationFrameNumber ?? this.successAnimationFrameNumber);
}

extension MessageGameCopyExtension on MessageGame {
  MessageGame copy({Game? game}) => MessageGame(game: game ?? this.game);
}

extension MessagePollCopyExtension on MessagePoll {
  MessagePoll copy({Poll? poll}) => MessagePoll(poll: poll ?? this.poll);
}

extension MessageInvoiceCopyExtension on MessageInvoice {
  MessageInvoice copy(
          {String? title,
          String? description,
          Photo? photo,
          String? currency,
          int? totalAmount,
          String? startParameter,
          bool? isTest,
          bool? needShippingAddress,
          int? receiptMessageId}) =>
      MessageInvoice(
          title: title ?? this.title,
          description: description ?? this.description,
          photo: photo ?? this.photo,
          currency: currency ?? this.currency,
          totalAmount: totalAmount ?? this.totalAmount,
          startParameter: startParameter ?? this.startParameter,
          isTest: isTest ?? this.isTest,
          needShippingAddress: needShippingAddress ?? this.needShippingAddress,
          receiptMessageId: receiptMessageId ?? this.receiptMessageId);
}

extension MessageCallCopyExtension on MessageCall {
  MessageCall copy(
          {bool? isVideo, CallDiscardReason? discardReason, int? duration}) =>
      MessageCall(
          isVideo: isVideo ?? this.isVideo,
          discardReason: discardReason ?? this.discardReason,
          duration: duration ?? this.duration);
}

extension MessageVoiceChatStartedCopyExtension on MessageVoiceChatStarted {
  MessageVoiceChatStarted copy({int? groupCallId}) =>
      MessageVoiceChatStarted(groupCallId: groupCallId ?? this.groupCallId);
}

extension MessageVoiceChatEndedCopyExtension on MessageVoiceChatEnded {
  MessageVoiceChatEnded copy({int? duration}) =>
      MessageVoiceChatEnded(duration: duration ?? this.duration);
}

extension MessageInviteVoiceChatParticipantsCopyExtension
    on MessageInviteVoiceChatParticipants {
  MessageInviteVoiceChatParticipants copy(
          {int? groupCallId, List<int>? userIds}) =>
      MessageInviteVoiceChatParticipants(
          groupCallId: groupCallId ?? this.groupCallId,
          userIds: userIds ?? this.userIds);
}

extension MessageBasicGroupChatCreateCopyExtension
    on MessageBasicGroupChatCreate {
  MessageBasicGroupChatCreate copy({String? title, List<int>? memberUserIds}) =>
      MessageBasicGroupChatCreate(
          title: title ?? this.title,
          memberUserIds: memberUserIds ?? this.memberUserIds);
}

extension MessageSupergroupChatCreateCopyExtension
    on MessageSupergroupChatCreate {
  MessageSupergroupChatCreate copy({String? title}) =>
      MessageSupergroupChatCreate(title: title ?? this.title);
}

extension MessageChatChangeTitleCopyExtension on MessageChatChangeTitle {
  MessageChatChangeTitle copy({String? title}) =>
      MessageChatChangeTitle(title: title ?? this.title);
}

extension MessageChatChangePhotoCopyExtension on MessageChatChangePhoto {
  MessageChatChangePhoto copy({ChatPhoto? photo}) =>
      MessageChatChangePhoto(photo: photo ?? this.photo);
}

extension MessageChatAddMembersCopyExtension on MessageChatAddMembers {
  MessageChatAddMembers copy({List<int>? memberUserIds}) =>
      MessageChatAddMembers(memberUserIds: memberUserIds ?? this.memberUserIds);
}

extension MessageChatDeleteMemberCopyExtension on MessageChatDeleteMember {
  MessageChatDeleteMember copy({int? userId}) =>
      MessageChatDeleteMember(userId: userId ?? this.userId);
}

extension MessageChatUpgradeToCopyExtension on MessageChatUpgradeTo {
  MessageChatUpgradeTo copy({int? supergroupId}) =>
      MessageChatUpgradeTo(supergroupId: supergroupId ?? this.supergroupId);
}

extension MessageChatUpgradeFromCopyExtension on MessageChatUpgradeFrom {
  MessageChatUpgradeFrom copy({String? title, int? basicGroupId}) =>
      MessageChatUpgradeFrom(
          title: title ?? this.title,
          basicGroupId: basicGroupId ?? this.basicGroupId);
}

extension MessagePinMessageCopyExtension on MessagePinMessage {
  MessagePinMessage copy({int? messageId}) =>
      MessagePinMessage(messageId: messageId ?? this.messageId);
}

extension MessageChatSetTtlCopyExtension on MessageChatSetTtl {
  MessageChatSetTtl copy({int? ttl}) => MessageChatSetTtl(ttl: ttl ?? this.ttl);
}

extension MessageCustomServiceActionCopyExtension
    on MessageCustomServiceAction {
  MessageCustomServiceAction copy({String? text}) =>
      MessageCustomServiceAction(text: text ?? this.text);
}

extension MessageGameScoreCopyExtension on MessageGameScore {
  MessageGameScore copy({int? gameMessageId, int? gameId, int? score}) =>
      MessageGameScore(
          gameMessageId: gameMessageId ?? this.gameMessageId,
          gameId: gameId ?? this.gameId,
          score: score ?? this.score);
}

extension MessagePaymentSuccessfulCopyExtension on MessagePaymentSuccessful {
  MessagePaymentSuccessful copy(
          {int? invoiceMessageId, String? currency, int? totalAmount}) =>
      MessagePaymentSuccessful(
          invoiceMessageId: invoiceMessageId ?? this.invoiceMessageId,
          currency: currency ?? this.currency,
          totalAmount: totalAmount ?? this.totalAmount);
}

extension MessagePaymentSuccessfulBotCopyExtension
    on MessagePaymentSuccessfulBot {
  MessagePaymentSuccessfulBot copy(
          {int? invoiceMessageId,
          String? currency,
          int? totalAmount,
          String? invoicePayload,
          String? shippingOptionId,
          OrderInfo? orderInfo,
          String? telegramPaymentChargeId,
          String? providerPaymentChargeId}) =>
      MessagePaymentSuccessfulBot(
          invoiceMessageId: invoiceMessageId ?? this.invoiceMessageId,
          currency: currency ?? this.currency,
          totalAmount: totalAmount ?? this.totalAmount,
          invoicePayload: invoicePayload ?? this.invoicePayload,
          shippingOptionId: shippingOptionId ?? this.shippingOptionId,
          orderInfo: orderInfo ?? this.orderInfo,
          telegramPaymentChargeId:
              telegramPaymentChargeId ?? this.telegramPaymentChargeId,
          providerPaymentChargeId:
              providerPaymentChargeId ?? this.providerPaymentChargeId);
}

extension MessageWebsiteConnectedCopyExtension on MessageWebsiteConnected {
  MessageWebsiteConnected copy({String? domainName}) =>
      MessageWebsiteConnected(domainName: domainName ?? this.domainName);
}

extension MessagePassportDataSentCopyExtension on MessagePassportDataSent {
  MessagePassportDataSent copy({List<PassportElementType>? types}) =>
      MessagePassportDataSent(types: types ?? this.types);
}

extension MessagePassportDataReceivedCopyExtension
    on MessagePassportDataReceived {
  MessagePassportDataReceived copy(
          {List<EncryptedPassportElement>? elements,
          EncryptedCredentials? credentials}) =>
      MessagePassportDataReceived(
          elements: elements ?? this.elements,
          credentials: credentials ?? this.credentials);
}

extension MessageProximityAlertTriggeredCopyExtension
    on MessageProximityAlertTriggered {
  MessageProximityAlertTriggered copy(
          {MessageSender? traveler, MessageSender? watcher, int? distance}) =>
      MessageProximityAlertTriggered(
          traveler: traveler ?? this.traveler,
          watcher: watcher ?? this.watcher,
          distance: distance ?? this.distance);
}

extension TextEntityTypePreCodeCopyExtension on TextEntityTypePreCode {
  TextEntityTypePreCode copy({String? language}) =>
      TextEntityTypePreCode(language: language ?? this.language);
}

extension TextEntityTypeTextUrlCopyExtension on TextEntityTypeTextUrl {
  TextEntityTypeTextUrl copy({String? url}) =>
      TextEntityTypeTextUrl(url: url ?? this.url);
}

extension TextEntityTypeMentionNameCopyExtension on TextEntityTypeMentionName {
  TextEntityTypeMentionName copy({int? userId}) =>
      TextEntityTypeMentionName(userId: userId ?? this.userId);
}

extension InputThumbnailCopyExtension on InputThumbnail {
  InputThumbnail copy({InputFile? thumbnail, int? width, int? height}) =>
      InputThumbnail(
          thumbnail: thumbnail ?? this.thumbnail,
          width: width ?? this.width,
          height: height ?? this.height);
}

extension MessageSchedulingStateSendAtDateCopyExtension
    on MessageSchedulingStateSendAtDate {
  MessageSchedulingStateSendAtDate copy({int? sendDate}) =>
      MessageSchedulingStateSendAtDate(sendDate: sendDate ?? this.sendDate);
}

extension MessageSendOptionsCopyExtension on MessageSendOptions {
  MessageSendOptions copy(
          {bool? disableNotification,
          bool? fromBackground,
          MessageSchedulingState? schedulingState}) =>
      MessageSendOptions(
          disableNotification: disableNotification ?? this.disableNotification,
          fromBackground: fromBackground ?? this.fromBackground,
          schedulingState: schedulingState ?? this.schedulingState);
}

extension MessageCopyOptionsCopyExtension on MessageCopyOptions {
  MessageCopyOptions copy(
          {bool? sendCopy, bool? replaceCaption, FormattedText? newCaption}) =>
      MessageCopyOptions(
          sendCopy: sendCopy ?? this.sendCopy,
          replaceCaption: replaceCaption ?? this.replaceCaption,
          newCaption: newCaption ?? this.newCaption);
}

extension InputMessageTextCopyExtension on InputMessageText {
  InputMessageText copy(
          {FormattedText? text,
          bool? disableWebPagePreview,
          bool? clearDraft}) =>
      InputMessageText(
          text: text ?? this.text,
          disableWebPagePreview:
              disableWebPagePreview ?? this.disableWebPagePreview,
          clearDraft: clearDraft ?? this.clearDraft);
}

extension InputMessageAnimationCopyExtension on InputMessageAnimation {
  InputMessageAnimation copy(
          {InputFile? animation,
          InputThumbnail? thumbnail,
          List<int>? addedStickerFileIds,
          int? duration,
          int? width,
          int? height,
          FormattedText? caption}) =>
      InputMessageAnimation(
          animation: animation ?? this.animation,
          thumbnail: thumbnail ?? this.thumbnail,
          addedStickerFileIds: addedStickerFileIds ?? this.addedStickerFileIds,
          duration: duration ?? this.duration,
          width: width ?? this.width,
          height: height ?? this.height,
          caption: caption ?? this.caption);
}

extension InputMessageAudioCopyExtension on InputMessageAudio {
  InputMessageAudio copy(
          {InputFile? audio,
          InputThumbnail? albumCoverThumbnail,
          int? duration,
          String? title,
          String? performer,
          FormattedText? caption}) =>
      InputMessageAudio(
          audio: audio ?? this.audio,
          albumCoverThumbnail: albumCoverThumbnail ?? this.albumCoverThumbnail,
          duration: duration ?? this.duration,
          title: title ?? this.title,
          performer: performer ?? this.performer,
          caption: caption ?? this.caption);
}

extension InputMessageDocumentCopyExtension on InputMessageDocument {
  InputMessageDocument copy(
          {InputFile? document,
          InputThumbnail? thumbnail,
          bool? disableContentTypeDetection,
          FormattedText? caption}) =>
      InputMessageDocument(
          document: document ?? this.document,
          thumbnail: thumbnail ?? this.thumbnail,
          disableContentTypeDetection:
              disableContentTypeDetection ?? this.disableContentTypeDetection,
          caption: caption ?? this.caption);
}

extension InputMessagePhotoCopyExtension on InputMessagePhoto {
  InputMessagePhoto copy(
          {InputFile? photo,
          InputThumbnail? thumbnail,
          List<int>? addedStickerFileIds,
          int? width,
          int? height,
          FormattedText? caption,
          int? ttl}) =>
      InputMessagePhoto(
          photo: photo ?? this.photo,
          thumbnail: thumbnail ?? this.thumbnail,
          addedStickerFileIds: addedStickerFileIds ?? this.addedStickerFileIds,
          width: width ?? this.width,
          height: height ?? this.height,
          caption: caption ?? this.caption,
          ttl: ttl ?? this.ttl);
}

extension InputMessageStickerCopyExtension on InputMessageSticker {
  InputMessageSticker copy(
          {InputFile? sticker,
          InputThumbnail? thumbnail,
          int? width,
          int? height,
          String? emoji}) =>
      InputMessageSticker(
          sticker: sticker ?? this.sticker,
          thumbnail: thumbnail ?? this.thumbnail,
          width: width ?? this.width,
          height: height ?? this.height,
          emoji: emoji ?? this.emoji);
}

extension InputMessageVideoCopyExtension on InputMessageVideo {
  InputMessageVideo copy(
          {InputFile? video,
          InputThumbnail? thumbnail,
          List<int>? addedStickerFileIds,
          int? duration,
          int? width,
          int? height,
          bool? supportsStreaming,
          FormattedText? caption,
          int? ttl}) =>
      InputMessageVideo(
          video: video ?? this.video,
          thumbnail: thumbnail ?? this.thumbnail,
          addedStickerFileIds: addedStickerFileIds ?? this.addedStickerFileIds,
          duration: duration ?? this.duration,
          width: width ?? this.width,
          height: height ?? this.height,
          supportsStreaming: supportsStreaming ?? this.supportsStreaming,
          caption: caption ?? this.caption,
          ttl: ttl ?? this.ttl);
}

extension InputMessageVideoNoteCopyExtension on InputMessageVideoNote {
  InputMessageVideoNote copy(
          {InputFile? videoNote,
          InputThumbnail? thumbnail,
          int? duration,
          int? length}) =>
      InputMessageVideoNote(
          videoNote: videoNote ?? this.videoNote,
          thumbnail: thumbnail ?? this.thumbnail,
          duration: duration ?? this.duration,
          length: length ?? this.length);
}

extension InputMessageVoiceNoteCopyExtension on InputMessageVoiceNote {
  InputMessageVoiceNote copy(
          {InputFile? voiceNote,
          int? duration,
          String? waveform,
          FormattedText? caption}) =>
      InputMessageVoiceNote(
          voiceNote: voiceNote ?? this.voiceNote,
          duration: duration ?? this.duration,
          waveform: waveform ?? this.waveform,
          caption: caption ?? this.caption);
}

extension InputMessageLocationCopyExtension on InputMessageLocation {
  InputMessageLocation copy(
          {Location? location,
          int? livePeriod,
          int? heading,
          int? proximityAlertRadius}) =>
      InputMessageLocation(
          location: location ?? this.location,
          livePeriod: livePeriod ?? this.livePeriod,
          heading: heading ?? this.heading,
          proximityAlertRadius:
              proximityAlertRadius ?? this.proximityAlertRadius);
}

extension InputMessageVenueCopyExtension on InputMessageVenue {
  InputMessageVenue copy({Venue? venue}) =>
      InputMessageVenue(venue: venue ?? this.venue);
}

extension InputMessageContactCopyExtension on InputMessageContact {
  InputMessageContact copy({Contact? contact}) =>
      InputMessageContact(contact: contact ?? this.contact);
}

extension InputMessageDiceCopyExtension on InputMessageDice {
  InputMessageDice copy({String? emoji, bool? clearDraft}) => InputMessageDice(
      emoji: emoji ?? this.emoji, clearDraft: clearDraft ?? this.clearDraft);
}

extension InputMessageGameCopyExtension on InputMessageGame {
  InputMessageGame copy({int? botUserId, String? gameShortName}) =>
      InputMessageGame(
          botUserId: botUserId ?? this.botUserId,
          gameShortName: gameShortName ?? this.gameShortName);
}

extension InputMessageInvoiceCopyExtension on InputMessageInvoice {
  InputMessageInvoice copy(
          {Invoice? invoice,
          String? title,
          String? description,
          String? photoUrl,
          int? photoSize,
          int? photoWidth,
          int? photoHeight,
          String? payload,
          String? providerToken,
          String? providerData,
          String? startParameter}) =>
      InputMessageInvoice(
          invoice: invoice ?? this.invoice,
          title: title ?? this.title,
          description: description ?? this.description,
          photoUrl: photoUrl ?? this.photoUrl,
          photoSize: photoSize ?? this.photoSize,
          photoWidth: photoWidth ?? this.photoWidth,
          photoHeight: photoHeight ?? this.photoHeight,
          payload: payload ?? this.payload,
          providerToken: providerToken ?? this.providerToken,
          providerData: providerData ?? this.providerData,
          startParameter: startParameter ?? this.startParameter);
}

extension InputMessagePollCopyExtension on InputMessagePoll {
  InputMessagePoll copy(
          {String? question,
          List<String>? options,
          bool? isAnonymous,
          PollType? type,
          int? openPeriod,
          int? closeDate,
          bool? isClosed}) =>
      InputMessagePoll(
          question: question ?? this.question,
          options: options ?? this.options,
          isAnonymous: isAnonymous ?? this.isAnonymous,
          type: type ?? this.type,
          openPeriod: openPeriod ?? this.openPeriod,
          closeDate: closeDate ?? this.closeDate,
          isClosed: isClosed ?? this.isClosed);
}

extension InputMessageForwardedCopyExtension on InputMessageForwarded {
  InputMessageForwarded copy(
          {int? fromChatId,
          int? messageId,
          bool? inGameShare,
          MessageCopyOptions? copyOptions}) =>
      InputMessageForwarded(
          fromChatId: fromChatId ?? this.fromChatId,
          messageId: messageId ?? this.messageId,
          inGameShare: inGameShare ?? this.inGameShare,
          copyOptions: copyOptions ?? this.copyOptions);
}

extension ChatActionUploadingVideoCopyExtension on ChatActionUploadingVideo {
  ChatActionUploadingVideo copy({int? progress}) =>
      ChatActionUploadingVideo(progress: progress ?? this.progress);
}

extension ChatActionUploadingVoiceNoteCopyExtension
    on ChatActionUploadingVoiceNote {
  ChatActionUploadingVoiceNote copy({int? progress}) =>
      ChatActionUploadingVoiceNote(progress: progress ?? this.progress);
}

extension ChatActionUploadingPhotoCopyExtension on ChatActionUploadingPhoto {
  ChatActionUploadingPhoto copy({int? progress}) =>
      ChatActionUploadingPhoto(progress: progress ?? this.progress);
}

extension ChatActionUploadingDocumentCopyExtension
    on ChatActionUploadingDocument {
  ChatActionUploadingDocument copy({int? progress}) =>
      ChatActionUploadingDocument(progress: progress ?? this.progress);
}

extension ChatActionUploadingVideoNoteCopyExtension
    on ChatActionUploadingVideoNote {
  ChatActionUploadingVideoNote copy({int? progress}) =>
      ChatActionUploadingVideoNote(progress: progress ?? this.progress);
}

extension UserStatusOnlineCopyExtension on UserStatusOnline {
  UserStatusOnline copy({int? expires}) =>
      UserStatusOnline(expires: expires ?? this.expires);
}

extension UserStatusOfflineCopyExtension on UserStatusOffline {
  UserStatusOffline copy({int? wasOnline}) =>
      UserStatusOffline(wasOnline: wasOnline ?? this.wasOnline);
}

extension StickersCopyExtension on Stickers {
  Stickers copy({List<Sticker>? stickers}) =>
      Stickers(stickers: stickers ?? this.stickers);
}

extension EmojisCopyExtension on Emojis {
  Emojis copy({List<String>? emojis}) => Emojis(emojis: emojis ?? this.emojis);
}

extension StickerSetCopyExtension on StickerSet {
  StickerSet copy(
          {int? id,
          String? title,
          String? name,
          Thumbnail? thumbnail,
          List<ClosedVectorPath>? thumbnailOutline,
          bool? isInstalled,
          bool? isArchived,
          bool? isOfficial,
          bool? isAnimated,
          bool? isMasks,
          bool? isViewed,
          List<Sticker>? stickers,
          List<Emojis>? emojis}) =>
      StickerSet(
          id: id ?? this.id,
          title: title ?? this.title,
          name: name ?? this.name,
          thumbnail: thumbnail ?? this.thumbnail,
          thumbnailOutline: thumbnailOutline ?? this.thumbnailOutline,
          isInstalled: isInstalled ?? this.isInstalled,
          isArchived: isArchived ?? this.isArchived,
          isOfficial: isOfficial ?? this.isOfficial,
          isAnimated: isAnimated ?? this.isAnimated,
          isMasks: isMasks ?? this.isMasks,
          isViewed: isViewed ?? this.isViewed,
          stickers: stickers ?? this.stickers,
          emojis: emojis ?? this.emojis);
}

extension StickerSetInfoCopyExtension on StickerSetInfo {
  StickerSetInfo copy(
          {int? id,
          String? title,
          String? name,
          Thumbnail? thumbnail,
          List<ClosedVectorPath>? thumbnailOutline,
          bool? isInstalled,
          bool? isArchived,
          bool? isOfficial,
          bool? isAnimated,
          bool? isMasks,
          bool? isViewed,
          int? size,
          List<Sticker>? covers}) =>
      StickerSetInfo(
          id: id ?? this.id,
          title: title ?? this.title,
          name: name ?? this.name,
          thumbnail: thumbnail ?? this.thumbnail,
          thumbnailOutline: thumbnailOutline ?? this.thumbnailOutline,
          isInstalled: isInstalled ?? this.isInstalled,
          isArchived: isArchived ?? this.isArchived,
          isOfficial: isOfficial ?? this.isOfficial,
          isAnimated: isAnimated ?? this.isAnimated,
          isMasks: isMasks ?? this.isMasks,
          isViewed: isViewed ?? this.isViewed,
          size: size ?? this.size,
          covers: covers ?? this.covers);
}

extension StickerSetsCopyExtension on StickerSets {
  StickerSets copy({int? totalCount, List<StickerSetInfo>? sets}) =>
      StickerSets(
          totalCount: totalCount ?? this.totalCount, sets: sets ?? this.sets);
}

extension CallProtocolCopyExtension on CallProtocol {
  CallProtocol copy(
          {bool? udpP2p,
          bool? udpReflector,
          int? minLayer,
          int? maxLayer,
          List<String>? libraryVersions}) =>
      CallProtocol(
          udpP2p: udpP2p ?? this.udpP2p,
          udpReflector: udpReflector ?? this.udpReflector,
          minLayer: minLayer ?? this.minLayer,
          maxLayer: maxLayer ?? this.maxLayer,
          libraryVersions: libraryVersions ?? this.libraryVersions);
}

extension CallServerTypeTelegramReflectorCopyExtension
    on CallServerTypeTelegramReflector {
  CallServerTypeTelegramReflector copy({String? peerTag}) =>
      CallServerTypeTelegramReflector(peerTag: peerTag ?? this.peerTag);
}

extension CallServerTypeWebrtcCopyExtension on CallServerTypeWebrtc {
  CallServerTypeWebrtc copy(
          {String? username,
          String? password,
          bool? supportsTurn,
          bool? supportsStun}) =>
      CallServerTypeWebrtc(
          username: username ?? this.username,
          password: password ?? this.password,
          supportsTurn: supportsTurn ?? this.supportsTurn,
          supportsStun: supportsStun ?? this.supportsStun);
}

extension CallServerCopyExtension on CallServer {
  CallServer copy(
          {int? id,
          String? ipAddress,
          String? ipv6Address,
          int? port,
          CallServerType? type}) =>
      CallServer(
          id: id ?? this.id,
          ipAddress: ipAddress ?? this.ipAddress,
          ipv6Address: ipv6Address ?? this.ipv6Address,
          port: port ?? this.port,
          type: type ?? this.type);
}

extension CallIdCopyExtension on CallId {
  CallId copy({int? id}) => CallId(id: id ?? this.id);
}

extension GroupCallIdCopyExtension on GroupCallId {
  GroupCallId copy({int? id}) => GroupCallId(id: id ?? this.id);
}

extension CallStatePendingCopyExtension on CallStatePending {
  CallStatePending copy({bool? isCreated, bool? isReceived}) =>
      CallStatePending(
          isCreated: isCreated ?? this.isCreated,
          isReceived: isReceived ?? this.isReceived);
}

extension CallStateReadyCopyExtension on CallStateReady {
  CallStateReady copy(
          {CallProtocol? protocol,
          List<CallServer>? servers,
          String? config,
          String? encryptionKey,
          List<String>? emojis,
          bool? allowP2p}) =>
      CallStateReady(
          protocol: protocol ?? this.protocol,
          servers: servers ?? this.servers,
          config: config ?? this.config,
          encryptionKey: encryptionKey ?? this.encryptionKey,
          emojis: emojis ?? this.emojis,
          allowP2p: allowP2p ?? this.allowP2p);
}

extension CallStateDiscardedCopyExtension on CallStateDiscarded {
  CallStateDiscarded copy(
          {CallDiscardReason? reason,
          bool? needRating,
          bool? needDebugInformation}) =>
      CallStateDiscarded(
          reason: reason ?? this.reason,
          needRating: needRating ?? this.needRating,
          needDebugInformation:
              needDebugInformation ?? this.needDebugInformation);
}

extension CallStateErrorCopyExtension on CallStateError {
  CallStateError copy({TdError? error}) =>
      CallStateError(error: error ?? this.error);
}

extension GroupCallRecentSpeakerCopyExtension on GroupCallRecentSpeaker {
  GroupCallRecentSpeaker copy({MessageSender? speaker, bool? isSpeaking}) =>
      GroupCallRecentSpeaker(
          speaker: speaker ?? this.speaker,
          isSpeaking: isSpeaking ?? this.isSpeaking);
}

extension GroupCallCopyExtension on GroupCall {
  GroupCall copy(
          {int? id,
          String? title,
          bool? isActive,
          bool? isJoined,
          bool? needRejoin,
          bool? canUnmuteSelf,
          bool? canBeManaged,
          int? participantCount,
          bool? loadedAllParticipants,
          List<GroupCallRecentSpeaker>? recentSpeakers,
          bool? muteNewParticipants,
          bool? canChangeMuteNewParticipants,
          int? recordDuration,
          int? duration}) =>
      GroupCall(
          id: id ?? this.id,
          title: title ?? this.title,
          isActive: isActive ?? this.isActive,
          isJoined: isJoined ?? this.isJoined,
          needRejoin: needRejoin ?? this.needRejoin,
          canUnmuteSelf: canUnmuteSelf ?? this.canUnmuteSelf,
          canBeManaged: canBeManaged ?? this.canBeManaged,
          participantCount: participantCount ?? this.participantCount,
          loadedAllParticipants:
              loadedAllParticipants ?? this.loadedAllParticipants,
          recentSpeakers: recentSpeakers ?? this.recentSpeakers,
          muteNewParticipants: muteNewParticipants ?? this.muteNewParticipants,
          canChangeMuteNewParticipants:
              canChangeMuteNewParticipants ?? this.canChangeMuteNewParticipants,
          recordDuration: recordDuration ?? this.recordDuration,
          duration: duration ?? this.duration);
}

extension GroupCallPayloadFingerprintCopyExtension
    on GroupCallPayloadFingerprint {
  GroupCallPayloadFingerprint copy(
          {String? hash, String? setup, String? fingerprint}) =>
      GroupCallPayloadFingerprint(
          hash: hash ?? this.hash,
          setup: setup ?? this.setup,
          fingerprint: fingerprint ?? this.fingerprint);
}

extension GroupCallPayloadCopyExtension on GroupCallPayload {
  GroupCallPayload copy(
          {String? ufrag,
          String? pwd,
          List<GroupCallPayloadFingerprint>? fingerprints}) =>
      GroupCallPayload(
          ufrag: ufrag ?? this.ufrag,
          pwd: pwd ?? this.pwd,
          fingerprints: fingerprints ?? this.fingerprints);
}

extension GroupCallJoinResponseCandidateCopyExtension
    on GroupCallJoinResponseCandidate {
  GroupCallJoinResponseCandidate copy(
          {String? port,
          String? protocol,
          String? network,
          String? generation,
          String? id,
          String? component,
          String? foundation,
          String? priority,
          String? ip,
          String? type,
          String? tcpType,
          String? relAddr,
          String? relPort}) =>
      GroupCallJoinResponseCandidate(
          port: port ?? this.port,
          protocol: protocol ?? this.protocol,
          network: network ?? this.network,
          generation: generation ?? this.generation,
          id: id ?? this.id,
          component: component ?? this.component,
          foundation: foundation ?? this.foundation,
          priority: priority ?? this.priority,
          ip: ip ?? this.ip,
          type: type ?? this.type,
          tcpType: tcpType ?? this.tcpType,
          relAddr: relAddr ?? this.relAddr,
          relPort: relPort ?? this.relPort);
}

extension GroupCallJoinResponseWebrtcCopyExtension
    on GroupCallJoinResponseWebrtc {
  GroupCallJoinResponseWebrtc copy(
          {GroupCallPayload? payload,
          List<GroupCallJoinResponseCandidate>? candidates}) =>
      GroupCallJoinResponseWebrtc(
          payload: payload ?? this.payload,
          candidates: candidates ?? this.candidates);
}

extension GroupCallParticipantCopyExtension on GroupCallParticipant {
  GroupCallParticipant copy(
          {MessageSender? participant,
          int? source,
          String? bio,
          bool? isCurrentUser,
          bool? isSpeaking,
          bool? isHandRaised,
          bool? canBeMutedForAllUsers,
          bool? canBeUnmutedForAllUsers,
          bool? canBeMutedForCurrentUser,
          bool? canBeUnmutedForCurrentUser,
          bool? isMutedForAllUsers,
          bool? isMutedForCurrentUser,
          bool? canUnmuteSelf,
          int? volumeLevel,
          String? order}) =>
      GroupCallParticipant(
          participant: participant ?? this.participant,
          source: source ?? this.source,
          bio: bio ?? this.bio,
          isCurrentUser: isCurrentUser ?? this.isCurrentUser,
          isSpeaking: isSpeaking ?? this.isSpeaking,
          isHandRaised: isHandRaised ?? this.isHandRaised,
          canBeMutedForAllUsers:
              canBeMutedForAllUsers ?? this.canBeMutedForAllUsers,
          canBeUnmutedForAllUsers:
              canBeUnmutedForAllUsers ?? this.canBeUnmutedForAllUsers,
          canBeMutedForCurrentUser:
              canBeMutedForCurrentUser ?? this.canBeMutedForCurrentUser,
          canBeUnmutedForCurrentUser:
              canBeUnmutedForCurrentUser ?? this.canBeUnmutedForCurrentUser,
          isMutedForAllUsers: isMutedForAllUsers ?? this.isMutedForAllUsers,
          isMutedForCurrentUser:
              isMutedForCurrentUser ?? this.isMutedForCurrentUser,
          canUnmuteSelf: canUnmuteSelf ?? this.canUnmuteSelf,
          volumeLevel: volumeLevel ?? this.volumeLevel,
          order: order ?? this.order);
}

extension CallCopyExtension on Call {
  Call copy(
          {int? id,
          int? userId,
          bool? isOutgoing,
          bool? isVideo,
          CallState? state}) =>
      Call(
          id: id ?? this.id,
          userId: userId ?? this.userId,
          isOutgoing: isOutgoing ?? this.isOutgoing,
          isVideo: isVideo ?? this.isVideo,
          state: state ?? this.state);
}

extension PhoneNumberAuthenticationSettingsCopyExtension
    on PhoneNumberAuthenticationSettings {
  PhoneNumberAuthenticationSettings copy(
          {bool? allowFlashCall,
          bool? isCurrentPhoneNumber,
          bool? allowSmsRetrieverApi}) =>
      PhoneNumberAuthenticationSettings(
          allowFlashCall: allowFlashCall ?? this.allowFlashCall,
          isCurrentPhoneNumber:
              isCurrentPhoneNumber ?? this.isCurrentPhoneNumber,
          allowSmsRetrieverApi:
              allowSmsRetrieverApi ?? this.allowSmsRetrieverApi);
}

extension AnimationsCopyExtension on Animations {
  Animations copy({List<Animation>? animations}) =>
      Animations(animations: animations ?? this.animations);
}

extension DiceStickersRegularCopyExtension on DiceStickersRegular {
  DiceStickersRegular copy({Sticker? sticker}) =>
      DiceStickersRegular(sticker: sticker ?? this.sticker);
}

extension DiceStickersSlotMachineCopyExtension on DiceStickersSlotMachine {
  DiceStickersSlotMachine copy(
          {Sticker? background,
          Sticker? lever,
          Sticker? leftReel,
          Sticker? centerReel,
          Sticker? rightReel}) =>
      DiceStickersSlotMachine(
          background: background ?? this.background,
          lever: lever ?? this.lever,
          leftReel: leftReel ?? this.leftReel,
          centerReel: centerReel ?? this.centerReel,
          rightReel: rightReel ?? this.rightReel);
}

extension ImportedContactsCopyExtension on ImportedContacts {
  ImportedContacts copy({List<int>? userIds, List<int>? importerCount}) =>
      ImportedContacts(
          userIds: userIds ?? this.userIds,
          importerCount: importerCount ?? this.importerCount);
}

extension HttpUrlCopyExtension on HttpUrl {
  HttpUrl copy({String? url}) => HttpUrl(url: url ?? this.url);
}

extension InputInlineQueryResultAnimationCopyExtension
    on InputInlineQueryResultAnimation {
  InputInlineQueryResultAnimation copy(
          {String? id,
          String? title,
          String? thumbnailUrl,
          String? thumbnailMimeType,
          String? videoUrl,
          String? videoMimeType,
          int? videoDuration,
          int? videoWidth,
          int? videoHeight,
          ReplyMarkup? replyMarkup,
          InputMessageContent? inputMessageContent}) =>
      InputInlineQueryResultAnimation(
          id: id ?? this.id,
          title: title ?? this.title,
          thumbnailUrl: thumbnailUrl ?? this.thumbnailUrl,
          thumbnailMimeType: thumbnailMimeType ?? this.thumbnailMimeType,
          videoUrl: videoUrl ?? this.videoUrl,
          videoMimeType: videoMimeType ?? this.videoMimeType,
          videoDuration: videoDuration ?? this.videoDuration,
          videoWidth: videoWidth ?? this.videoWidth,
          videoHeight: videoHeight ?? this.videoHeight,
          replyMarkup: replyMarkup ?? this.replyMarkup,
          inputMessageContent: inputMessageContent ?? this.inputMessageContent);
}

extension InputInlineQueryResultArticleCopyExtension
    on InputInlineQueryResultArticle {
  InputInlineQueryResultArticle copy(
          {String? id,
          String? url,
          bool? hideUrl,
          String? title,
          String? description,
          String? thumbnailUrl,
          int? thumbnailWidth,
          int? thumbnailHeight,
          ReplyMarkup? replyMarkup,
          InputMessageContent? inputMessageContent}) =>
      InputInlineQueryResultArticle(
          id: id ?? this.id,
          url: url ?? this.url,
          hideUrl: hideUrl ?? this.hideUrl,
          title: title ?? this.title,
          description: description ?? this.description,
          thumbnailUrl: thumbnailUrl ?? this.thumbnailUrl,
          thumbnailWidth: thumbnailWidth ?? this.thumbnailWidth,
          thumbnailHeight: thumbnailHeight ?? this.thumbnailHeight,
          replyMarkup: replyMarkup ?? this.replyMarkup,
          inputMessageContent: inputMessageContent ?? this.inputMessageContent);
}

extension InputInlineQueryResultAudioCopyExtension
    on InputInlineQueryResultAudio {
  InputInlineQueryResultAudio copy(
          {String? id,
          String? title,
          String? performer,
          String? audioUrl,
          int? audioDuration,
          ReplyMarkup? replyMarkup,
          InputMessageContent? inputMessageContent}) =>
      InputInlineQueryResultAudio(
          id: id ?? this.id,
          title: title ?? this.title,
          performer: performer ?? this.performer,
          audioUrl: audioUrl ?? this.audioUrl,
          audioDuration: audioDuration ?? this.audioDuration,
          replyMarkup: replyMarkup ?? this.replyMarkup,
          inputMessageContent: inputMessageContent ?? this.inputMessageContent);
}

extension InputInlineQueryResultContactCopyExtension
    on InputInlineQueryResultContact {
  InputInlineQueryResultContact copy(
          {String? id,
          Contact? contact,
          String? thumbnailUrl,
          int? thumbnailWidth,
          int? thumbnailHeight,
          ReplyMarkup? replyMarkup,
          InputMessageContent? inputMessageContent}) =>
      InputInlineQueryResultContact(
          id: id ?? this.id,
          contact: contact ?? this.contact,
          thumbnailUrl: thumbnailUrl ?? this.thumbnailUrl,
          thumbnailWidth: thumbnailWidth ?? this.thumbnailWidth,
          thumbnailHeight: thumbnailHeight ?? this.thumbnailHeight,
          replyMarkup: replyMarkup ?? this.replyMarkup,
          inputMessageContent: inputMessageContent ?? this.inputMessageContent);
}

extension InputInlineQueryResultDocumentCopyExtension
    on InputInlineQueryResultDocument {
  InputInlineQueryResultDocument copy(
          {String? id,
          String? title,
          String? description,
          String? documentUrl,
          String? mimeType,
          String? thumbnailUrl,
          int? thumbnailWidth,
          int? thumbnailHeight,
          ReplyMarkup? replyMarkup,
          InputMessageContent? inputMessageContent}) =>
      InputInlineQueryResultDocument(
          id: id ?? this.id,
          title: title ?? this.title,
          description: description ?? this.description,
          documentUrl: documentUrl ?? this.documentUrl,
          mimeType: mimeType ?? this.mimeType,
          thumbnailUrl: thumbnailUrl ?? this.thumbnailUrl,
          thumbnailWidth: thumbnailWidth ?? this.thumbnailWidth,
          thumbnailHeight: thumbnailHeight ?? this.thumbnailHeight,
          replyMarkup: replyMarkup ?? this.replyMarkup,
          inputMessageContent: inputMessageContent ?? this.inputMessageContent);
}

extension InputInlineQueryResultGameCopyExtension
    on InputInlineQueryResultGame {
  InputInlineQueryResultGame copy(
          {String? id, String? gameShortName, ReplyMarkup? replyMarkup}) =>
      InputInlineQueryResultGame(
          id: id ?? this.id,
          gameShortName: gameShortName ?? this.gameShortName,
          replyMarkup: replyMarkup ?? this.replyMarkup);
}

extension InputInlineQueryResultLocationCopyExtension
    on InputInlineQueryResultLocation {
  InputInlineQueryResultLocation copy(
          {String? id,
          Location? location,
          int? livePeriod,
          String? title,
          String? thumbnailUrl,
          int? thumbnailWidth,
          int? thumbnailHeight,
          ReplyMarkup? replyMarkup,
          InputMessageContent? inputMessageContent}) =>
      InputInlineQueryResultLocation(
          id: id ?? this.id,
          location: location ?? this.location,
          livePeriod: livePeriod ?? this.livePeriod,
          title: title ?? this.title,
          thumbnailUrl: thumbnailUrl ?? this.thumbnailUrl,
          thumbnailWidth: thumbnailWidth ?? this.thumbnailWidth,
          thumbnailHeight: thumbnailHeight ?? this.thumbnailHeight,
          replyMarkup: replyMarkup ?? this.replyMarkup,
          inputMessageContent: inputMessageContent ?? this.inputMessageContent);
}

extension InputInlineQueryResultPhotoCopyExtension
    on InputInlineQueryResultPhoto {
  InputInlineQueryResultPhoto copy(
          {String? id,
          String? title,
          String? description,
          String? thumbnailUrl,
          String? photoUrl,
          int? photoWidth,
          int? photoHeight,
          ReplyMarkup? replyMarkup,
          InputMessageContent? inputMessageContent}) =>
      InputInlineQueryResultPhoto(
          id: id ?? this.id,
          title: title ?? this.title,
          description: description ?? this.description,
          thumbnailUrl: thumbnailUrl ?? this.thumbnailUrl,
          photoUrl: photoUrl ?? this.photoUrl,
          photoWidth: photoWidth ?? this.photoWidth,
          photoHeight: photoHeight ?? this.photoHeight,
          replyMarkup: replyMarkup ?? this.replyMarkup,
          inputMessageContent: inputMessageContent ?? this.inputMessageContent);
}

extension InputInlineQueryResultStickerCopyExtension
    on InputInlineQueryResultSticker {
  InputInlineQueryResultSticker copy(
          {String? id,
          String? thumbnailUrl,
          String? stickerUrl,
          int? stickerWidth,
          int? stickerHeight,
          ReplyMarkup? replyMarkup,
          InputMessageContent? inputMessageContent}) =>
      InputInlineQueryResultSticker(
          id: id ?? this.id,
          thumbnailUrl: thumbnailUrl ?? this.thumbnailUrl,
          stickerUrl: stickerUrl ?? this.stickerUrl,
          stickerWidth: stickerWidth ?? this.stickerWidth,
          stickerHeight: stickerHeight ?? this.stickerHeight,
          replyMarkup: replyMarkup ?? this.replyMarkup,
          inputMessageContent: inputMessageContent ?? this.inputMessageContent);
}

extension InputInlineQueryResultVenueCopyExtension
    on InputInlineQueryResultVenue {
  InputInlineQueryResultVenue copy(
          {String? id,
          Venue? venue,
          String? thumbnailUrl,
          int? thumbnailWidth,
          int? thumbnailHeight,
          ReplyMarkup? replyMarkup,
          InputMessageContent? inputMessageContent}) =>
      InputInlineQueryResultVenue(
          id: id ?? this.id,
          venue: venue ?? this.venue,
          thumbnailUrl: thumbnailUrl ?? this.thumbnailUrl,
          thumbnailWidth: thumbnailWidth ?? this.thumbnailWidth,
          thumbnailHeight: thumbnailHeight ?? this.thumbnailHeight,
          replyMarkup: replyMarkup ?? this.replyMarkup,
          inputMessageContent: inputMessageContent ?? this.inputMessageContent);
}

extension InputInlineQueryResultVideoCopyExtension
    on InputInlineQueryResultVideo {
  InputInlineQueryResultVideo copy(
          {String? id,
          String? title,
          String? description,
          String? thumbnailUrl,
          String? videoUrl,
          String? mimeType,
          int? videoWidth,
          int? videoHeight,
          int? videoDuration,
          ReplyMarkup? replyMarkup,
          InputMessageContent? inputMessageContent}) =>
      InputInlineQueryResultVideo(
          id: id ?? this.id,
          title: title ?? this.title,
          description: description ?? this.description,
          thumbnailUrl: thumbnailUrl ?? this.thumbnailUrl,
          videoUrl: videoUrl ?? this.videoUrl,
          mimeType: mimeType ?? this.mimeType,
          videoWidth: videoWidth ?? this.videoWidth,
          videoHeight: videoHeight ?? this.videoHeight,
          videoDuration: videoDuration ?? this.videoDuration,
          replyMarkup: replyMarkup ?? this.replyMarkup,
          inputMessageContent: inputMessageContent ?? this.inputMessageContent);
}

extension InputInlineQueryResultVoiceNoteCopyExtension
    on InputInlineQueryResultVoiceNote {
  InputInlineQueryResultVoiceNote copy(
          {String? id,
          String? title,
          String? voiceNoteUrl,
          int? voiceNoteDuration,
          ReplyMarkup? replyMarkup,
          InputMessageContent? inputMessageContent}) =>
      InputInlineQueryResultVoiceNote(
          id: id ?? this.id,
          title: title ?? this.title,
          voiceNoteUrl: voiceNoteUrl ?? this.voiceNoteUrl,
          voiceNoteDuration: voiceNoteDuration ?? this.voiceNoteDuration,
          replyMarkup: replyMarkup ?? this.replyMarkup,
          inputMessageContent: inputMessageContent ?? this.inputMessageContent);
}

extension InlineQueryResultArticleCopyExtension on InlineQueryResultArticle {
  InlineQueryResultArticle copy(
          {String? id,
          String? url,
          bool? hideUrl,
          String? title,
          String? description,
          Thumbnail? thumbnail}) =>
      InlineQueryResultArticle(
          id: id ?? this.id,
          url: url ?? this.url,
          hideUrl: hideUrl ?? this.hideUrl,
          title: title ?? this.title,
          description: description ?? this.description,
          thumbnail: thumbnail ?? this.thumbnail);
}

extension InlineQueryResultContactCopyExtension on InlineQueryResultContact {
  InlineQueryResultContact copy(
          {String? id, Contact? contact, Thumbnail? thumbnail}) =>
      InlineQueryResultContact(
          id: id ?? this.id,
          contact: contact ?? this.contact,
          thumbnail: thumbnail ?? this.thumbnail);
}

extension InlineQueryResultLocationCopyExtension on InlineQueryResultLocation {
  InlineQueryResultLocation copy(
          {String? id,
          Location? location,
          String? title,
          Thumbnail? thumbnail}) =>
      InlineQueryResultLocation(
          id: id ?? this.id,
          location: location ?? this.location,
          title: title ?? this.title,
          thumbnail: thumbnail ?? this.thumbnail);
}

extension InlineQueryResultVenueCopyExtension on InlineQueryResultVenue {
  InlineQueryResultVenue copy(
          {String? id, Venue? venue, Thumbnail? thumbnail}) =>
      InlineQueryResultVenue(
          id: id ?? this.id,
          venue: venue ?? this.venue,
          thumbnail: thumbnail ?? this.thumbnail);
}

extension InlineQueryResultGameCopyExtension on InlineQueryResultGame {
  InlineQueryResultGame copy({String? id, Game? game}) =>
      InlineQueryResultGame(id: id ?? this.id, game: game ?? this.game);
}

extension InlineQueryResultAnimationCopyExtension
    on InlineQueryResultAnimation {
  InlineQueryResultAnimation copy(
          {String? id, Animation? animation, String? title}) =>
      InlineQueryResultAnimation(
          id: id ?? this.id,
          animation: animation ?? this.animation,
          title: title ?? this.title);
}

extension InlineQueryResultAudioCopyExtension on InlineQueryResultAudio {
  InlineQueryResultAudio copy({String? id, Audio? audio}) =>
      InlineQueryResultAudio(id: id ?? this.id, audio: audio ?? this.audio);
}

extension InlineQueryResultDocumentCopyExtension on InlineQueryResultDocument {
  InlineQueryResultDocument copy(
          {String? id,
          Document? document,
          String? title,
          String? description}) =>
      InlineQueryResultDocument(
          id: id ?? this.id,
          document: document ?? this.document,
          title: title ?? this.title,
          description: description ?? this.description);
}

extension InlineQueryResultPhotoCopyExtension on InlineQueryResultPhoto {
  InlineQueryResultPhoto copy(
          {String? id, Photo? photo, String? title, String? description}) =>
      InlineQueryResultPhoto(
          id: id ?? this.id,
          photo: photo ?? this.photo,
          title: title ?? this.title,
          description: description ?? this.description);
}

extension InlineQueryResultStickerCopyExtension on InlineQueryResultSticker {
  InlineQueryResultSticker copy({String? id, Sticker? sticker}) =>
      InlineQueryResultSticker(
          id: id ?? this.id, sticker: sticker ?? this.sticker);
}

extension InlineQueryResultVideoCopyExtension on InlineQueryResultVideo {
  InlineQueryResultVideo copy(
          {String? id, Video? video, String? title, String? description}) =>
      InlineQueryResultVideo(
          id: id ?? this.id,
          video: video ?? this.video,
          title: title ?? this.title,
          description: description ?? this.description);
}

extension InlineQueryResultVoiceNoteCopyExtension
    on InlineQueryResultVoiceNote {
  InlineQueryResultVoiceNote copy(
          {String? id, VoiceNote? voiceNote, String? title}) =>
      InlineQueryResultVoiceNote(
          id: id ?? this.id,
          voiceNote: voiceNote ?? this.voiceNote,
          title: title ?? this.title);
}

extension InlineQueryResultsCopyExtension on InlineQueryResults {
  InlineQueryResults copy(
          {int? inlineQueryId,
          String? nextOffset,
          List<InlineQueryResult>? results,
          String? switchPmText,
          String? switchPmParameter}) =>
      InlineQueryResults(
          inlineQueryId: inlineQueryId ?? this.inlineQueryId,
          nextOffset: nextOffset ?? this.nextOffset,
          results: results ?? this.results,
          switchPmText: switchPmText ?? this.switchPmText,
          switchPmParameter: switchPmParameter ?? this.switchPmParameter);
}

extension CallbackQueryPayloadDataCopyExtension on CallbackQueryPayloadData {
  CallbackQueryPayloadData copy({String? data}) =>
      CallbackQueryPayloadData(data: data ?? this.data);
}

extension CallbackQueryPayloadDataWithPasswordCopyExtension
    on CallbackQueryPayloadDataWithPassword {
  CallbackQueryPayloadDataWithPassword copy({String? password, String? data}) =>
      CallbackQueryPayloadDataWithPassword(
          password: password ?? this.password, data: data ?? this.data);
}

extension CallbackQueryPayloadGameCopyExtension on CallbackQueryPayloadGame {
  CallbackQueryPayloadGame copy({String? gameShortName}) =>
      CallbackQueryPayloadGame(
          gameShortName: gameShortName ?? this.gameShortName);
}

extension CallbackQueryAnswerCopyExtension on CallbackQueryAnswer {
  CallbackQueryAnswer copy({String? text, bool? showAlert, String? url}) =>
      CallbackQueryAnswer(
          text: text ?? this.text,
          showAlert: showAlert ?? this.showAlert,
          url: url ?? this.url);
}

extension CustomRequestResultCopyExtension on CustomRequestResult {
  CustomRequestResult copy({String? result}) =>
      CustomRequestResult(result: result ?? this.result);
}

extension GameHighScoreCopyExtension on GameHighScore {
  GameHighScore copy({int? position, int? userId, int? score}) => GameHighScore(
      position: position ?? this.position,
      userId: userId ?? this.userId,
      score: score ?? this.score);
}

extension GameHighScoresCopyExtension on GameHighScores {
  GameHighScores copy({List<GameHighScore>? scores}) =>
      GameHighScores(scores: scores ?? this.scores);
}

extension ChatEventMessageEditedCopyExtension on ChatEventMessageEdited {
  ChatEventMessageEdited copy({Message? oldMessage, Message? newMessage}) =>
      ChatEventMessageEdited(
          oldMessage: oldMessage ?? this.oldMessage,
          newMessage: newMessage ?? this.newMessage);
}

extension ChatEventMessageDeletedCopyExtension on ChatEventMessageDeleted {
  ChatEventMessageDeleted copy({Message? message}) =>
      ChatEventMessageDeleted(message: message ?? this.message);
}

extension ChatEventPollStoppedCopyExtension on ChatEventPollStopped {
  ChatEventPollStopped copy({Message? message}) =>
      ChatEventPollStopped(message: message ?? this.message);
}

extension ChatEventMessagePinnedCopyExtension on ChatEventMessagePinned {
  ChatEventMessagePinned copy({Message? message}) =>
      ChatEventMessagePinned(message: message ?? this.message);
}

extension ChatEventMessageUnpinnedCopyExtension on ChatEventMessageUnpinned {
  ChatEventMessageUnpinned copy({Message? message}) =>
      ChatEventMessageUnpinned(message: message ?? this.message);
}

extension ChatEventMemberJoinedByInviteLinkCopyExtension
    on ChatEventMemberJoinedByInviteLink {
  ChatEventMemberJoinedByInviteLink copy({ChatInviteLink? inviteLink}) =>
      ChatEventMemberJoinedByInviteLink(
          inviteLink: inviteLink ?? this.inviteLink);
}

extension ChatEventMemberInvitedCopyExtension on ChatEventMemberInvited {
  ChatEventMemberInvited copy({int? userId, ChatMemberStatus? status}) =>
      ChatEventMemberInvited(
          userId: userId ?? this.userId, status: status ?? this.status);
}

extension ChatEventMemberPromotedCopyExtension on ChatEventMemberPromoted {
  ChatEventMemberPromoted copy(
          {int? userId,
          ChatMemberStatus? oldStatus,
          ChatMemberStatus? newStatus}) =>
      ChatEventMemberPromoted(
          userId: userId ?? this.userId,
          oldStatus: oldStatus ?? this.oldStatus,
          newStatus: newStatus ?? this.newStatus);
}

extension ChatEventMemberRestrictedCopyExtension on ChatEventMemberRestricted {
  ChatEventMemberRestricted copy(
          {int? userId,
          ChatMemberStatus? oldStatus,
          ChatMemberStatus? newStatus}) =>
      ChatEventMemberRestricted(
          userId: userId ?? this.userId,
          oldStatus: oldStatus ?? this.oldStatus,
          newStatus: newStatus ?? this.newStatus);
}

extension ChatEventTitleChangedCopyExtension on ChatEventTitleChanged {
  ChatEventTitleChanged copy({String? oldTitle, String? newTitle}) =>
      ChatEventTitleChanged(
          oldTitle: oldTitle ?? this.oldTitle,
          newTitle: newTitle ?? this.newTitle);
}

extension ChatEventPermissionsChangedCopyExtension
    on ChatEventPermissionsChanged {
  ChatEventPermissionsChanged copy(
          {ChatPermissions? oldPermissions, ChatPermissions? newPermissions}) =>
      ChatEventPermissionsChanged(
          oldPermissions: oldPermissions ?? this.oldPermissions,
          newPermissions: newPermissions ?? this.newPermissions);
}

extension ChatEventDescriptionChangedCopyExtension
    on ChatEventDescriptionChanged {
  ChatEventDescriptionChanged copy(
          {String? oldDescription, String? newDescription}) =>
      ChatEventDescriptionChanged(
          oldDescription: oldDescription ?? this.oldDescription,
          newDescription: newDescription ?? this.newDescription);
}

extension ChatEventUsernameChangedCopyExtension on ChatEventUsernameChanged {
  ChatEventUsernameChanged copy({String? oldUsername, String? newUsername}) =>
      ChatEventUsernameChanged(
          oldUsername: oldUsername ?? this.oldUsername,
          newUsername: newUsername ?? this.newUsername);
}

extension ChatEventPhotoChangedCopyExtension on ChatEventPhotoChanged {
  ChatEventPhotoChanged copy({ChatPhoto? oldPhoto, ChatPhoto? newPhoto}) =>
      ChatEventPhotoChanged(
          oldPhoto: oldPhoto ?? this.oldPhoto,
          newPhoto: newPhoto ?? this.newPhoto);
}

extension ChatEventInvitesToggledCopyExtension on ChatEventInvitesToggled {
  ChatEventInvitesToggled copy({bool? canInviteUsers}) =>
      ChatEventInvitesToggled(
          canInviteUsers: canInviteUsers ?? this.canInviteUsers);
}

extension ChatEventLinkedChatChangedCopyExtension
    on ChatEventLinkedChatChanged {
  ChatEventLinkedChatChanged copy(
          {int? oldLinkedChatId, int? newLinkedChatId}) =>
      ChatEventLinkedChatChanged(
          oldLinkedChatId: oldLinkedChatId ?? this.oldLinkedChatId,
          newLinkedChatId: newLinkedChatId ?? this.newLinkedChatId);
}

extension ChatEventSlowModeDelayChangedCopyExtension
    on ChatEventSlowModeDelayChanged {
  ChatEventSlowModeDelayChanged copy(
          {int? oldSlowModeDelay, int? newSlowModeDelay}) =>
      ChatEventSlowModeDelayChanged(
          oldSlowModeDelay: oldSlowModeDelay ?? this.oldSlowModeDelay,
          newSlowModeDelay: newSlowModeDelay ?? this.newSlowModeDelay);
}

extension ChatEventMessageTtlSettingChangedCopyExtension
    on ChatEventMessageTtlSettingChanged {
  ChatEventMessageTtlSettingChanged copy(
          {int? oldMessageTtlSetting, int? newMessageTtlSetting}) =>
      ChatEventMessageTtlSettingChanged(
          oldMessageTtlSetting:
              oldMessageTtlSetting ?? this.oldMessageTtlSetting,
          newMessageTtlSetting:
              newMessageTtlSetting ?? this.newMessageTtlSetting);
}

extension ChatEventSignMessagesToggledCopyExtension
    on ChatEventSignMessagesToggled {
  ChatEventSignMessagesToggled copy({bool? signMessages}) =>
      ChatEventSignMessagesToggled(
          signMessages: signMessages ?? this.signMessages);
}

extension ChatEventStickerSetChangedCopyExtension
    on ChatEventStickerSetChanged {
  ChatEventStickerSetChanged copy(
          {int? oldStickerSetId, int? newStickerSetId}) =>
      ChatEventStickerSetChanged(
          oldStickerSetId: oldStickerSetId ?? this.oldStickerSetId,
          newStickerSetId: newStickerSetId ?? this.newStickerSetId);
}

extension ChatEventLocationChangedCopyExtension on ChatEventLocationChanged {
  ChatEventLocationChanged copy(
          {ChatLocation? oldLocation, ChatLocation? newLocation}) =>
      ChatEventLocationChanged(
          oldLocation: oldLocation ?? this.oldLocation,
          newLocation: newLocation ?? this.newLocation);
}

extension ChatEventIsAllHistoryAvailableToggledCopyExtension
    on ChatEventIsAllHistoryAvailableToggled {
  ChatEventIsAllHistoryAvailableToggled copy({bool? isAllHistoryAvailable}) =>
      ChatEventIsAllHistoryAvailableToggled(
          isAllHistoryAvailable:
              isAllHistoryAvailable ?? this.isAllHistoryAvailable);
}

extension ChatEventInviteLinkEditedCopyExtension on ChatEventInviteLinkEdited {
  ChatEventInviteLinkEdited copy(
          {ChatInviteLink? oldInviteLink, ChatInviteLink? newInviteLink}) =>
      ChatEventInviteLinkEdited(
          oldInviteLink: oldInviteLink ?? this.oldInviteLink,
          newInviteLink: newInviteLink ?? this.newInviteLink);
}

extension ChatEventInviteLinkRevokedCopyExtension
    on ChatEventInviteLinkRevoked {
  ChatEventInviteLinkRevoked copy({ChatInviteLink? inviteLink}) =>
      ChatEventInviteLinkRevoked(inviteLink: inviteLink ?? this.inviteLink);
}

extension ChatEventInviteLinkDeletedCopyExtension
    on ChatEventInviteLinkDeleted {
  ChatEventInviteLinkDeleted copy({ChatInviteLink? inviteLink}) =>
      ChatEventInviteLinkDeleted(inviteLink: inviteLink ?? this.inviteLink);
}

extension ChatEventVoiceChatCreatedCopyExtension on ChatEventVoiceChatCreated {
  ChatEventVoiceChatCreated copy({int? groupCallId}) =>
      ChatEventVoiceChatCreated(groupCallId: groupCallId ?? this.groupCallId);
}

extension ChatEventVoiceChatDiscardedCopyExtension
    on ChatEventVoiceChatDiscarded {
  ChatEventVoiceChatDiscarded copy({int? groupCallId}) =>
      ChatEventVoiceChatDiscarded(groupCallId: groupCallId ?? this.groupCallId);
}

extension ChatEventVoiceChatParticipantIsMutedToggledCopyExtension
    on ChatEventVoiceChatParticipantIsMutedToggled {
  ChatEventVoiceChatParticipantIsMutedToggled copy(
          {MessageSender? participant, bool? isMuted}) =>
      ChatEventVoiceChatParticipantIsMutedToggled(
          participant: participant ?? this.participant,
          isMuted: isMuted ?? this.isMuted);
}

extension ChatEventVoiceChatParticipantVolumeLevelChangedCopyExtension
    on ChatEventVoiceChatParticipantVolumeLevelChanged {
  ChatEventVoiceChatParticipantVolumeLevelChanged copy(
          {MessageSender? participant, int? volumeLevel}) =>
      ChatEventVoiceChatParticipantVolumeLevelChanged(
          participant: participant ?? this.participant,
          volumeLevel: volumeLevel ?? this.volumeLevel);
}

extension ChatEventVoiceChatMuteNewParticipantsToggledCopyExtension
    on ChatEventVoiceChatMuteNewParticipantsToggled {
  ChatEventVoiceChatMuteNewParticipantsToggled copy(
          {bool? muteNewParticipants}) =>
      ChatEventVoiceChatMuteNewParticipantsToggled(
          muteNewParticipants: muteNewParticipants ?? this.muteNewParticipants);
}

extension ChatEventCopyExtension on ChatEvent {
  ChatEvent copy({int? id, int? date, int? userId, ChatEventAction? action}) =>
      ChatEvent(
          id: id ?? this.id,
          date: date ?? this.date,
          userId: userId ?? this.userId,
          action: action ?? this.action);
}

extension ChatEventsCopyExtension on ChatEvents {
  ChatEvents copy({List<ChatEvent>? events}) =>
      ChatEvents(events: events ?? this.events);
}

extension ChatEventLogFiltersCopyExtension on ChatEventLogFilters {
  ChatEventLogFilters copy(
          {bool? messageEdits,
          bool? messageDeletions,
          bool? messagePins,
          bool? memberJoins,
          bool? memberLeaves,
          bool? memberInvites,
          bool? memberPromotions,
          bool? memberRestrictions,
          bool? infoChanges,
          bool? settingChanges,
          bool? inviteLinkChanges,
          bool? voiceChatChanges}) =>
      ChatEventLogFilters(
          messageEdits: messageEdits ?? this.messageEdits,
          messageDeletions: messageDeletions ?? this.messageDeletions,
          messagePins: messagePins ?? this.messagePins,
          memberJoins: memberJoins ?? this.memberJoins,
          memberLeaves: memberLeaves ?? this.memberLeaves,
          memberInvites: memberInvites ?? this.memberInvites,
          memberPromotions: memberPromotions ?? this.memberPromotions,
          memberRestrictions: memberRestrictions ?? this.memberRestrictions,
          infoChanges: infoChanges ?? this.infoChanges,
          settingChanges: settingChanges ?? this.settingChanges,
          inviteLinkChanges: inviteLinkChanges ?? this.inviteLinkChanges,
          voiceChatChanges: voiceChatChanges ?? this.voiceChatChanges);
}

extension LanguagePackStringValueOrdinaryCopyExtension
    on LanguagePackStringValueOrdinary {
  LanguagePackStringValueOrdinary copy({String? value}) =>
      LanguagePackStringValueOrdinary(value: value ?? this.value);
}

extension LanguagePackStringValuePluralizedCopyExtension
    on LanguagePackStringValuePluralized {
  LanguagePackStringValuePluralized copy(
          {String? zeroValue,
          String? oneValue,
          String? twoValue,
          String? fewValue,
          String? manyValue,
          String? otherValue}) =>
      LanguagePackStringValuePluralized(
          zeroValue: zeroValue ?? this.zeroValue,
          oneValue: oneValue ?? this.oneValue,
          twoValue: twoValue ?? this.twoValue,
          fewValue: fewValue ?? this.fewValue,
          manyValue: manyValue ?? this.manyValue,
          otherValue: otherValue ?? this.otherValue);
}

extension LanguagePackStringCopyExtension on LanguagePackString {
  LanguagePackString copy({String? key, LanguagePackStringValue? value}) =>
      LanguagePackString(key: key ?? this.key, value: value ?? this.value);
}

extension LanguagePackStringsCopyExtension on LanguagePackStrings {
  LanguagePackStrings copy({List<LanguagePackString>? strings}) =>
      LanguagePackStrings(strings: strings ?? this.strings);
}

extension LanguagePackInfoCopyExtension on LanguagePackInfo {
  LanguagePackInfo copy(
          {String? id,
          String? baseLanguagePackId,
          String? name,
          String? nativeName,
          String? pluralCode,
          bool? isOfficial,
          bool? isRtl,
          bool? isBeta,
          bool? isInstalled,
          int? totalStringCount,
          int? translatedStringCount,
          int? localStringCount,
          String? translationUrl}) =>
      LanguagePackInfo(
          id: id ?? this.id,
          baseLanguagePackId: baseLanguagePackId ?? this.baseLanguagePackId,
          name: name ?? this.name,
          nativeName: nativeName ?? this.nativeName,
          pluralCode: pluralCode ?? this.pluralCode,
          isOfficial: isOfficial ?? this.isOfficial,
          isRtl: isRtl ?? this.isRtl,
          isBeta: isBeta ?? this.isBeta,
          isInstalled: isInstalled ?? this.isInstalled,
          totalStringCount: totalStringCount ?? this.totalStringCount,
          translatedStringCount:
              translatedStringCount ?? this.translatedStringCount,
          localStringCount: localStringCount ?? this.localStringCount,
          translationUrl: translationUrl ?? this.translationUrl);
}

extension LocalizationTargetInfoCopyExtension on LocalizationTargetInfo {
  LocalizationTargetInfo copy({List<LanguagePackInfo>? languagePacks}) =>
      LocalizationTargetInfo(
          languagePacks: languagePacks ?? this.languagePacks);
}

extension DeviceTokenFirebaseCloudMessagingCopyExtension
    on DeviceTokenFirebaseCloudMessaging {
  DeviceTokenFirebaseCloudMessaging copy({String? token, bool? encrypt}) =>
      DeviceTokenFirebaseCloudMessaging(
          token: token ?? this.token, encrypt: encrypt ?? this.encrypt);
}

extension DeviceTokenApplePushCopyExtension on DeviceTokenApplePush {
  DeviceTokenApplePush copy({String? deviceToken, bool? isAppSandbox}) =>
      DeviceTokenApplePush(
          deviceToken: deviceToken ?? this.deviceToken,
          isAppSandbox: isAppSandbox ?? this.isAppSandbox);
}

extension DeviceTokenApplePushVoIPCopyExtension on DeviceTokenApplePushVoIP {
  DeviceTokenApplePushVoIP copy(
          {String? deviceToken, bool? isAppSandbox, bool? encrypt}) =>
      DeviceTokenApplePushVoIP(
          deviceToken: deviceToken ?? this.deviceToken,
          isAppSandbox: isAppSandbox ?? this.isAppSandbox,
          encrypt: encrypt ?? this.encrypt);
}

extension DeviceTokenWindowsPushCopyExtension on DeviceTokenWindowsPush {
  DeviceTokenWindowsPush copy({String? accessToken}) =>
      DeviceTokenWindowsPush(accessToken: accessToken ?? this.accessToken);
}

extension DeviceTokenMicrosoftPushCopyExtension on DeviceTokenMicrosoftPush {
  DeviceTokenMicrosoftPush copy({String? channelUri}) =>
      DeviceTokenMicrosoftPush(channelUri: channelUri ?? this.channelUri);
}

extension DeviceTokenMicrosoftPushVoIPCopyExtension
    on DeviceTokenMicrosoftPushVoIP {
  DeviceTokenMicrosoftPushVoIP copy({String? channelUri}) =>
      DeviceTokenMicrosoftPushVoIP(channelUri: channelUri ?? this.channelUri);
}

extension DeviceTokenWebPushCopyExtension on DeviceTokenWebPush {
  DeviceTokenWebPush copy(
          {String? endpoint, String? p256dhBase64url, String? authBase64url}) =>
      DeviceTokenWebPush(
          endpoint: endpoint ?? this.endpoint,
          p256dhBase64url: p256dhBase64url ?? this.p256dhBase64url,
          authBase64url: authBase64url ?? this.authBase64url);
}

extension DeviceTokenSimplePushCopyExtension on DeviceTokenSimplePush {
  DeviceTokenSimplePush copy({String? endpoint}) =>
      DeviceTokenSimplePush(endpoint: endpoint ?? this.endpoint);
}

extension DeviceTokenUbuntuPushCopyExtension on DeviceTokenUbuntuPush {
  DeviceTokenUbuntuPush copy({String? token}) =>
      DeviceTokenUbuntuPush(token: token ?? this.token);
}

extension DeviceTokenBlackBerryPushCopyExtension on DeviceTokenBlackBerryPush {
  DeviceTokenBlackBerryPush copy({String? token}) =>
      DeviceTokenBlackBerryPush(token: token ?? this.token);
}

extension DeviceTokenTizenPushCopyExtension on DeviceTokenTizenPush {
  DeviceTokenTizenPush copy({String? regId}) =>
      DeviceTokenTizenPush(regId: regId ?? this.regId);
}

extension PushReceiverIdCopyExtension on PushReceiverId {
  PushReceiverId copy({int? id}) => PushReceiverId(id: id ?? this.id);
}

extension BackgroundFillSolidCopyExtension on BackgroundFillSolid {
  BackgroundFillSolid copy({int? color}) =>
      BackgroundFillSolid(color: color ?? this.color);
}

extension BackgroundFillGradientCopyExtension on BackgroundFillGradient {
  BackgroundFillGradient copy(
          {int? topColor, int? bottomColor, int? rotationAngle}) =>
      BackgroundFillGradient(
          topColor: topColor ?? this.topColor,
          bottomColor: bottomColor ?? this.bottomColor,
          rotationAngle: rotationAngle ?? this.rotationAngle);
}

extension BackgroundTypeWallpaperCopyExtension on BackgroundTypeWallpaper {
  BackgroundTypeWallpaper copy({bool? isBlurred, bool? isMoving}) =>
      BackgroundTypeWallpaper(
          isBlurred: isBlurred ?? this.isBlurred,
          isMoving: isMoving ?? this.isMoving);
}

extension BackgroundTypePatternCopyExtension on BackgroundTypePattern {
  BackgroundTypePattern copy(
          {BackgroundFill? fill, int? intensity, bool? isMoving}) =>
      BackgroundTypePattern(
          fill: fill ?? this.fill,
          intensity: intensity ?? this.intensity,
          isMoving: isMoving ?? this.isMoving);
}

extension BackgroundTypeFillCopyExtension on BackgroundTypeFill {
  BackgroundTypeFill copy({BackgroundFill? fill}) =>
      BackgroundTypeFill(fill: fill ?? this.fill);
}

extension BackgroundCopyExtension on Background {
  Background copy(
          {int? id,
          bool? isDefault,
          bool? isDark,
          String? name,
          Document? document,
          BackgroundType? type}) =>
      Background(
          id: id ?? this.id,
          isDefault: isDefault ?? this.isDefault,
          isDark: isDark ?? this.isDark,
          name: name ?? this.name,
          document: document ?? this.document,
          type: type ?? this.type);
}

extension BackgroundsCopyExtension on Backgrounds {
  Backgrounds copy({List<Background>? backgrounds}) =>
      Backgrounds(backgrounds: backgrounds ?? this.backgrounds);
}

extension InputBackgroundLocalCopyExtension on InputBackgroundLocal {
  InputBackgroundLocal copy({InputFile? background}) =>
      InputBackgroundLocal(background: background ?? this.background);
}

extension InputBackgroundRemoteCopyExtension on InputBackgroundRemote {
  InputBackgroundRemote copy({int? backgroundId}) =>
      InputBackgroundRemote(backgroundId: backgroundId ?? this.backgroundId);
}

extension HashtagsCopyExtension on Hashtags {
  Hashtags copy({List<String>? hashtags}) =>
      Hashtags(hashtags: hashtags ?? this.hashtags);
}

extension CanTransferOwnershipResultPasswordTooFreshCopyExtension
    on CanTransferOwnershipResultPasswordTooFresh {
  CanTransferOwnershipResultPasswordTooFresh copy({int? retryAfter}) =>
      CanTransferOwnershipResultPasswordTooFresh(
          retryAfter: retryAfter ?? this.retryAfter);
}

extension CanTransferOwnershipResultSessionTooFreshCopyExtension
    on CanTransferOwnershipResultSessionTooFresh {
  CanTransferOwnershipResultSessionTooFresh copy({int? retryAfter}) =>
      CanTransferOwnershipResultSessionTooFresh(
          retryAfter: retryAfter ?? this.retryAfter);
}

extension MessageFileTypePrivateCopyExtension on MessageFileTypePrivate {
  MessageFileTypePrivate copy({String? name}) =>
      MessageFileTypePrivate(name: name ?? this.name);
}

extension MessageFileTypeGroupCopyExtension on MessageFileTypeGroup {
  MessageFileTypeGroup copy({String? title}) =>
      MessageFileTypeGroup(title: title ?? this.title);
}

extension PushMessageContentHiddenCopyExtension on PushMessageContentHidden {
  PushMessageContentHidden copy({bool? isPinned}) =>
      PushMessageContentHidden(isPinned: isPinned ?? this.isPinned);
}

extension PushMessageContentAnimationCopyExtension
    on PushMessageContentAnimation {
  PushMessageContentAnimation copy(
          {Animation? animation, String? caption, bool? isPinned}) =>
      PushMessageContentAnimation(
          animation: animation ?? this.animation,
          caption: caption ?? this.caption,
          isPinned: isPinned ?? this.isPinned);
}

extension PushMessageContentAudioCopyExtension on PushMessageContentAudio {
  PushMessageContentAudio copy({Audio? audio, bool? isPinned}) =>
      PushMessageContentAudio(
          audio: audio ?? this.audio, isPinned: isPinned ?? this.isPinned);
}

extension PushMessageContentContactCopyExtension on PushMessageContentContact {
  PushMessageContentContact copy({String? name, bool? isPinned}) =>
      PushMessageContentContact(
          name: name ?? this.name, isPinned: isPinned ?? this.isPinned);
}

extension PushMessageContentDocumentCopyExtension
    on PushMessageContentDocument {
  PushMessageContentDocument copy({Document? document, bool? isPinned}) =>
      PushMessageContentDocument(
          document: document ?? this.document,
          isPinned: isPinned ?? this.isPinned);
}

extension PushMessageContentGameCopyExtension on PushMessageContentGame {
  PushMessageContentGame copy({String? title, bool? isPinned}) =>
      PushMessageContentGame(
          title: title ?? this.title, isPinned: isPinned ?? this.isPinned);
}

extension PushMessageContentGameScoreCopyExtension
    on PushMessageContentGameScore {
  PushMessageContentGameScore copy(
          {String? title, int? score, bool? isPinned}) =>
      PushMessageContentGameScore(
          title: title ?? this.title,
          score: score ?? this.score,
          isPinned: isPinned ?? this.isPinned);
}

extension PushMessageContentInvoiceCopyExtension on PushMessageContentInvoice {
  PushMessageContentInvoice copy({String? price, bool? isPinned}) =>
      PushMessageContentInvoice(
          price: price ?? this.price, isPinned: isPinned ?? this.isPinned);
}

extension PushMessageContentLocationCopyExtension
    on PushMessageContentLocation {
  PushMessageContentLocation copy({bool? isLive, bool? isPinned}) =>
      PushMessageContentLocation(
          isLive: isLive ?? this.isLive, isPinned: isPinned ?? this.isPinned);
}

extension PushMessageContentPhotoCopyExtension on PushMessageContentPhoto {
  PushMessageContentPhoto copy(
          {Photo? photo, String? caption, bool? isSecret, bool? isPinned}) =>
      PushMessageContentPhoto(
          photo: photo ?? this.photo,
          caption: caption ?? this.caption,
          isSecret: isSecret ?? this.isSecret,
          isPinned: isPinned ?? this.isPinned);
}

extension PushMessageContentPollCopyExtension on PushMessageContentPoll {
  PushMessageContentPoll copy(
          {String? question, bool? isRegular, bool? isPinned}) =>
      PushMessageContentPoll(
          question: question ?? this.question,
          isRegular: isRegular ?? this.isRegular,
          isPinned: isPinned ?? this.isPinned);
}

extension PushMessageContentStickerCopyExtension on PushMessageContentSticker {
  PushMessageContentSticker copy(
          {Sticker? sticker, String? emoji, bool? isPinned}) =>
      PushMessageContentSticker(
          sticker: sticker ?? this.sticker,
          emoji: emoji ?? this.emoji,
          isPinned: isPinned ?? this.isPinned);
}

extension PushMessageContentTextCopyExtension on PushMessageContentText {
  PushMessageContentText copy({String? text, bool? isPinned}) =>
      PushMessageContentText(
          text: text ?? this.text, isPinned: isPinned ?? this.isPinned);
}

extension PushMessageContentVideoCopyExtension on PushMessageContentVideo {
  PushMessageContentVideo copy(
          {Video? video, String? caption, bool? isSecret, bool? isPinned}) =>
      PushMessageContentVideo(
          video: video ?? this.video,
          caption: caption ?? this.caption,
          isSecret: isSecret ?? this.isSecret,
          isPinned: isPinned ?? this.isPinned);
}

extension PushMessageContentVideoNoteCopyExtension
    on PushMessageContentVideoNote {
  PushMessageContentVideoNote copy({VideoNote? videoNote, bool? isPinned}) =>
      PushMessageContentVideoNote(
          videoNote: videoNote ?? this.videoNote,
          isPinned: isPinned ?? this.isPinned);
}

extension PushMessageContentVoiceNoteCopyExtension
    on PushMessageContentVoiceNote {
  PushMessageContentVoiceNote copy({VoiceNote? voiceNote, bool? isPinned}) =>
      PushMessageContentVoiceNote(
          voiceNote: voiceNote ?? this.voiceNote,
          isPinned: isPinned ?? this.isPinned);
}

extension PushMessageContentChatAddMembersCopyExtension
    on PushMessageContentChatAddMembers {
  PushMessageContentChatAddMembers copy(
          {String? memberName, bool? isCurrentUser, bool? isReturned}) =>
      PushMessageContentChatAddMembers(
          memberName: memberName ?? this.memberName,
          isCurrentUser: isCurrentUser ?? this.isCurrentUser,
          isReturned: isReturned ?? this.isReturned);
}

extension PushMessageContentChatChangeTitleCopyExtension
    on PushMessageContentChatChangeTitle {
  PushMessageContentChatChangeTitle copy({String? title}) =>
      PushMessageContentChatChangeTitle(title: title ?? this.title);
}

extension PushMessageContentChatDeleteMemberCopyExtension
    on PushMessageContentChatDeleteMember {
  PushMessageContentChatDeleteMember copy(
          {String? memberName, bool? isCurrentUser, bool? isLeft}) =>
      PushMessageContentChatDeleteMember(
          memberName: memberName ?? this.memberName,
          isCurrentUser: isCurrentUser ?? this.isCurrentUser,
          isLeft: isLeft ?? this.isLeft);
}

extension PushMessageContentMessageForwardsCopyExtension
    on PushMessageContentMessageForwards {
  PushMessageContentMessageForwards copy({int? totalCount}) =>
      PushMessageContentMessageForwards(
          totalCount: totalCount ?? this.totalCount);
}

extension PushMessageContentMediaAlbumCopyExtension
    on PushMessageContentMediaAlbum {
  PushMessageContentMediaAlbum copy(
          {int? totalCount,
          bool? hasPhotos,
          bool? hasVideos,
          bool? hasAudios,
          bool? hasDocuments}) =>
      PushMessageContentMediaAlbum(
          totalCount: totalCount ?? this.totalCount,
          hasPhotos: hasPhotos ?? this.hasPhotos,
          hasVideos: hasVideos ?? this.hasVideos,
          hasAudios: hasAudios ?? this.hasAudios,
          hasDocuments: hasDocuments ?? this.hasDocuments);
}

extension NotificationTypeNewMessageCopyExtension
    on NotificationTypeNewMessage {
  NotificationTypeNewMessage copy({Message? message}) =>
      NotificationTypeNewMessage(message: message ?? this.message);
}

extension NotificationTypeNewCallCopyExtension on NotificationTypeNewCall {
  NotificationTypeNewCall copy({int? callId}) =>
      NotificationTypeNewCall(callId: callId ?? this.callId);
}

extension NotificationTypeNewPushMessageCopyExtension
    on NotificationTypeNewPushMessage {
  NotificationTypeNewPushMessage copy(
          {int? messageId,
          MessageSender? sender,
          String? senderName,
          bool? isOutgoing,
          PushMessageContent? content}) =>
      NotificationTypeNewPushMessage(
          messageId: messageId ?? this.messageId,
          sender: sender ?? this.sender,
          senderName: senderName ?? this.senderName,
          isOutgoing: isOutgoing ?? this.isOutgoing,
          content: content ?? this.content);
}

extension NotificationCopyExtension on Notification {
  Notification copy(
          {int? id, int? date, bool? isSilent, NotificationType? type}) =>
      Notification(
          id: id ?? this.id,
          date: date ?? this.date,
          isSilent: isSilent ?? this.isSilent,
          type: type ?? this.type);
}

extension NotificationGroupCopyExtension on NotificationGroup {
  NotificationGroup copy(
          {int? id,
          NotificationGroupType? type,
          int? chatId,
          int? totalCount,
          List<Notification>? notifications}) =>
      NotificationGroup(
          id: id ?? this.id,
          type: type ?? this.type,
          chatId: chatId ?? this.chatId,
          totalCount: totalCount ?? this.totalCount,
          notifications: notifications ?? this.notifications);
}

extension OptionValueBooleanCopyExtension on OptionValueBoolean {
  OptionValueBoolean copy({bool? value}) =>
      OptionValueBoolean(value: value ?? this.value);
}

extension OptionValueIntegerCopyExtension on OptionValueInteger {
  OptionValueInteger copy({int? value}) =>
      OptionValueInteger(value: value ?? this.value);
}

extension OptionValueStringCopyExtension on OptionValueString {
  OptionValueString copy({String? value}) =>
      OptionValueString(value: value ?? this.value);
}

extension JsonObjectMemberCopyExtension on JsonObjectMember {
  JsonObjectMember copy({String? key, JsonValue? value}) =>
      JsonObjectMember(key: key ?? this.key, value: value ?? this.value);
}

extension JsonValueBooleanCopyExtension on JsonValueBoolean {
  JsonValueBoolean copy({bool? value}) =>
      JsonValueBoolean(value: value ?? this.value);
}

extension JsonValueNumberCopyExtension on JsonValueNumber {
  JsonValueNumber copy({double? value}) =>
      JsonValueNumber(value: value ?? this.value);
}

extension JsonValueStringCopyExtension on JsonValueString {
  JsonValueString copy({String? value}) =>
      JsonValueString(value: value ?? this.value);
}

extension JsonValueArrayCopyExtension on JsonValueArray {
  JsonValueArray copy({List<JsonValue>? values}) =>
      JsonValueArray(values: values ?? this.values);
}

extension JsonValueObjectCopyExtension on JsonValueObject {
  JsonValueObject copy({List<JsonObjectMember>? members}) =>
      JsonValueObject(members: members ?? this.members);
}

extension UserPrivacySettingRuleAllowUsersCopyExtension
    on UserPrivacySettingRuleAllowUsers {
  UserPrivacySettingRuleAllowUsers copy({List<int>? userIds}) =>
      UserPrivacySettingRuleAllowUsers(userIds: userIds ?? this.userIds);
}

extension UserPrivacySettingRuleAllowChatMembersCopyExtension
    on UserPrivacySettingRuleAllowChatMembers {
  UserPrivacySettingRuleAllowChatMembers copy({List<int>? chatIds}) =>
      UserPrivacySettingRuleAllowChatMembers(chatIds: chatIds ?? this.chatIds);
}

extension UserPrivacySettingRuleRestrictUsersCopyExtension
    on UserPrivacySettingRuleRestrictUsers {
  UserPrivacySettingRuleRestrictUsers copy({List<int>? userIds}) =>
      UserPrivacySettingRuleRestrictUsers(userIds: userIds ?? this.userIds);
}

extension UserPrivacySettingRuleRestrictChatMembersCopyExtension
    on UserPrivacySettingRuleRestrictChatMembers {
  UserPrivacySettingRuleRestrictChatMembers copy({List<int>? chatIds}) =>
      UserPrivacySettingRuleRestrictChatMembers(
          chatIds: chatIds ?? this.chatIds);
}

extension UserPrivacySettingRulesCopyExtension on UserPrivacySettingRules {
  UserPrivacySettingRules copy({List<UserPrivacySettingRule>? rules}) =>
      UserPrivacySettingRules(rules: rules ?? this.rules);
}

extension AccountTtlCopyExtension on AccountTtl {
  AccountTtl copy({int? days}) => AccountTtl(days: days ?? this.days);
}

extension SessionCopyExtension on Session {
  Session copy(
          {int? id,
          bool? isCurrent,
          bool? isPasswordPending,
          int? apiId,
          String? applicationName,
          String? applicationVersion,
          bool? isOfficialApplication,
          String? deviceModel,
          String? platform,
          String? systemVersion,
          int? logInDate,
          int? lastActiveDate,
          String? ip,
          String? country,
          String? region}) =>
      Session(
          id: id ?? this.id,
          isCurrent: isCurrent ?? this.isCurrent,
          isPasswordPending: isPasswordPending ?? this.isPasswordPending,
          apiId: apiId ?? this.apiId,
          applicationName: applicationName ?? this.applicationName,
          applicationVersion: applicationVersion ?? this.applicationVersion,
          isOfficialApplication:
              isOfficialApplication ?? this.isOfficialApplication,
          deviceModel: deviceModel ?? this.deviceModel,
          platform: platform ?? this.platform,
          systemVersion: systemVersion ?? this.systemVersion,
          logInDate: logInDate ?? this.logInDate,
          lastActiveDate: lastActiveDate ?? this.lastActiveDate,
          ip: ip ?? this.ip,
          country: country ?? this.country,
          region: region ?? this.region);
}

extension SessionsCopyExtension on Sessions {
  Sessions copy({List<Session>? sessions}) =>
      Sessions(sessions: sessions ?? this.sessions);
}

extension ConnectedWebsiteCopyExtension on ConnectedWebsite {
  ConnectedWebsite copy(
          {int? id,
          String? domainName,
          int? botUserId,
          String? browser,
          String? platform,
          int? logInDate,
          int? lastActiveDate,
          String? ip,
          String? location}) =>
      ConnectedWebsite(
          id: id ?? this.id,
          domainName: domainName ?? this.domainName,
          botUserId: botUserId ?? this.botUserId,
          browser: browser ?? this.browser,
          platform: platform ?? this.platform,
          logInDate: logInDate ?? this.logInDate,
          lastActiveDate: lastActiveDate ?? this.lastActiveDate,
          ip: ip ?? this.ip,
          location: location ?? this.location);
}

extension ConnectedWebsitesCopyExtension on ConnectedWebsites {
  ConnectedWebsites copy({List<ConnectedWebsite>? websites}) =>
      ConnectedWebsites(websites: websites ?? this.websites);
}

extension MessageLinkCopyExtension on MessageLink {
  MessageLink copy({String? link, bool? isPublic}) =>
      MessageLink(link: link ?? this.link, isPublic: isPublic ?? this.isPublic);
}

extension MessageLinkInfoCopyExtension on MessageLinkInfo {
  MessageLinkInfo copy(
          {bool? isPublic,
          int? chatId,
          Message? message,
          bool? forAlbum,
          bool? forComment}) =>
      MessageLinkInfo(
          isPublic: isPublic ?? this.isPublic,
          chatId: chatId ?? this.chatId,
          message: message ?? this.message,
          forAlbum: forAlbum ?? this.forAlbum,
          forComment: forComment ?? this.forComment);
}

extension FilePartCopyExtension on FilePart {
  FilePart copy({String? data}) => FilePart(data: data ?? this.data);
}

extension StorageStatisticsByFileTypeCopyExtension
    on StorageStatisticsByFileType {
  StorageStatisticsByFileType copy(
          {FileType? fileType, int? size, int? count}) =>
      StorageStatisticsByFileType(
          fileType: fileType ?? this.fileType,
          size: size ?? this.size,
          count: count ?? this.count);
}

extension StorageStatisticsByChatCopyExtension on StorageStatisticsByChat {
  StorageStatisticsByChat copy(
          {int? chatId,
          int? size,
          int? count,
          List<StorageStatisticsByFileType>? byFileType}) =>
      StorageStatisticsByChat(
          chatId: chatId ?? this.chatId,
          size: size ?? this.size,
          count: count ?? this.count,
          byFileType: byFileType ?? this.byFileType);
}

extension StorageStatisticsCopyExtension on StorageStatistics {
  StorageStatistics copy(
          {int? size, int? count, List<StorageStatisticsByChat>? byChat}) =>
      StorageStatistics(
          size: size ?? this.size,
          count: count ?? this.count,
          byChat: byChat ?? this.byChat);
}

extension StorageStatisticsFastCopyExtension on StorageStatisticsFast {
  StorageStatisticsFast copy(
          {int? filesSize,
          int? fileCount,
          int? databaseSize,
          int? languagePackDatabaseSize,
          int? logSize}) =>
      StorageStatisticsFast(
          filesSize: filesSize ?? this.filesSize,
          fileCount: fileCount ?? this.fileCount,
          databaseSize: databaseSize ?? this.databaseSize,
          languagePackDatabaseSize:
              languagePackDatabaseSize ?? this.languagePackDatabaseSize,
          logSize: logSize ?? this.logSize);
}

extension DatabaseStatisticsCopyExtension on DatabaseStatistics {
  DatabaseStatistics copy({String? statistics}) =>
      DatabaseStatistics(statistics: statistics ?? this.statistics);
}

extension NetworkStatisticsEntryFileCopyExtension
    on NetworkStatisticsEntryFile {
  NetworkStatisticsEntryFile copy(
          {FileType? fileType,
          NetworkType? networkType,
          int? sentBytes,
          int? receivedBytes}) =>
      NetworkStatisticsEntryFile(
          fileType: fileType ?? this.fileType,
          networkType: networkType ?? this.networkType,
          sentBytes: sentBytes ?? this.sentBytes,
          receivedBytes: receivedBytes ?? this.receivedBytes);
}

extension NetworkStatisticsEntryCallCopyExtension
    on NetworkStatisticsEntryCall {
  NetworkStatisticsEntryCall copy(
          {NetworkType? networkType,
          int? sentBytes,
          int? receivedBytes,
          double? duration}) =>
      NetworkStatisticsEntryCall(
          networkType: networkType ?? this.networkType,
          sentBytes: sentBytes ?? this.sentBytes,
          receivedBytes: receivedBytes ?? this.receivedBytes,
          duration: duration ?? this.duration);
}

extension NetworkStatisticsCopyExtension on NetworkStatistics {
  NetworkStatistics copy(
          {int? sinceDate, List<NetworkStatisticsEntry>? entries}) =>
      NetworkStatistics(
          sinceDate: sinceDate ?? this.sinceDate,
          entries: entries ?? this.entries);
}

extension AutoDownloadSettingsCopyExtension on AutoDownloadSettings {
  AutoDownloadSettings copy(
          {bool? isAutoDownloadEnabled,
          int? maxPhotoFileSize,
          int? maxVideoFileSize,
          int? maxOtherFileSize,
          int? videoUploadBitrate,
          bool? preloadLargeVideos,
          bool? preloadNextAudio,
          bool? useLessDataForCalls}) =>
      AutoDownloadSettings(
          isAutoDownloadEnabled:
              isAutoDownloadEnabled ?? this.isAutoDownloadEnabled,
          maxPhotoFileSize: maxPhotoFileSize ?? this.maxPhotoFileSize,
          maxVideoFileSize: maxVideoFileSize ?? this.maxVideoFileSize,
          maxOtherFileSize: maxOtherFileSize ?? this.maxOtherFileSize,
          videoUploadBitrate: videoUploadBitrate ?? this.videoUploadBitrate,
          preloadLargeVideos: preloadLargeVideos ?? this.preloadLargeVideos,
          preloadNextAudio: preloadNextAudio ?? this.preloadNextAudio,
          useLessDataForCalls: useLessDataForCalls ?? this.useLessDataForCalls);
}

extension AutoDownloadSettingsPresetsCopyExtension
    on AutoDownloadSettingsPresets {
  AutoDownloadSettingsPresets copy(
          {AutoDownloadSettings? low,
          AutoDownloadSettings? medium,
          AutoDownloadSettings? high}) =>
      AutoDownloadSettingsPresets(
          low: low ?? this.low,
          medium: medium ?? this.medium,
          high: high ?? this.high);
}

extension TMeUrlTypeUserCopyExtension on TMeUrlTypeUser {
  TMeUrlTypeUser copy({int? userId}) =>
      TMeUrlTypeUser(userId: userId ?? this.userId);
}

extension TMeUrlTypeSupergroupCopyExtension on TMeUrlTypeSupergroup {
  TMeUrlTypeSupergroup copy({int? supergroupId}) =>
      TMeUrlTypeSupergroup(supergroupId: supergroupId ?? this.supergroupId);
}

extension TMeUrlTypeChatInviteCopyExtension on TMeUrlTypeChatInvite {
  TMeUrlTypeChatInvite copy({ChatInviteLinkInfo? info}) =>
      TMeUrlTypeChatInvite(info: info ?? this.info);
}

extension TMeUrlTypeStickerSetCopyExtension on TMeUrlTypeStickerSet {
  TMeUrlTypeStickerSet copy({int? stickerSetId}) =>
      TMeUrlTypeStickerSet(stickerSetId: stickerSetId ?? this.stickerSetId);
}

extension TMeUrlCopyExtension on TMeUrl {
  TMeUrl copy({String? url, TMeUrlType? type}) =>
      TMeUrl(url: url ?? this.url, type: type ?? this.type);
}

extension TMeUrlsCopyExtension on TMeUrls {
  TMeUrls copy({List<TMeUrl>? urls}) => TMeUrls(urls: urls ?? this.urls);
}

extension SuggestedActionConvertToBroadcastGroupCopyExtension
    on SuggestedActionConvertToBroadcastGroup {
  SuggestedActionConvertToBroadcastGroup copy({int? supergroupId}) =>
      SuggestedActionConvertToBroadcastGroup(
          supergroupId: supergroupId ?? this.supergroupId);
}

extension CountCopyExtension on Count {
  Count copy({int? count}) => Count(count: count ?? this.count);
}

extension TextCopyExtension on Text {
  Text copy({String? text}) => Text(text: text ?? this.text);
}

extension SecondsCopyExtension on Seconds {
  Seconds copy({double? seconds}) => Seconds(seconds: seconds ?? this.seconds);
}

extension DeepLinkInfoCopyExtension on DeepLinkInfo {
  DeepLinkInfo copy({FormattedText? text, bool? needUpdateApplication}) =>
      DeepLinkInfo(
          text: text ?? this.text,
          needUpdateApplication:
              needUpdateApplication ?? this.needUpdateApplication);
}

extension TextParseModeMarkdownCopyExtension on TextParseModeMarkdown {
  TextParseModeMarkdown copy({int? version}) =>
      TextParseModeMarkdown(version: version ?? this.version);
}

extension ProxyTypeSocks5CopyExtension on ProxyTypeSocks5 {
  ProxyTypeSocks5 copy({String? username, String? password}) => ProxyTypeSocks5(
      username: username ?? this.username, password: password ?? this.password);
}

extension ProxyTypeHttpCopyExtension on ProxyTypeHttp {
  ProxyTypeHttp copy({String? username, String? password, bool? httpOnly}) =>
      ProxyTypeHttp(
          username: username ?? this.username,
          password: password ?? this.password,
          httpOnly: httpOnly ?? this.httpOnly);
}

extension ProxyTypeMtprotoCopyExtension on ProxyTypeMtproto {
  ProxyTypeMtproto copy({String? secret}) =>
      ProxyTypeMtproto(secret: secret ?? this.secret);
}

extension ProxyCopyExtension on Proxy {
  Proxy copy(
          {int? id,
          String? server,
          int? port,
          int? lastUsedDate,
          bool? isEnabled,
          ProxyType? type}) =>
      Proxy(
          id: id ?? this.id,
          server: server ?? this.server,
          port: port ?? this.port,
          lastUsedDate: lastUsedDate ?? this.lastUsedDate,
          isEnabled: isEnabled ?? this.isEnabled,
          type: type ?? this.type);
}

extension ProxiesCopyExtension on Proxies {
  Proxies copy({List<Proxy>? proxies}) =>
      Proxies(proxies: proxies ?? this.proxies);
}

extension InputStickerStaticCopyExtension on InputStickerStatic {
  InputStickerStatic copy(
          {InputFile? sticker, String? emojis, MaskPosition? maskPosition}) =>
      InputStickerStatic(
          sticker: sticker ?? this.sticker,
          emojis: emojis ?? this.emojis,
          maskPosition: maskPosition ?? this.maskPosition);
}

extension InputStickerAnimatedCopyExtension on InputStickerAnimated {
  InputStickerAnimated copy({InputFile? sticker, String? emojis}) =>
      InputStickerAnimated(
          sticker: sticker ?? this.sticker, emojis: emojis ?? this.emojis);
}

extension DateRangeCopyExtension on DateRange {
  DateRange copy({int? startDate, int? endDate}) => DateRange(
      startDate: startDate ?? this.startDate, endDate: endDate ?? this.endDate);
}

extension StatisticalValueCopyExtension on StatisticalValue {
  StatisticalValue copy(
          {double? value,
          double? previousValue,
          double? growthRatePercentage}) =>
      StatisticalValue(
          value: value ?? this.value,
          previousValue: previousValue ?? this.previousValue,
          growthRatePercentage:
              growthRatePercentage ?? this.growthRatePercentage);
}

extension StatisticalGraphDataCopyExtension on StatisticalGraphData {
  StatisticalGraphData copy({String? jsonData, String? zoomToken}) =>
      StatisticalGraphData(
          jsonData: jsonData ?? this.jsonData,
          zoomToken: zoomToken ?? this.zoomToken);
}

extension StatisticalGraphAsyncCopyExtension on StatisticalGraphAsync {
  StatisticalGraphAsync copy({String? token}) =>
      StatisticalGraphAsync(token: token ?? this.token);
}

extension StatisticalGraphErrorCopyExtension on StatisticalGraphError {
  StatisticalGraphError copy({String? errorMessage}) =>
      StatisticalGraphError(errorMessage: errorMessage ?? this.errorMessage);
}

extension ChatStatisticsMessageInteractionInfoCopyExtension
    on ChatStatisticsMessageInteractionInfo {
  ChatStatisticsMessageInteractionInfo copy(
          {int? messageId, int? viewCount, int? forwardCount}) =>
      ChatStatisticsMessageInteractionInfo(
          messageId: messageId ?? this.messageId,
          viewCount: viewCount ?? this.viewCount,
          forwardCount: forwardCount ?? this.forwardCount);
}

extension ChatStatisticsMessageSenderInfoCopyExtension
    on ChatStatisticsMessageSenderInfo {
  ChatStatisticsMessageSenderInfo copy(
          {int? userId, int? sentMessageCount, int? averageCharacterCount}) =>
      ChatStatisticsMessageSenderInfo(
          userId: userId ?? this.userId,
          sentMessageCount: sentMessageCount ?? this.sentMessageCount,
          averageCharacterCount:
              averageCharacterCount ?? this.averageCharacterCount);
}

extension ChatStatisticsAdministratorActionsInfoCopyExtension
    on ChatStatisticsAdministratorActionsInfo {
  ChatStatisticsAdministratorActionsInfo copy(
          {int? userId,
          int? deletedMessageCount,
          int? bannedUserCount,
          int? restrictedUserCount}) =>
      ChatStatisticsAdministratorActionsInfo(
          userId: userId ?? this.userId,
          deletedMessageCount: deletedMessageCount ?? this.deletedMessageCount,
          bannedUserCount: bannedUserCount ?? this.bannedUserCount,
          restrictedUserCount: restrictedUserCount ?? this.restrictedUserCount);
}

extension ChatStatisticsInviterInfoCopyExtension on ChatStatisticsInviterInfo {
  ChatStatisticsInviterInfo copy({int? userId, int? addedMemberCount}) =>
      ChatStatisticsInviterInfo(
          userId: userId ?? this.userId,
          addedMemberCount: addedMemberCount ?? this.addedMemberCount);
}

extension ChatStatisticsSupergroupCopyExtension on ChatStatisticsSupergroup {
  ChatStatisticsSupergroup copy(
          {DateRange? period,
          StatisticalValue? memberCount,
          StatisticalValue? messageCount,
          StatisticalValue? viewerCount,
          StatisticalValue? senderCount,
          StatisticalGraph? memberCountGraph,
          StatisticalGraph? joinGraph,
          StatisticalGraph? joinBySourceGraph,
          StatisticalGraph? languageGraph,
          StatisticalGraph? messageContentGraph,
          StatisticalGraph? actionGraph,
          StatisticalGraph? dayGraph,
          StatisticalGraph? weekGraph,
          List<ChatStatisticsMessageSenderInfo>? topSenders,
          List<ChatStatisticsAdministratorActionsInfo>? topAdministrators,
          List<ChatStatisticsInviterInfo>? topInviters}) =>
      ChatStatisticsSupergroup(
          period: period ?? this.period,
          memberCount: memberCount ?? this.memberCount,
          messageCount: messageCount ?? this.messageCount,
          viewerCount: viewerCount ?? this.viewerCount,
          senderCount: senderCount ?? this.senderCount,
          memberCountGraph: memberCountGraph ?? this.memberCountGraph,
          joinGraph: joinGraph ?? this.joinGraph,
          joinBySourceGraph: joinBySourceGraph ?? this.joinBySourceGraph,
          languageGraph: languageGraph ?? this.languageGraph,
          messageContentGraph: messageContentGraph ?? this.messageContentGraph,
          actionGraph: actionGraph ?? this.actionGraph,
          dayGraph: dayGraph ?? this.dayGraph,
          weekGraph: weekGraph ?? this.weekGraph,
          topSenders: topSenders ?? this.topSenders,
          topAdministrators: topAdministrators ?? this.topAdministrators,
          topInviters: topInviters ?? this.topInviters);
}

extension ChatStatisticsChannelCopyExtension on ChatStatisticsChannel {
  ChatStatisticsChannel copy(
          {DateRange? period,
          StatisticalValue? memberCount,
          StatisticalValue? meanViewCount,
          StatisticalValue? meanShareCount,
          double? enabledNotificationsPercentage,
          StatisticalGraph? memberCountGraph,
          StatisticalGraph? joinGraph,
          StatisticalGraph? muteGraph,
          StatisticalGraph? viewCountByHourGraph,
          StatisticalGraph? viewCountBySourceGraph,
          StatisticalGraph? joinBySourceGraph,
          StatisticalGraph? languageGraph,
          StatisticalGraph? messageInteractionGraph,
          StatisticalGraph? instantViewInteractionGraph,
          List<ChatStatisticsMessageInteractionInfo>?
              recentMessageInteractions}) =>
      ChatStatisticsChannel(
          period: period ?? this.period,
          memberCount: memberCount ?? this.memberCount,
          meanViewCount: meanViewCount ?? this.meanViewCount,
          meanShareCount: meanShareCount ?? this.meanShareCount,
          enabledNotificationsPercentage: enabledNotificationsPercentage ??
              this.enabledNotificationsPercentage,
          memberCountGraph: memberCountGraph ?? this.memberCountGraph,
          joinGraph: joinGraph ?? this.joinGraph,
          muteGraph: muteGraph ?? this.muteGraph,
          viewCountByHourGraph:
              viewCountByHourGraph ?? this.viewCountByHourGraph,
          viewCountBySourceGraph:
              viewCountBySourceGraph ?? this.viewCountBySourceGraph,
          joinBySourceGraph: joinBySourceGraph ?? this.joinBySourceGraph,
          languageGraph: languageGraph ?? this.languageGraph,
          messageInteractionGraph:
              messageInteractionGraph ?? this.messageInteractionGraph,
          instantViewInteractionGraph:
              instantViewInteractionGraph ?? this.instantViewInteractionGraph,
          recentMessageInteractions:
              recentMessageInteractions ?? this.recentMessageInteractions);
}

extension MessageStatisticsCopyExtension on MessageStatistics {
  MessageStatistics copy({StatisticalGraph? messageInteractionGraph}) =>
      MessageStatistics(
          messageInteractionGraph:
              messageInteractionGraph ?? this.messageInteractionGraph);
}

extension PointCopyExtension on Point {
  Point copy({double? x, double? y}) => Point(x: x ?? this.x, y: y ?? this.y);
}

extension VectorPathCommandLineCopyExtension on VectorPathCommandLine {
  VectorPathCommandLine copy({Point? endPoint}) =>
      VectorPathCommandLine(endPoint: endPoint ?? this.endPoint);
}

extension VectorPathCommandCubicBezierCurveCopyExtension
    on VectorPathCommandCubicBezierCurve {
  VectorPathCommandCubicBezierCurve copy(
          {Point? startControlPoint,
          Point? endControlPoint,
          Point? endPoint}) =>
      VectorPathCommandCubicBezierCurve(
          startControlPoint: startControlPoint ?? this.startControlPoint,
          endControlPoint: endControlPoint ?? this.endControlPoint,
          endPoint: endPoint ?? this.endPoint);
}

extension UpdateAuthorizationStateCopyExtension on UpdateAuthorizationState {
  UpdateAuthorizationState copy({AuthorizationState? authorizationState}) =>
      UpdateAuthorizationState(
          authorizationState: authorizationState ?? this.authorizationState);
}

extension UpdateNewMessageCopyExtension on UpdateNewMessage {
  UpdateNewMessage copy({Message? message}) =>
      UpdateNewMessage(message: message ?? this.message);
}

extension UpdateMessageSendAcknowledgedCopyExtension
    on UpdateMessageSendAcknowledged {
  UpdateMessageSendAcknowledged copy({int? chatId, int? messageId}) =>
      UpdateMessageSendAcknowledged(
          chatId: chatId ?? this.chatId,
          messageId: messageId ?? this.messageId);
}

extension UpdateMessageSendSucceededCopyExtension
    on UpdateMessageSendSucceeded {
  UpdateMessageSendSucceeded copy({Message? message, int? oldMessageId}) =>
      UpdateMessageSendSucceeded(
          message: message ?? this.message,
          oldMessageId: oldMessageId ?? this.oldMessageId);
}

extension UpdateMessageSendFailedCopyExtension on UpdateMessageSendFailed {
  UpdateMessageSendFailed copy(
          {Message? message,
          int? oldMessageId,
          int? errorCode,
          String? errorMessage}) =>
      UpdateMessageSendFailed(
          message: message ?? this.message,
          oldMessageId: oldMessageId ?? this.oldMessageId,
          errorCode: errorCode ?? this.errorCode,
          errorMessage: errorMessage ?? this.errorMessage);
}

extension UpdateMessageContentCopyExtension on UpdateMessageContent {
  UpdateMessageContent copy(
          {int? chatId, int? messageId, MessageContent? newContent}) =>
      UpdateMessageContent(
          chatId: chatId ?? this.chatId,
          messageId: messageId ?? this.messageId,
          newContent: newContent ?? this.newContent);
}

extension UpdateMessageEditedCopyExtension on UpdateMessageEdited {
  UpdateMessageEdited copy(
          {int? chatId,
          int? messageId,
          int? editDate,
          ReplyMarkup? replyMarkup}) =>
      UpdateMessageEdited(
          chatId: chatId ?? this.chatId,
          messageId: messageId ?? this.messageId,
          editDate: editDate ?? this.editDate,
          replyMarkup: replyMarkup ?? this.replyMarkup);
}

extension UpdateMessageIsPinnedCopyExtension on UpdateMessageIsPinned {
  UpdateMessageIsPinned copy({int? chatId, int? messageId, bool? isPinned}) =>
      UpdateMessageIsPinned(
          chatId: chatId ?? this.chatId,
          messageId: messageId ?? this.messageId,
          isPinned: isPinned ?? this.isPinned);
}

extension UpdateMessageInteractionInfoCopyExtension
    on UpdateMessageInteractionInfo {
  UpdateMessageInteractionInfo copy(
          {int? chatId,
          int? messageId,
          MessageInteractionInfo? interactionInfo}) =>
      UpdateMessageInteractionInfo(
          chatId: chatId ?? this.chatId,
          messageId: messageId ?? this.messageId,
          interactionInfo: interactionInfo ?? this.interactionInfo);
}

extension UpdateMessageContentOpenedCopyExtension
    on UpdateMessageContentOpened {
  UpdateMessageContentOpened copy({int? chatId, int? messageId}) =>
      UpdateMessageContentOpened(
          chatId: chatId ?? this.chatId,
          messageId: messageId ?? this.messageId);
}

extension UpdateMessageMentionReadCopyExtension on UpdateMessageMentionRead {
  UpdateMessageMentionRead copy(
          {int? chatId, int? messageId, int? unreadMentionCount}) =>
      UpdateMessageMentionRead(
          chatId: chatId ?? this.chatId,
          messageId: messageId ?? this.messageId,
          unreadMentionCount: unreadMentionCount ?? this.unreadMentionCount);
}

extension UpdateMessageLiveLocationViewedCopyExtension
    on UpdateMessageLiveLocationViewed {
  UpdateMessageLiveLocationViewed copy({int? chatId, int? messageId}) =>
      UpdateMessageLiveLocationViewed(
          chatId: chatId ?? this.chatId,
          messageId: messageId ?? this.messageId);
}

extension UpdateNewChatCopyExtension on UpdateNewChat {
  UpdateNewChat copy({Chat? chat}) => UpdateNewChat(chat: chat ?? this.chat);
}

extension UpdateChatTitleCopyExtension on UpdateChatTitle {
  UpdateChatTitle copy({int? chatId, String? title}) => UpdateChatTitle(
      chatId: chatId ?? this.chatId, title: title ?? this.title);
}

extension UpdateChatPhotoCopyExtension on UpdateChatPhoto {
  UpdateChatPhoto copy({int? chatId, ChatPhotoInfo? photo}) => UpdateChatPhoto(
      chatId: chatId ?? this.chatId, photo: photo ?? this.photo);
}

extension UpdateChatPermissionsCopyExtension on UpdateChatPermissions {
  UpdateChatPermissions copy({int? chatId, ChatPermissions? permissions}) =>
      UpdateChatPermissions(
          chatId: chatId ?? this.chatId,
          permissions: permissions ?? this.permissions);
}

extension UpdateChatLastMessageCopyExtension on UpdateChatLastMessage {
  UpdateChatLastMessage copy(
          {int? chatId, Message? lastMessage, List<ChatPosition>? positions}) =>
      UpdateChatLastMessage(
          chatId: chatId ?? this.chatId,
          lastMessage: lastMessage ?? this.lastMessage,
          positions: positions ?? this.positions);
}

extension UpdateChatPositionCopyExtension on UpdateChatPosition {
  UpdateChatPosition copy({int? chatId, ChatPosition? position}) =>
      UpdateChatPosition(
          chatId: chatId ?? this.chatId, position: position ?? this.position);
}

extension UpdateChatIsMarkedAsUnreadCopyExtension
    on UpdateChatIsMarkedAsUnread {
  UpdateChatIsMarkedAsUnread copy({int? chatId, bool? isMarkedAsUnread}) =>
      UpdateChatIsMarkedAsUnread(
          chatId: chatId ?? this.chatId,
          isMarkedAsUnread: isMarkedAsUnread ?? this.isMarkedAsUnread);
}

extension UpdateChatIsBlockedCopyExtension on UpdateChatIsBlocked {
  UpdateChatIsBlocked copy({int? chatId, bool? isBlocked}) =>
      UpdateChatIsBlocked(
          chatId: chatId ?? this.chatId,
          isBlocked: isBlocked ?? this.isBlocked);
}

extension UpdateChatHasScheduledMessagesCopyExtension
    on UpdateChatHasScheduledMessages {
  UpdateChatHasScheduledMessages copy(
          {int? chatId, bool? hasScheduledMessages}) =>
      UpdateChatHasScheduledMessages(
          chatId: chatId ?? this.chatId,
          hasScheduledMessages:
              hasScheduledMessages ?? this.hasScheduledMessages);
}

extension UpdateChatVoiceChatCopyExtension on UpdateChatVoiceChat {
  UpdateChatVoiceChat copy({int? chatId, VoiceChat? voiceChat}) =>
      UpdateChatVoiceChat(
          chatId: chatId ?? this.chatId,
          voiceChat: voiceChat ?? this.voiceChat);
}

extension UpdateChatDefaultDisableNotificationCopyExtension
    on UpdateChatDefaultDisableNotification {
  UpdateChatDefaultDisableNotification copy(
          {int? chatId, bool? defaultDisableNotification}) =>
      UpdateChatDefaultDisableNotification(
          chatId: chatId ?? this.chatId,
          defaultDisableNotification:
              defaultDisableNotification ?? this.defaultDisableNotification);
}

extension UpdateChatReadInboxCopyExtension on UpdateChatReadInbox {
  UpdateChatReadInbox copy(
          {int? chatId, int? lastReadInboxMessageId, int? unreadCount}) =>
      UpdateChatReadInbox(
          chatId: chatId ?? this.chatId,
          lastReadInboxMessageId:
              lastReadInboxMessageId ?? this.lastReadInboxMessageId,
          unreadCount: unreadCount ?? this.unreadCount);
}

extension UpdateChatReadOutboxCopyExtension on UpdateChatReadOutbox {
  UpdateChatReadOutbox copy({int? chatId, int? lastReadOutboxMessageId}) =>
      UpdateChatReadOutbox(
          chatId: chatId ?? this.chatId,
          lastReadOutboxMessageId:
              lastReadOutboxMessageId ?? this.lastReadOutboxMessageId);
}

extension UpdateChatUnreadMentionCountCopyExtension
    on UpdateChatUnreadMentionCount {
  UpdateChatUnreadMentionCount copy({int? chatId, int? unreadMentionCount}) =>
      UpdateChatUnreadMentionCount(
          chatId: chatId ?? this.chatId,
          unreadMentionCount: unreadMentionCount ?? this.unreadMentionCount);
}

extension UpdateChatNotificationSettingsCopyExtension
    on UpdateChatNotificationSettings {
  UpdateChatNotificationSettings copy(
          {int? chatId, ChatNotificationSettings? notificationSettings}) =>
      UpdateChatNotificationSettings(
          chatId: chatId ?? this.chatId,
          notificationSettings:
              notificationSettings ?? this.notificationSettings);
}

extension UpdateScopeNotificationSettingsCopyExtension
    on UpdateScopeNotificationSettings {
  UpdateScopeNotificationSettings copy(
          {NotificationSettingsScope? scope,
          ScopeNotificationSettings? notificationSettings}) =>
      UpdateScopeNotificationSettings(
          scope: scope ?? this.scope,
          notificationSettings:
              notificationSettings ?? this.notificationSettings);
}

extension UpdateChatMessageTtlSettingCopyExtension
    on UpdateChatMessageTtlSetting {
  UpdateChatMessageTtlSetting copy({int? chatId, int? messageTtlSetting}) =>
      UpdateChatMessageTtlSetting(
          chatId: chatId ?? this.chatId,
          messageTtlSetting: messageTtlSetting ?? this.messageTtlSetting);
}

extension UpdateChatActionBarCopyExtension on UpdateChatActionBar {
  UpdateChatActionBar copy({int? chatId, ChatActionBar? actionBar}) =>
      UpdateChatActionBar(
          chatId: chatId ?? this.chatId,
          actionBar: actionBar ?? this.actionBar);
}

extension UpdateChatReplyMarkupCopyExtension on UpdateChatReplyMarkup {
  UpdateChatReplyMarkup copy({int? chatId, int? replyMarkupMessageId}) =>
      UpdateChatReplyMarkup(
          chatId: chatId ?? this.chatId,
          replyMarkupMessageId:
              replyMarkupMessageId ?? this.replyMarkupMessageId);
}

extension UpdateChatDraftMessageCopyExtension on UpdateChatDraftMessage {
  UpdateChatDraftMessage copy(
          {int? chatId,
          DraftMessage? draftMessage,
          List<ChatPosition>? positions}) =>
      UpdateChatDraftMessage(
          chatId: chatId ?? this.chatId,
          draftMessage: draftMessage ?? this.draftMessage,
          positions: positions ?? this.positions);
}

extension UpdateChatFiltersCopyExtension on UpdateChatFilters {
  UpdateChatFilters copy({List<ChatFilterInfo>? chatFilters}) =>
      UpdateChatFilters(chatFilters: chatFilters ?? this.chatFilters);
}

extension UpdateChatOnlineMemberCountCopyExtension
    on UpdateChatOnlineMemberCount {
  UpdateChatOnlineMemberCount copy({int? chatId, int? onlineMemberCount}) =>
      UpdateChatOnlineMemberCount(
          chatId: chatId ?? this.chatId,
          onlineMemberCount: onlineMemberCount ?? this.onlineMemberCount);
}

extension UpdateNotificationCopyExtension on UpdateNotification {
  UpdateNotification copy(
          {int? notificationGroupId, Notification? notification}) =>
      UpdateNotification(
          notificationGroupId: notificationGroupId ?? this.notificationGroupId,
          notification: notification ?? this.notification);
}

extension UpdateNotificationGroupCopyExtension on UpdateNotificationGroup {
  UpdateNotificationGroup copy(
          {int? notificationGroupId,
          NotificationGroupType? type,
          int? chatId,
          int? notificationSettingsChatId,
          bool? isSilent,
          int? totalCount,
          List<Notification>? addedNotifications,
          List<int>? removedNotificationIds}) =>
      UpdateNotificationGroup(
          notificationGroupId: notificationGroupId ?? this.notificationGroupId,
          type: type ?? this.type,
          chatId: chatId ?? this.chatId,
          notificationSettingsChatId:
              notificationSettingsChatId ?? this.notificationSettingsChatId,
          isSilent: isSilent ?? this.isSilent,
          totalCount: totalCount ?? this.totalCount,
          addedNotifications: addedNotifications ?? this.addedNotifications,
          removedNotificationIds:
              removedNotificationIds ?? this.removedNotificationIds);
}

extension UpdateActiveNotificationsCopyExtension on UpdateActiveNotifications {
  UpdateActiveNotifications copy({List<NotificationGroup>? groups}) =>
      UpdateActiveNotifications(groups: groups ?? this.groups);
}

extension UpdateHavePendingNotificationsCopyExtension
    on UpdateHavePendingNotifications {
  UpdateHavePendingNotifications copy(
          {bool? haveDelayedNotifications,
          bool? haveUnreceivedNotifications}) =>
      UpdateHavePendingNotifications(
          haveDelayedNotifications:
              haveDelayedNotifications ?? this.haveDelayedNotifications,
          haveUnreceivedNotifications:
              haveUnreceivedNotifications ?? this.haveUnreceivedNotifications);
}

extension UpdateDeleteMessagesCopyExtension on UpdateDeleteMessages {
  UpdateDeleteMessages copy(
          {int? chatId,
          List<int>? messageIds,
          bool? isPermanent,
          bool? fromCache}) =>
      UpdateDeleteMessages(
          chatId: chatId ?? this.chatId,
          messageIds: messageIds ?? this.messageIds,
          isPermanent: isPermanent ?? this.isPermanent,
          fromCache: fromCache ?? this.fromCache);
}

extension UpdateUserChatActionCopyExtension on UpdateUserChatAction {
  UpdateUserChatAction copy(
          {int? chatId,
          int? messageThreadId,
          int? userId,
          ChatAction? action}) =>
      UpdateUserChatAction(
          chatId: chatId ?? this.chatId,
          messageThreadId: messageThreadId ?? this.messageThreadId,
          userId: userId ?? this.userId,
          action: action ?? this.action);
}

extension UpdateUserStatusCopyExtension on UpdateUserStatus {
  UpdateUserStatus copy({int? userId, UserStatus? status}) => UpdateUserStatus(
      userId: userId ?? this.userId, status: status ?? this.status);
}

extension UpdateUserCopyExtension on UpdateUser {
  UpdateUser copy({User? user}) => UpdateUser(user: user ?? this.user);
}

extension UpdateBasicGroupCopyExtension on UpdateBasicGroup {
  UpdateBasicGroup copy({BasicGroup? basicGroup}) =>
      UpdateBasicGroup(basicGroup: basicGroup ?? this.basicGroup);
}

extension UpdateSupergroupCopyExtension on UpdateSupergroup {
  UpdateSupergroup copy({Supergroup? supergroup}) =>
      UpdateSupergroup(supergroup: supergroup ?? this.supergroup);
}

extension UpdateSecretChatCopyExtension on UpdateSecretChat {
  UpdateSecretChat copy({SecretChat? secretChat}) =>
      UpdateSecretChat(secretChat: secretChat ?? this.secretChat);
}

extension UpdateUserFullInfoCopyExtension on UpdateUserFullInfo {
  UpdateUserFullInfo copy({int? userId, UserFullInfo? userFullInfo}) =>
      UpdateUserFullInfo(
          userId: userId ?? this.userId,
          userFullInfo: userFullInfo ?? this.userFullInfo);
}

extension UpdateBasicGroupFullInfoCopyExtension on UpdateBasicGroupFullInfo {
  UpdateBasicGroupFullInfo copy(
          {int? basicGroupId, BasicGroupFullInfo? basicGroupFullInfo}) =>
      UpdateBasicGroupFullInfo(
          basicGroupId: basicGroupId ?? this.basicGroupId,
          basicGroupFullInfo: basicGroupFullInfo ?? this.basicGroupFullInfo);
}

extension UpdateSupergroupFullInfoCopyExtension on UpdateSupergroupFullInfo {
  UpdateSupergroupFullInfo copy(
          {int? supergroupId, SupergroupFullInfo? supergroupFullInfo}) =>
      UpdateSupergroupFullInfo(
          supergroupId: supergroupId ?? this.supergroupId,
          supergroupFullInfo: supergroupFullInfo ?? this.supergroupFullInfo);
}

extension UpdateServiceNotificationCopyExtension on UpdateServiceNotification {
  UpdateServiceNotification copy({String? type, MessageContent? content}) =>
      UpdateServiceNotification(
          type: type ?? this.type, content: content ?? this.content);
}

extension UpdateFileCopyExtension on UpdateFile {
  UpdateFile copy({File? file}) => UpdateFile(file: file ?? this.file);
}

extension UpdateFileGenerationStartCopyExtension on UpdateFileGenerationStart {
  UpdateFileGenerationStart copy(
          {int? generationId,
          String? originalPath,
          String? destinationPath,
          String? conversion}) =>
      UpdateFileGenerationStart(
          generationId: generationId ?? this.generationId,
          originalPath: originalPath ?? this.originalPath,
          destinationPath: destinationPath ?? this.destinationPath,
          conversion: conversion ?? this.conversion);
}

extension UpdateFileGenerationStopCopyExtension on UpdateFileGenerationStop {
  UpdateFileGenerationStop copy({int? generationId}) =>
      UpdateFileGenerationStop(generationId: generationId ?? this.generationId);
}

extension UpdateCallCopyExtension on UpdateCall {
  UpdateCall copy({Call? call}) => UpdateCall(call: call ?? this.call);
}

extension UpdateGroupCallCopyExtension on UpdateGroupCall {
  UpdateGroupCall copy({GroupCall? groupCall}) =>
      UpdateGroupCall(groupCall: groupCall ?? this.groupCall);
}

extension UpdateGroupCallParticipantCopyExtension
    on UpdateGroupCallParticipant {
  UpdateGroupCallParticipant copy(
          {int? groupCallId, GroupCallParticipant? participant}) =>
      UpdateGroupCallParticipant(
          groupCallId: groupCallId ?? this.groupCallId,
          participant: participant ?? this.participant);
}

extension UpdateNewCallSignalingDataCopyExtension
    on UpdateNewCallSignalingData {
  UpdateNewCallSignalingData copy({int? callId, String? data}) =>
      UpdateNewCallSignalingData(
          callId: callId ?? this.callId, data: data ?? this.data);
}

extension UpdateUserPrivacySettingRulesCopyExtension
    on UpdateUserPrivacySettingRules {
  UpdateUserPrivacySettingRules copy(
          {UserPrivacySetting? setting, UserPrivacySettingRules? rules}) =>
      UpdateUserPrivacySettingRules(
          setting: setting ?? this.setting, rules: rules ?? this.rules);
}

extension UpdateUnreadMessageCountCopyExtension on UpdateUnreadMessageCount {
  UpdateUnreadMessageCount copy(
          {ChatList? chatList, int? unreadCount, int? unreadUnmutedCount}) =>
      UpdateUnreadMessageCount(
          chatList: chatList ?? this.chatList,
          unreadCount: unreadCount ?? this.unreadCount,
          unreadUnmutedCount: unreadUnmutedCount ?? this.unreadUnmutedCount);
}

extension UpdateUnreadChatCountCopyExtension on UpdateUnreadChatCount {
  UpdateUnreadChatCount copy(
          {ChatList? chatList,
          int? totalCount,
          int? unreadCount,
          int? unreadUnmutedCount,
          int? markedAsUnreadCount,
          int? markedAsUnreadUnmutedCount}) =>
      UpdateUnreadChatCount(
          chatList: chatList ?? this.chatList,
          totalCount: totalCount ?? this.totalCount,
          unreadCount: unreadCount ?? this.unreadCount,
          unreadUnmutedCount: unreadUnmutedCount ?? this.unreadUnmutedCount,
          markedAsUnreadCount: markedAsUnreadCount ?? this.markedAsUnreadCount,
          markedAsUnreadUnmutedCount:
              markedAsUnreadUnmutedCount ?? this.markedAsUnreadUnmutedCount);
}

extension UpdateOptionCopyExtension on UpdateOption {
  UpdateOption copy({String? name, OptionValue? value}) =>
      UpdateOption(name: name ?? this.name, value: value ?? this.value);
}

extension UpdateStickerSetCopyExtension on UpdateStickerSet {
  UpdateStickerSet copy({StickerSet? stickerSet}) =>
      UpdateStickerSet(stickerSet: stickerSet ?? this.stickerSet);
}

extension UpdateInstalledStickerSetsCopyExtension
    on UpdateInstalledStickerSets {
  UpdateInstalledStickerSets copy({bool? isMasks, List<int>? stickerSetIds}) =>
      UpdateInstalledStickerSets(
          isMasks: isMasks ?? this.isMasks,
          stickerSetIds: stickerSetIds ?? this.stickerSetIds);
}

extension UpdateTrendingStickerSetsCopyExtension on UpdateTrendingStickerSets {
  UpdateTrendingStickerSets copy({StickerSets? stickerSets}) =>
      UpdateTrendingStickerSets(stickerSets: stickerSets ?? this.stickerSets);
}

extension UpdateRecentStickersCopyExtension on UpdateRecentStickers {
  UpdateRecentStickers copy({bool? isAttached, List<int>? stickerIds}) =>
      UpdateRecentStickers(
          isAttached: isAttached ?? this.isAttached,
          stickerIds: stickerIds ?? this.stickerIds);
}

extension UpdateFavoriteStickersCopyExtension on UpdateFavoriteStickers {
  UpdateFavoriteStickers copy({List<int>? stickerIds}) =>
      UpdateFavoriteStickers(stickerIds: stickerIds ?? this.stickerIds);
}

extension UpdateSavedAnimationsCopyExtension on UpdateSavedAnimations {
  UpdateSavedAnimations copy({List<int>? animationIds}) =>
      UpdateSavedAnimations(animationIds: animationIds ?? this.animationIds);
}

extension UpdateSelectedBackgroundCopyExtension on UpdateSelectedBackground {
  UpdateSelectedBackground copy({bool? forDarkTheme, Background? background}) =>
      UpdateSelectedBackground(
          forDarkTheme: forDarkTheme ?? this.forDarkTheme,
          background: background ?? this.background);
}

extension UpdateLanguagePackStringsCopyExtension on UpdateLanguagePackStrings {
  UpdateLanguagePackStrings copy(
          {String? localizationTarget,
          String? languagePackId,
          List<LanguagePackString>? strings}) =>
      UpdateLanguagePackStrings(
          localizationTarget: localizationTarget ?? this.localizationTarget,
          languagePackId: languagePackId ?? this.languagePackId,
          strings: strings ?? this.strings);
}

extension UpdateConnectionStateCopyExtension on UpdateConnectionState {
  UpdateConnectionState copy({ConnectionState? state}) =>
      UpdateConnectionState(state: state ?? this.state);
}

extension UpdateTermsOfServiceCopyExtension on UpdateTermsOfService {
  UpdateTermsOfService copy(
          {String? termsOfServiceId, TermsOfService? termsOfService}) =>
      UpdateTermsOfService(
          termsOfServiceId: termsOfServiceId ?? this.termsOfServiceId,
          termsOfService: termsOfService ?? this.termsOfService);
}

extension UpdateUsersNearbyCopyExtension on UpdateUsersNearby {
  UpdateUsersNearby copy({List<ChatNearby>? usersNearby}) =>
      UpdateUsersNearby(usersNearby: usersNearby ?? this.usersNearby);
}

extension UpdateDiceEmojisCopyExtension on UpdateDiceEmojis {
  UpdateDiceEmojis copy({List<String>? emojis}) =>
      UpdateDiceEmojis(emojis: emojis ?? this.emojis);
}

extension UpdateAnimationSearchParametersCopyExtension
    on UpdateAnimationSearchParameters {
  UpdateAnimationSearchParameters copy(
          {String? provider, List<String>? emojis}) =>
      UpdateAnimationSearchParameters(
          provider: provider ?? this.provider, emojis: emojis ?? this.emojis);
}

extension UpdateSuggestedActionsCopyExtension on UpdateSuggestedActions {
  UpdateSuggestedActions copy(
          {List<SuggestedAction>? addedActions,
          List<SuggestedAction>? removedActions}) =>
      UpdateSuggestedActions(
          addedActions: addedActions ?? this.addedActions,
          removedActions: removedActions ?? this.removedActions);
}

extension UpdateNewInlineQueryCopyExtension on UpdateNewInlineQuery {
  UpdateNewInlineQuery copy(
          {int? id,
          int? senderUserId,
          Location? userLocation,
          ChatType? chatType,
          String? query,
          String? offset}) =>
      UpdateNewInlineQuery(
          id: id ?? this.id,
          senderUserId: senderUserId ?? this.senderUserId,
          userLocation: userLocation ?? this.userLocation,
          chatType: chatType ?? this.chatType,
          query: query ?? this.query,
          offset: offset ?? this.offset);
}

extension UpdateNewChosenInlineResultCopyExtension
    on UpdateNewChosenInlineResult {
  UpdateNewChosenInlineResult copy(
          {int? senderUserId,
          Location? userLocation,
          String? query,
          String? resultId,
          String? inlineMessageId}) =>
      UpdateNewChosenInlineResult(
          senderUserId: senderUserId ?? this.senderUserId,
          userLocation: userLocation ?? this.userLocation,
          query: query ?? this.query,
          resultId: resultId ?? this.resultId,
          inlineMessageId: inlineMessageId ?? this.inlineMessageId);
}

extension UpdateNewCallbackQueryCopyExtension on UpdateNewCallbackQuery {
  UpdateNewCallbackQuery copy(
          {int? id,
          int? senderUserId,
          int? chatId,
          int? messageId,
          int? chatInstance,
          CallbackQueryPayload? payload}) =>
      UpdateNewCallbackQuery(
          id: id ?? this.id,
          senderUserId: senderUserId ?? this.senderUserId,
          chatId: chatId ?? this.chatId,
          messageId: messageId ?? this.messageId,
          chatInstance: chatInstance ?? this.chatInstance,
          payload: payload ?? this.payload);
}

extension UpdateNewInlineCallbackQueryCopyExtension
    on UpdateNewInlineCallbackQuery {
  UpdateNewInlineCallbackQuery copy(
          {int? id,
          int? senderUserId,
          String? inlineMessageId,
          int? chatInstance,
          CallbackQueryPayload? payload}) =>
      UpdateNewInlineCallbackQuery(
          id: id ?? this.id,
          senderUserId: senderUserId ?? this.senderUserId,
          inlineMessageId: inlineMessageId ?? this.inlineMessageId,
          chatInstance: chatInstance ?? this.chatInstance,
          payload: payload ?? this.payload);
}

extension UpdateNewShippingQueryCopyExtension on UpdateNewShippingQuery {
  UpdateNewShippingQuery copy(
          {int? id,
          int? senderUserId,
          String? invoicePayload,
          Address? shippingAddress}) =>
      UpdateNewShippingQuery(
          id: id ?? this.id,
          senderUserId: senderUserId ?? this.senderUserId,
          invoicePayload: invoicePayload ?? this.invoicePayload,
          shippingAddress: shippingAddress ?? this.shippingAddress);
}

extension UpdateNewPreCheckoutQueryCopyExtension on UpdateNewPreCheckoutQuery {
  UpdateNewPreCheckoutQuery copy(
          {int? id,
          int? senderUserId,
          String? currency,
          int? totalAmount,
          String? invoicePayload,
          String? shippingOptionId,
          OrderInfo? orderInfo}) =>
      UpdateNewPreCheckoutQuery(
          id: id ?? this.id,
          senderUserId: senderUserId ?? this.senderUserId,
          currency: currency ?? this.currency,
          totalAmount: totalAmount ?? this.totalAmount,
          invoicePayload: invoicePayload ?? this.invoicePayload,
          shippingOptionId: shippingOptionId ?? this.shippingOptionId,
          orderInfo: orderInfo ?? this.orderInfo);
}

extension UpdateNewCustomEventCopyExtension on UpdateNewCustomEvent {
  UpdateNewCustomEvent copy({String? event}) =>
      UpdateNewCustomEvent(event: event ?? this.event);
}

extension UpdateNewCustomQueryCopyExtension on UpdateNewCustomQuery {
  UpdateNewCustomQuery copy({int? id, String? data, int? timeout}) =>
      UpdateNewCustomQuery(
          id: id ?? this.id,
          data: data ?? this.data,
          timeout: timeout ?? this.timeout);
}

extension UpdatePollCopyExtension on UpdatePoll {
  UpdatePoll copy({Poll? poll}) => UpdatePoll(poll: poll ?? this.poll);
}

extension UpdatePollAnswerCopyExtension on UpdatePollAnswer {
  UpdatePollAnswer copy({int? pollId, int? userId, List<int>? optionIds}) =>
      UpdatePollAnswer(
          pollId: pollId ?? this.pollId,
          userId: userId ?? this.userId,
          optionIds: optionIds ?? this.optionIds);
}

extension UpdateChatMemberCopyExtension on UpdateChatMember {
  UpdateChatMember copy(
          {int? chatId,
          int? actorUserId,
          int? date,
          ChatInviteLink? inviteLink,
          ChatMember? oldChatMember,
          ChatMember? newChatMember}) =>
      UpdateChatMember(
          chatId: chatId ?? this.chatId,
          actorUserId: actorUserId ?? this.actorUserId,
          date: date ?? this.date,
          inviteLink: inviteLink ?? this.inviteLink,
          oldChatMember: oldChatMember ?? this.oldChatMember,
          newChatMember: newChatMember ?? this.newChatMember);
}

extension UpdatesCopyExtension on Updates {
  Updates copy({List<Update>? updates}) =>
      Updates(updates: updates ?? this.updates);
}

extension LogStreamFileCopyExtension on LogStreamFile {
  LogStreamFile copy({String? path, int? maxFileSize, bool? redirectStderr}) =>
      LogStreamFile(
          path: path ?? this.path,
          maxFileSize: maxFileSize ?? this.maxFileSize,
          redirectStderr: redirectStderr ?? this.redirectStderr);
}

extension LogVerbosityLevelCopyExtension on LogVerbosityLevel {
  LogVerbosityLevel copy({int? verbosityLevel}) =>
      LogVerbosityLevel(verbosityLevel: verbosityLevel ?? this.verbosityLevel);
}

extension LogTagsCopyExtension on LogTags {
  LogTags copy({List<String>? tags}) => LogTags(tags: tags ?? this.tags);
}

extension TestIntCopyExtension on TestInt {
  TestInt copy({int? value}) => TestInt(value: value ?? this.value);
}

extension TestStringCopyExtension on TestString {
  TestString copy({String? value}) => TestString(value: value ?? this.value);
}

extension TestBytesCopyExtension on TestBytes {
  TestBytes copy({String? value}) => TestBytes(value: value ?? this.value);
}

extension TestVectorIntCopyExtension on TestVectorInt {
  TestVectorInt copy({List<int>? value}) =>
      TestVectorInt(value: value ?? this.value);
}

extension TestVectorIntObjectCopyExtension on TestVectorIntObject {
  TestVectorIntObject copy({List<TestInt>? value}) =>
      TestVectorIntObject(value: value ?? this.value);
}

extension TestVectorStringCopyExtension on TestVectorString {
  TestVectorString copy({List<String>? value}) =>
      TestVectorString(value: value ?? this.value);
}

extension TestVectorStringObjectCopyExtension on TestVectorStringObject {
  TestVectorStringObject copy({List<TestString>? value}) =>
      TestVectorStringObject(value: value ?? this.value);
}

extension SetTdlibParametersCopyExtension on SetTdlibParameters {
  SetTdlibParameters copy({TdlibParameters? parameters}) =>
      SetTdlibParameters(parameters: parameters ?? this.parameters);
}

extension CheckDatabaseEncryptionKeyCopyExtension
    on CheckDatabaseEncryptionKey {
  CheckDatabaseEncryptionKey copy({String? encryptionKey}) =>
      CheckDatabaseEncryptionKey(
          encryptionKey: encryptionKey ?? this.encryptionKey);
}

extension SetAuthenticationPhoneNumberCopyExtension
    on SetAuthenticationPhoneNumber {
  SetAuthenticationPhoneNumber copy(
          {String? phoneNumber, PhoneNumberAuthenticationSettings? settings}) =>
      SetAuthenticationPhoneNumber(
          phoneNumber: phoneNumber ?? this.phoneNumber,
          settings: settings ?? this.settings);
}

extension CheckAuthenticationCodeCopyExtension on CheckAuthenticationCode {
  CheckAuthenticationCode copy({String? code}) =>
      CheckAuthenticationCode(code: code ?? this.code);
}

extension RequestQrCodeAuthenticationCopyExtension
    on RequestQrCodeAuthentication {
  RequestQrCodeAuthentication copy({List<int>? otherUserIds}) =>
      RequestQrCodeAuthentication(
          otherUserIds: otherUserIds ?? this.otherUserIds);
}

extension RegisterUserCopyExtension on RegisterUser {
  RegisterUser copy({String? firstName, String? lastName}) => RegisterUser(
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName);
}

extension CheckAuthenticationPasswordCopyExtension
    on CheckAuthenticationPassword {
  CheckAuthenticationPassword copy({String? password}) =>
      CheckAuthenticationPassword(password: password ?? this.password);
}

extension RecoverAuthenticationPasswordCopyExtension
    on RecoverAuthenticationPassword {
  RecoverAuthenticationPassword copy({String? recoveryCode}) =>
      RecoverAuthenticationPassword(
          recoveryCode: recoveryCode ?? this.recoveryCode);
}

extension CheckAuthenticationBotTokenCopyExtension
    on CheckAuthenticationBotToken {
  CheckAuthenticationBotToken copy({String? token}) =>
      CheckAuthenticationBotToken(token: token ?? this.token);
}

extension ConfirmQrCodeAuthenticationCopyExtension
    on ConfirmQrCodeAuthentication {
  ConfirmQrCodeAuthentication copy({String? link}) =>
      ConfirmQrCodeAuthentication(link: link ?? this.link);
}

extension SetDatabaseEncryptionKeyCopyExtension on SetDatabaseEncryptionKey {
  SetDatabaseEncryptionKey copy({String? newEncryptionKey}) =>
      SetDatabaseEncryptionKey(
          newEncryptionKey: newEncryptionKey ?? this.newEncryptionKey);
}

extension SetPasswordCopyExtension on SetPassword {
  SetPassword copy(
          {String? oldPassword,
          String? newPassword,
          String? newHint,
          bool? setRecoveryEmailAddress,
          String? newRecoveryEmailAddress}) =>
      SetPassword(
          oldPassword: oldPassword ?? this.oldPassword,
          newPassword: newPassword ?? this.newPassword,
          newHint: newHint ?? this.newHint,
          setRecoveryEmailAddress:
              setRecoveryEmailAddress ?? this.setRecoveryEmailAddress,
          newRecoveryEmailAddress:
              newRecoveryEmailAddress ?? this.newRecoveryEmailAddress);
}

extension GetRecoveryEmailAddressCopyExtension on GetRecoveryEmailAddress {
  GetRecoveryEmailAddress copy({String? password}) =>
      GetRecoveryEmailAddress(password: password ?? this.password);
}

extension SetRecoveryEmailAddressCopyExtension on SetRecoveryEmailAddress {
  SetRecoveryEmailAddress copy(
          {String? password, String? newRecoveryEmailAddress}) =>
      SetRecoveryEmailAddress(
          password: password ?? this.password,
          newRecoveryEmailAddress:
              newRecoveryEmailAddress ?? this.newRecoveryEmailAddress);
}

extension CheckRecoveryEmailAddressCodeCopyExtension
    on CheckRecoveryEmailAddressCode {
  CheckRecoveryEmailAddressCode copy({String? code}) =>
      CheckRecoveryEmailAddressCode(code: code ?? this.code);
}

extension RecoverPasswordCopyExtension on RecoverPassword {
  RecoverPassword copy({String? recoveryCode}) =>
      RecoverPassword(recoveryCode: recoveryCode ?? this.recoveryCode);
}

extension CreateTemporaryPasswordCopyExtension on CreateTemporaryPassword {
  CreateTemporaryPassword copy({String? password, int? validFor}) =>
      CreateTemporaryPassword(
          password: password ?? this.password,
          validFor: validFor ?? this.validFor);
}

extension GetUserCopyExtension on GetUser {
  GetUser copy({int? userId}) => GetUser(userId: userId ?? this.userId);
}

extension GetUserFullInfoCopyExtension on GetUserFullInfo {
  GetUserFullInfo copy({int? userId}) =>
      GetUserFullInfo(userId: userId ?? this.userId);
}

extension GetBasicGroupCopyExtension on GetBasicGroup {
  GetBasicGroup copy({int? basicGroupId}) =>
      GetBasicGroup(basicGroupId: basicGroupId ?? this.basicGroupId);
}

extension GetBasicGroupFullInfoCopyExtension on GetBasicGroupFullInfo {
  GetBasicGroupFullInfo copy({int? basicGroupId}) =>
      GetBasicGroupFullInfo(basicGroupId: basicGroupId ?? this.basicGroupId);
}

extension GetSupergroupCopyExtension on GetSupergroup {
  GetSupergroup copy({int? supergroupId}) =>
      GetSupergroup(supergroupId: supergroupId ?? this.supergroupId);
}

extension GetSupergroupFullInfoCopyExtension on GetSupergroupFullInfo {
  GetSupergroupFullInfo copy({int? supergroupId}) =>
      GetSupergroupFullInfo(supergroupId: supergroupId ?? this.supergroupId);
}

extension GetSecretChatCopyExtension on GetSecretChat {
  GetSecretChat copy({int? secretChatId}) =>
      GetSecretChat(secretChatId: secretChatId ?? this.secretChatId);
}

extension GetChatCopyExtension on GetChat {
  GetChat copy({int? chatId}) => GetChat(chatId: chatId ?? this.chatId);
}

extension GetMessageCopyExtension on GetMessage {
  GetMessage copy({int? chatId, int? messageId}) => GetMessage(
      chatId: chatId ?? this.chatId, messageId: messageId ?? this.messageId);
}

extension GetMessageLocallyCopyExtension on GetMessageLocally {
  GetMessageLocally copy({int? chatId, int? messageId}) => GetMessageLocally(
      chatId: chatId ?? this.chatId, messageId: messageId ?? this.messageId);
}

extension GetRepliedMessageCopyExtension on GetRepliedMessage {
  GetRepliedMessage copy({int? chatId, int? messageId}) => GetRepliedMessage(
      chatId: chatId ?? this.chatId, messageId: messageId ?? this.messageId);
}

extension GetChatPinnedMessageCopyExtension on GetChatPinnedMessage {
  GetChatPinnedMessage copy({int? chatId}) =>
      GetChatPinnedMessage(chatId: chatId ?? this.chatId);
}

extension GetCallbackQueryMessageCopyExtension on GetCallbackQueryMessage {
  GetCallbackQueryMessage copy(
          {int? chatId, int? messageId, int? callbackQueryId}) =>
      GetCallbackQueryMessage(
          chatId: chatId ?? this.chatId,
          messageId: messageId ?? this.messageId,
          callbackQueryId: callbackQueryId ?? this.callbackQueryId);
}

extension GetMessagesCopyExtension on GetMessages {
  GetMessages copy({int? chatId, List<int>? messageIds}) => GetMessages(
      chatId: chatId ?? this.chatId, messageIds: messageIds ?? this.messageIds);
}

extension GetMessageThreadCopyExtension on GetMessageThread {
  GetMessageThread copy({int? chatId, int? messageId}) => GetMessageThread(
      chatId: chatId ?? this.chatId, messageId: messageId ?? this.messageId);
}

extension GetFileCopyExtension on GetFile {
  GetFile copy({int? fileId}) => GetFile(fileId: fileId ?? this.fileId);
}

extension GetRemoteFileCopyExtension on GetRemoteFile {
  GetRemoteFile copy({String? remoteFileId, FileType? fileType}) =>
      GetRemoteFile(
          remoteFileId: remoteFileId ?? this.remoteFileId,
          fileType: fileType ?? this.fileType);
}

extension GetChatsCopyExtension on GetChats {
  GetChats copy(
          {ChatList? chatList,
          int? offsetOrder,
          int? offsetChatId,
          int? limit}) =>
      GetChats(
          chatList: chatList ?? this.chatList,
          offsetOrder: offsetOrder ?? this.offsetOrder,
          offsetChatId: offsetChatId ?? this.offsetChatId,
          limit: limit ?? this.limit);
}

extension SearchPublicChatCopyExtension on SearchPublicChat {
  SearchPublicChat copy({String? username}) =>
      SearchPublicChat(username: username ?? this.username);
}

extension SearchPublicChatsCopyExtension on SearchPublicChats {
  SearchPublicChats copy({String? query}) =>
      SearchPublicChats(query: query ?? this.query);
}

extension SearchChatsCopyExtension on SearchChats {
  SearchChats copy({String? query, int? limit}) =>
      SearchChats(query: query ?? this.query, limit: limit ?? this.limit);
}

extension SearchChatsOnServerCopyExtension on SearchChatsOnServer {
  SearchChatsOnServer copy({String? query, int? limit}) => SearchChatsOnServer(
      query: query ?? this.query, limit: limit ?? this.limit);
}

extension SearchChatsNearbyCopyExtension on SearchChatsNearby {
  SearchChatsNearby copy({Location? location}) =>
      SearchChatsNearby(location: location ?? this.location);
}

extension GetTopChatsCopyExtension on GetTopChats {
  GetTopChats copy({TopChatCategory? category, int? limit}) => GetTopChats(
      category: category ?? this.category, limit: limit ?? this.limit);
}

extension RemoveTopChatCopyExtension on RemoveTopChat {
  RemoveTopChat copy({TopChatCategory? category, int? chatId}) => RemoveTopChat(
      category: category ?? this.category, chatId: chatId ?? this.chatId);
}

extension AddRecentlyFoundChatCopyExtension on AddRecentlyFoundChat {
  AddRecentlyFoundChat copy({int? chatId}) =>
      AddRecentlyFoundChat(chatId: chatId ?? this.chatId);
}

extension RemoveRecentlyFoundChatCopyExtension on RemoveRecentlyFoundChat {
  RemoveRecentlyFoundChat copy({int? chatId}) =>
      RemoveRecentlyFoundChat(chatId: chatId ?? this.chatId);
}

extension CheckChatUsernameCopyExtension on CheckChatUsername {
  CheckChatUsername copy({int? chatId, String? username}) => CheckChatUsername(
      chatId: chatId ?? this.chatId, username: username ?? this.username);
}

extension GetCreatedPublicChatsCopyExtension on GetCreatedPublicChats {
  GetCreatedPublicChats copy({PublicChatType? type}) =>
      GetCreatedPublicChats(type: type ?? this.type);
}

extension CheckCreatedPublicChatsLimitCopyExtension
    on CheckCreatedPublicChatsLimit {
  CheckCreatedPublicChatsLimit copy({PublicChatType? type}) =>
      CheckCreatedPublicChatsLimit(type: type ?? this.type);
}

extension GetGroupsInCommonCopyExtension on GetGroupsInCommon {
  GetGroupsInCommon copy({int? userId, int? offsetChatId, int? limit}) =>
      GetGroupsInCommon(
          userId: userId ?? this.userId,
          offsetChatId: offsetChatId ?? this.offsetChatId,
          limit: limit ?? this.limit);
}

extension GetChatHistoryCopyExtension on GetChatHistory {
  GetChatHistory copy(
          {int? chatId,
          int? fromMessageId,
          int? offset,
          int? limit,
          bool? onlyLocal}) =>
      GetChatHistory(
          chatId: chatId ?? this.chatId,
          fromMessageId: fromMessageId ?? this.fromMessageId,
          offset: offset ?? this.offset,
          limit: limit ?? this.limit,
          onlyLocal: onlyLocal ?? this.onlyLocal);
}

extension GetMessageThreadHistoryCopyExtension on GetMessageThreadHistory {
  GetMessageThreadHistory copy(
          {int? chatId,
          int? messageId,
          int? fromMessageId,
          int? offset,
          int? limit}) =>
      GetMessageThreadHistory(
          chatId: chatId ?? this.chatId,
          messageId: messageId ?? this.messageId,
          fromMessageId: fromMessageId ?? this.fromMessageId,
          offset: offset ?? this.offset,
          limit: limit ?? this.limit);
}

extension DeleteChatHistoryCopyExtension on DeleteChatHistory {
  DeleteChatHistory copy(
          {int? chatId, bool? removeFromChatList, bool? revoke}) =>
      DeleteChatHistory(
          chatId: chatId ?? this.chatId,
          removeFromChatList: removeFromChatList ?? this.removeFromChatList,
          revoke: revoke ?? this.revoke);
}

extension DeleteChatCopyExtension on DeleteChat {
  DeleteChat copy({int? chatId}) => DeleteChat(chatId: chatId ?? this.chatId);
}

extension SearchChatMessagesCopyExtension on SearchChatMessages {
  SearchChatMessages copy(
          {int? chatId,
          String? query,
          MessageSender? sender,
          int? fromMessageId,
          int? offset,
          int? limit,
          SearchMessagesFilter? filter,
          int? messageThreadId}) =>
      SearchChatMessages(
          chatId: chatId ?? this.chatId,
          query: query ?? this.query,
          sender: sender ?? this.sender,
          fromMessageId: fromMessageId ?? this.fromMessageId,
          offset: offset ?? this.offset,
          limit: limit ?? this.limit,
          filter: filter ?? this.filter,
          messageThreadId: messageThreadId ?? this.messageThreadId);
}

extension SearchMessagesCopyExtension on SearchMessages {
  SearchMessages copy(
          {ChatList? chatList,
          String? query,
          int? offsetDate,
          int? offsetChatId,
          int? offsetMessageId,
          int? limit,
          SearchMessagesFilter? filter,
          int? minDate,
          int? maxDate}) =>
      SearchMessages(
          chatList: chatList ?? this.chatList,
          query: query ?? this.query,
          offsetDate: offsetDate ?? this.offsetDate,
          offsetChatId: offsetChatId ?? this.offsetChatId,
          offsetMessageId: offsetMessageId ?? this.offsetMessageId,
          limit: limit ?? this.limit,
          filter: filter ?? this.filter,
          minDate: minDate ?? this.minDate,
          maxDate: maxDate ?? this.maxDate);
}

extension SearchSecretMessagesCopyExtension on SearchSecretMessages {
  SearchSecretMessages copy(
          {int? chatId,
          String? query,
          String? offset,
          int? limit,
          SearchMessagesFilter? filter}) =>
      SearchSecretMessages(
          chatId: chatId ?? this.chatId,
          query: query ?? this.query,
          offset: offset ?? this.offset,
          limit: limit ?? this.limit,
          filter: filter ?? this.filter);
}

extension SearchCallMessagesCopyExtension on SearchCallMessages {
  SearchCallMessages copy({int? fromMessageId, int? limit, bool? onlyMissed}) =>
      SearchCallMessages(
          fromMessageId: fromMessageId ?? this.fromMessageId,
          limit: limit ?? this.limit,
          onlyMissed: onlyMissed ?? this.onlyMissed);
}

extension DeleteAllCallMessagesCopyExtension on DeleteAllCallMessages {
  DeleteAllCallMessages copy({bool? revoke}) =>
      DeleteAllCallMessages(revoke: revoke ?? this.revoke);
}

extension SearchChatRecentLocationMessagesCopyExtension
    on SearchChatRecentLocationMessages {
  SearchChatRecentLocationMessages copy({int? chatId, int? limit}) =>
      SearchChatRecentLocationMessages(
          chatId: chatId ?? this.chatId, limit: limit ?? this.limit);
}

extension GetChatMessageByDateCopyExtension on GetChatMessageByDate {
  GetChatMessageByDate copy({int? chatId, int? date}) => GetChatMessageByDate(
      chatId: chatId ?? this.chatId, date: date ?? this.date);
}

extension GetChatMessageCountCopyExtension on GetChatMessageCount {
  GetChatMessageCount copy(
          {int? chatId, SearchMessagesFilter? filter, bool? returnLocal}) =>
      GetChatMessageCount(
          chatId: chatId ?? this.chatId,
          filter: filter ?? this.filter,
          returnLocal: returnLocal ?? this.returnLocal);
}

extension GetChatScheduledMessagesCopyExtension on GetChatScheduledMessages {
  GetChatScheduledMessages copy({int? chatId}) =>
      GetChatScheduledMessages(chatId: chatId ?? this.chatId);
}

extension GetMessagePublicForwardsCopyExtension on GetMessagePublicForwards {
  GetMessagePublicForwards copy(
          {int? chatId, int? messageId, String? offset, int? limit}) =>
      GetMessagePublicForwards(
          chatId: chatId ?? this.chatId,
          messageId: messageId ?? this.messageId,
          offset: offset ?? this.offset,
          limit: limit ?? this.limit);
}

extension RemoveNotificationCopyExtension on RemoveNotification {
  RemoveNotification copy({int? notificationGroupId, int? notificationId}) =>
      RemoveNotification(
          notificationGroupId: notificationGroupId ?? this.notificationGroupId,
          notificationId: notificationId ?? this.notificationId);
}

extension RemoveNotificationGroupCopyExtension on RemoveNotificationGroup {
  RemoveNotificationGroup copy(
          {int? notificationGroupId, int? maxNotificationId}) =>
      RemoveNotificationGroup(
          notificationGroupId: notificationGroupId ?? this.notificationGroupId,
          maxNotificationId: maxNotificationId ?? this.maxNotificationId);
}

extension GetMessageLinkCopyExtension on GetMessageLink {
  GetMessageLink copy(
          {int? chatId, int? messageId, bool? forAlbum, bool? forComment}) =>
      GetMessageLink(
          chatId: chatId ?? this.chatId,
          messageId: messageId ?? this.messageId,
          forAlbum: forAlbum ?? this.forAlbum,
          forComment: forComment ?? this.forComment);
}

extension GetMessageEmbeddingCodeCopyExtension on GetMessageEmbeddingCode {
  GetMessageEmbeddingCode copy({int? chatId, int? messageId, bool? forAlbum}) =>
      GetMessageEmbeddingCode(
          chatId: chatId ?? this.chatId,
          messageId: messageId ?? this.messageId,
          forAlbum: forAlbum ?? this.forAlbum);
}

extension GetMessageLinkInfoCopyExtension on GetMessageLinkInfo {
  GetMessageLinkInfo copy({String? url}) =>
      GetMessageLinkInfo(url: url ?? this.url);
}

extension SendMessageCopyExtension on SendMessage {
  SendMessage copy(
          {int? chatId,
          int? messageThreadId,
          int? replyToMessageId,
          MessageSendOptions? options,
          ReplyMarkup? replyMarkup,
          InputMessageContent? inputMessageContent}) =>
      SendMessage(
          chatId: chatId ?? this.chatId,
          messageThreadId: messageThreadId ?? this.messageThreadId,
          replyToMessageId: replyToMessageId ?? this.replyToMessageId,
          options: options ?? this.options,
          replyMarkup: replyMarkup ?? this.replyMarkup,
          inputMessageContent: inputMessageContent ?? this.inputMessageContent);
}

extension SendMessageAlbumCopyExtension on SendMessageAlbum {
  SendMessageAlbum copy(
          {int? chatId,
          int? messageThreadId,
          int? replyToMessageId,
          MessageSendOptions? options,
          List<InputMessageContent>? inputMessageContents}) =>
      SendMessageAlbum(
          chatId: chatId ?? this.chatId,
          messageThreadId: messageThreadId ?? this.messageThreadId,
          replyToMessageId: replyToMessageId ?? this.replyToMessageId,
          options: options ?? this.options,
          inputMessageContents:
              inputMessageContents ?? this.inputMessageContents);
}

extension SendBotStartMessageCopyExtension on SendBotStartMessage {
  SendBotStartMessage copy({int? botUserId, int? chatId, String? parameter}) =>
      SendBotStartMessage(
          botUserId: botUserId ?? this.botUserId,
          chatId: chatId ?? this.chatId,
          parameter: parameter ?? this.parameter);
}

extension SendInlineQueryResultMessageCopyExtension
    on SendInlineQueryResultMessage {
  SendInlineQueryResultMessage copy(
          {int? chatId,
          int? messageThreadId,
          int? replyToMessageId,
          MessageSendOptions? options,
          int? queryId,
          String? resultId,
          bool? hideViaBot}) =>
      SendInlineQueryResultMessage(
          chatId: chatId ?? this.chatId,
          messageThreadId: messageThreadId ?? this.messageThreadId,
          replyToMessageId: replyToMessageId ?? this.replyToMessageId,
          options: options ?? this.options,
          queryId: queryId ?? this.queryId,
          resultId: resultId ?? this.resultId,
          hideViaBot: hideViaBot ?? this.hideViaBot);
}

extension ForwardMessagesCopyExtension on ForwardMessages {
  ForwardMessages copy(
          {int? chatId,
          int? fromChatId,
          List<int>? messageIds,
          MessageSendOptions? options,
          bool? sendCopy,
          bool? removeCaption}) =>
      ForwardMessages(
          chatId: chatId ?? this.chatId,
          fromChatId: fromChatId ?? this.fromChatId,
          messageIds: messageIds ?? this.messageIds,
          options: options ?? this.options,
          sendCopy: sendCopy ?? this.sendCopy,
          removeCaption: removeCaption ?? this.removeCaption);
}

extension ResendMessagesCopyExtension on ResendMessages {
  ResendMessages copy({int? chatId, List<int>? messageIds}) => ResendMessages(
      chatId: chatId ?? this.chatId, messageIds: messageIds ?? this.messageIds);
}

extension SendChatScreenshotTakenNotificationCopyExtension
    on SendChatScreenshotTakenNotification {
  SendChatScreenshotTakenNotification copy({int? chatId}) =>
      SendChatScreenshotTakenNotification(chatId: chatId ?? this.chatId);
}

extension AddLocalMessageCopyExtension on AddLocalMessage {
  AddLocalMessage copy(
          {int? chatId,
          MessageSender? sender,
          int? replyToMessageId,
          bool? disableNotification,
          InputMessageContent? inputMessageContent}) =>
      AddLocalMessage(
          chatId: chatId ?? this.chatId,
          sender: sender ?? this.sender,
          replyToMessageId: replyToMessageId ?? this.replyToMessageId,
          disableNotification: disableNotification ?? this.disableNotification,
          inputMessageContent: inputMessageContent ?? this.inputMessageContent);
}

extension DeleteMessagesCopyExtension on DeleteMessages {
  DeleteMessages copy({int? chatId, List<int>? messageIds, bool? revoke}) =>
      DeleteMessages(
          chatId: chatId ?? this.chatId,
          messageIds: messageIds ?? this.messageIds,
          revoke: revoke ?? this.revoke);
}

extension DeleteChatMessagesFromUserCopyExtension
    on DeleteChatMessagesFromUser {
  DeleteChatMessagesFromUser copy({int? chatId, int? userId}) =>
      DeleteChatMessagesFromUser(
          chatId: chatId ?? this.chatId, userId: userId ?? this.userId);
}

extension EditMessageTextCopyExtension on EditMessageText {
  EditMessageText copy(
          {int? chatId,
          int? messageId,
          ReplyMarkup? replyMarkup,
          InputMessageContent? inputMessageContent}) =>
      EditMessageText(
          chatId: chatId ?? this.chatId,
          messageId: messageId ?? this.messageId,
          replyMarkup: replyMarkup ?? this.replyMarkup,
          inputMessageContent: inputMessageContent ?? this.inputMessageContent);
}

extension EditMessageLiveLocationCopyExtension on EditMessageLiveLocation {
  EditMessageLiveLocation copy(
          {int? chatId,
          int? messageId,
          ReplyMarkup? replyMarkup,
          Location? location,
          int? heading,
          int? proximityAlertRadius}) =>
      EditMessageLiveLocation(
          chatId: chatId ?? this.chatId,
          messageId: messageId ?? this.messageId,
          replyMarkup: replyMarkup ?? this.replyMarkup,
          location: location ?? this.location,
          heading: heading ?? this.heading,
          proximityAlertRadius:
              proximityAlertRadius ?? this.proximityAlertRadius);
}

extension EditMessageMediaCopyExtension on EditMessageMedia {
  EditMessageMedia copy(
          {int? chatId,
          int? messageId,
          ReplyMarkup? replyMarkup,
          InputMessageContent? inputMessageContent}) =>
      EditMessageMedia(
          chatId: chatId ?? this.chatId,
          messageId: messageId ?? this.messageId,
          replyMarkup: replyMarkup ?? this.replyMarkup,
          inputMessageContent: inputMessageContent ?? this.inputMessageContent);
}

extension EditMessageCaptionCopyExtension on EditMessageCaption {
  EditMessageCaption copy(
          {int? chatId,
          int? messageId,
          ReplyMarkup? replyMarkup,
          FormattedText? caption}) =>
      EditMessageCaption(
          chatId: chatId ?? this.chatId,
          messageId: messageId ?? this.messageId,
          replyMarkup: replyMarkup ?? this.replyMarkup,
          caption: caption ?? this.caption);
}

extension EditMessageReplyMarkupCopyExtension on EditMessageReplyMarkup {
  EditMessageReplyMarkup copy(
          {int? chatId, int? messageId, ReplyMarkup? replyMarkup}) =>
      EditMessageReplyMarkup(
          chatId: chatId ?? this.chatId,
          messageId: messageId ?? this.messageId,
          replyMarkup: replyMarkup ?? this.replyMarkup);
}

extension EditInlineMessageTextCopyExtension on EditInlineMessageText {
  EditInlineMessageText copy(
          {String? inlineMessageId,
          ReplyMarkup? replyMarkup,
          InputMessageContent? inputMessageContent}) =>
      EditInlineMessageText(
          inlineMessageId: inlineMessageId ?? this.inlineMessageId,
          replyMarkup: replyMarkup ?? this.replyMarkup,
          inputMessageContent: inputMessageContent ?? this.inputMessageContent);
}

extension EditInlineMessageLiveLocationCopyExtension
    on EditInlineMessageLiveLocation {
  EditInlineMessageLiveLocation copy(
          {String? inlineMessageId,
          ReplyMarkup? replyMarkup,
          Location? location,
          int? heading,
          int? proximityAlertRadius}) =>
      EditInlineMessageLiveLocation(
          inlineMessageId: inlineMessageId ?? this.inlineMessageId,
          replyMarkup: replyMarkup ?? this.replyMarkup,
          location: location ?? this.location,
          heading: heading ?? this.heading,
          proximityAlertRadius:
              proximityAlertRadius ?? this.proximityAlertRadius);
}

extension EditInlineMessageMediaCopyExtension on EditInlineMessageMedia {
  EditInlineMessageMedia copy(
          {String? inlineMessageId,
          ReplyMarkup? replyMarkup,
          InputMessageContent? inputMessageContent}) =>
      EditInlineMessageMedia(
          inlineMessageId: inlineMessageId ?? this.inlineMessageId,
          replyMarkup: replyMarkup ?? this.replyMarkup,
          inputMessageContent: inputMessageContent ?? this.inputMessageContent);
}

extension EditInlineMessageCaptionCopyExtension on EditInlineMessageCaption {
  EditInlineMessageCaption copy(
          {String? inlineMessageId,
          ReplyMarkup? replyMarkup,
          FormattedText? caption}) =>
      EditInlineMessageCaption(
          inlineMessageId: inlineMessageId ?? this.inlineMessageId,
          replyMarkup: replyMarkup ?? this.replyMarkup,
          caption: caption ?? this.caption);
}

extension EditInlineMessageReplyMarkupCopyExtension
    on EditInlineMessageReplyMarkup {
  EditInlineMessageReplyMarkup copy(
          {String? inlineMessageId, ReplyMarkup? replyMarkup}) =>
      EditInlineMessageReplyMarkup(
          inlineMessageId: inlineMessageId ?? this.inlineMessageId,
          replyMarkup: replyMarkup ?? this.replyMarkup);
}

extension EditMessageSchedulingStateCopyExtension
    on EditMessageSchedulingState {
  EditMessageSchedulingState copy(
          {int? chatId,
          int? messageId,
          MessageSchedulingState? schedulingState}) =>
      EditMessageSchedulingState(
          chatId: chatId ?? this.chatId,
          messageId: messageId ?? this.messageId,
          schedulingState: schedulingState ?? this.schedulingState);
}

extension GetTextEntitiesCopyExtension on GetTextEntities {
  GetTextEntities copy({String? text}) =>
      GetTextEntities(text: text ?? this.text);
}

extension ParseTextEntitiesCopyExtension on ParseTextEntities {
  ParseTextEntities copy({String? text, TextParseMode? parseMode}) =>
      ParseTextEntities(
          text: text ?? this.text, parseMode: parseMode ?? this.parseMode);
}

extension ParseMarkdownCopyExtension on ParseMarkdown {
  ParseMarkdown copy({FormattedText? text}) =>
      ParseMarkdown(text: text ?? this.text);
}

extension GetMarkdownTextCopyExtension on GetMarkdownText {
  GetMarkdownText copy({FormattedText? text}) =>
      GetMarkdownText(text: text ?? this.text);
}

extension GetFileMimeTypeCopyExtension on GetFileMimeType {
  GetFileMimeType copy({String? fileName}) =>
      GetFileMimeType(fileName: fileName ?? this.fileName);
}

extension GetFileExtensionCopyExtension on GetFileExtension {
  GetFileExtension copy({String? mimeType}) =>
      GetFileExtension(mimeType: mimeType ?? this.mimeType);
}

extension CleanFileNameCopyExtension on CleanFileName {
  CleanFileName copy({String? fileName}) =>
      CleanFileName(fileName: fileName ?? this.fileName);
}

extension GetLanguagePackStringCopyExtension on GetLanguagePackString {
  GetLanguagePackString copy(
          {String? languagePackDatabasePath,
          String? localizationTarget,
          String? languagePackId,
          String? key}) =>
      GetLanguagePackString(
          languagePackDatabasePath:
              languagePackDatabasePath ?? this.languagePackDatabasePath,
          localizationTarget: localizationTarget ?? this.localizationTarget,
          languagePackId: languagePackId ?? this.languagePackId,
          key: key ?? this.key);
}

extension GetJsonValueCopyExtension on GetJsonValue {
  GetJsonValue copy({String? json}) => GetJsonValue(json: json ?? this.json);
}

extension GetJsonStringCopyExtension on GetJsonString {
  GetJsonString copy({JsonValue? jsonValue}) =>
      GetJsonString(jsonValue: jsonValue ?? this.jsonValue);
}

extension SetPollAnswerCopyExtension on SetPollAnswer {
  SetPollAnswer copy({int? chatId, int? messageId, List<int>? optionIds}) =>
      SetPollAnswer(
          chatId: chatId ?? this.chatId,
          messageId: messageId ?? this.messageId,
          optionIds: optionIds ?? this.optionIds);
}

extension GetPollVotersCopyExtension on GetPollVoters {
  GetPollVoters copy(
          {int? chatId,
          int? messageId,
          int? optionId,
          int? offset,
          int? limit}) =>
      GetPollVoters(
          chatId: chatId ?? this.chatId,
          messageId: messageId ?? this.messageId,
          optionId: optionId ?? this.optionId,
          offset: offset ?? this.offset,
          limit: limit ?? this.limit);
}

extension StopPollCopyExtension on StopPoll {
  StopPoll copy({int? chatId, int? messageId, ReplyMarkup? replyMarkup}) =>
      StopPoll(
          chatId: chatId ?? this.chatId,
          messageId: messageId ?? this.messageId,
          replyMarkup: replyMarkup ?? this.replyMarkup);
}

extension HideSuggestedActionCopyExtension on HideSuggestedAction {
  HideSuggestedAction copy({SuggestedAction? action}) =>
      HideSuggestedAction(action: action ?? this.action);
}

extension GetLoginUrlInfoCopyExtension on GetLoginUrlInfo {
  GetLoginUrlInfo copy({int? chatId, int? messageId, int? buttonId}) =>
      GetLoginUrlInfo(
          chatId: chatId ?? this.chatId,
          messageId: messageId ?? this.messageId,
          buttonId: buttonId ?? this.buttonId);
}

extension GetLoginUrlCopyExtension on GetLoginUrl {
  GetLoginUrl copy(
          {int? chatId,
          int? messageId,
          int? buttonId,
          bool? allowWriteAccess}) =>
      GetLoginUrl(
          chatId: chatId ?? this.chatId,
          messageId: messageId ?? this.messageId,
          buttonId: buttonId ?? this.buttonId,
          allowWriteAccess: allowWriteAccess ?? this.allowWriteAccess);
}

extension GetInlineQueryResultsCopyExtension on GetInlineQueryResults {
  GetInlineQueryResults copy(
          {int? botUserId,
          int? chatId,
          Location? userLocation,
          String? query,
          String? offset}) =>
      GetInlineQueryResults(
          botUserId: botUserId ?? this.botUserId,
          chatId: chatId ?? this.chatId,
          userLocation: userLocation ?? this.userLocation,
          query: query ?? this.query,
          offset: offset ?? this.offset);
}

extension AnswerInlineQueryCopyExtension on AnswerInlineQuery {
  AnswerInlineQuery copy(
          {int? inlineQueryId,
          bool? isPersonal,
          List<InputInlineQueryResult>? results,
          int? cacheTime,
          String? nextOffset,
          String? switchPmText,
          String? switchPmParameter}) =>
      AnswerInlineQuery(
          inlineQueryId: inlineQueryId ?? this.inlineQueryId,
          isPersonal: isPersonal ?? this.isPersonal,
          results: results ?? this.results,
          cacheTime: cacheTime ?? this.cacheTime,
          nextOffset: nextOffset ?? this.nextOffset,
          switchPmText: switchPmText ?? this.switchPmText,
          switchPmParameter: switchPmParameter ?? this.switchPmParameter);
}

extension GetCallbackQueryAnswerCopyExtension on GetCallbackQueryAnswer {
  GetCallbackQueryAnswer copy(
          {int? chatId, int? messageId, CallbackQueryPayload? payload}) =>
      GetCallbackQueryAnswer(
          chatId: chatId ?? this.chatId,
          messageId: messageId ?? this.messageId,
          payload: payload ?? this.payload);
}

extension AnswerCallbackQueryCopyExtension on AnswerCallbackQuery {
  AnswerCallbackQuery copy(
          {int? callbackQueryId,
          String? text,
          bool? showAlert,
          String? url,
          int? cacheTime}) =>
      AnswerCallbackQuery(
          callbackQueryId: callbackQueryId ?? this.callbackQueryId,
          text: text ?? this.text,
          showAlert: showAlert ?? this.showAlert,
          url: url ?? this.url,
          cacheTime: cacheTime ?? this.cacheTime);
}

extension AnswerShippingQueryCopyExtension on AnswerShippingQuery {
  AnswerShippingQuery copy(
          {int? shippingQueryId,
          List<ShippingOption>? shippingOptions,
          String? errorMessage}) =>
      AnswerShippingQuery(
          shippingQueryId: shippingQueryId ?? this.shippingQueryId,
          shippingOptions: shippingOptions ?? this.shippingOptions,
          errorMessage: errorMessage ?? this.errorMessage);
}

extension AnswerPreCheckoutQueryCopyExtension on AnswerPreCheckoutQuery {
  AnswerPreCheckoutQuery copy(
          {int? preCheckoutQueryId, String? errorMessage}) =>
      AnswerPreCheckoutQuery(
          preCheckoutQueryId: preCheckoutQueryId ?? this.preCheckoutQueryId,
          errorMessage: errorMessage ?? this.errorMessage);
}

extension SetGameScoreCopyExtension on SetGameScore {
  SetGameScore copy(
          {int? chatId,
          int? messageId,
          bool? editMessage,
          int? userId,
          int? score,
          bool? force}) =>
      SetGameScore(
          chatId: chatId ?? this.chatId,
          messageId: messageId ?? this.messageId,
          editMessage: editMessage ?? this.editMessage,
          userId: userId ?? this.userId,
          score: score ?? this.score,
          force: force ?? this.force);
}

extension SetInlineGameScoreCopyExtension on SetInlineGameScore {
  SetInlineGameScore copy(
          {String? inlineMessageId,
          bool? editMessage,
          int? userId,
          int? score,
          bool? force}) =>
      SetInlineGameScore(
          inlineMessageId: inlineMessageId ?? this.inlineMessageId,
          editMessage: editMessage ?? this.editMessage,
          userId: userId ?? this.userId,
          score: score ?? this.score,
          force: force ?? this.force);
}

extension GetGameHighScoresCopyExtension on GetGameHighScores {
  GetGameHighScores copy({int? chatId, int? messageId, int? userId}) =>
      GetGameHighScores(
          chatId: chatId ?? this.chatId,
          messageId: messageId ?? this.messageId,
          userId: userId ?? this.userId);
}

extension GetInlineGameHighScoresCopyExtension on GetInlineGameHighScores {
  GetInlineGameHighScores copy({String? inlineMessageId, int? userId}) =>
      GetInlineGameHighScores(
          inlineMessageId: inlineMessageId ?? this.inlineMessageId,
          userId: userId ?? this.userId);
}

extension DeleteChatReplyMarkupCopyExtension on DeleteChatReplyMarkup {
  DeleteChatReplyMarkup copy({int? chatId, int? messageId}) =>
      DeleteChatReplyMarkup(
          chatId: chatId ?? this.chatId,
          messageId: messageId ?? this.messageId);
}

extension SendChatActionCopyExtension on SendChatAction {
  SendChatAction copy(
          {int? chatId, int? messageThreadId, ChatAction? action}) =>
      SendChatAction(
          chatId: chatId ?? this.chatId,
          messageThreadId: messageThreadId ?? this.messageThreadId,
          action: action ?? this.action);
}

extension OpenChatCopyExtension on OpenChat {
  OpenChat copy({int? chatId}) => OpenChat(chatId: chatId ?? this.chatId);
}

extension CloseChatCopyExtension on CloseChat {
  CloseChat copy({int? chatId}) => CloseChat(chatId: chatId ?? this.chatId);
}

extension ViewMessagesCopyExtension on ViewMessages {
  ViewMessages copy(
          {int? chatId,
          int? messageThreadId,
          List<int>? messageIds,
          bool? forceRead}) =>
      ViewMessages(
          chatId: chatId ?? this.chatId,
          messageThreadId: messageThreadId ?? this.messageThreadId,
          messageIds: messageIds ?? this.messageIds,
          forceRead: forceRead ?? this.forceRead);
}

extension OpenMessageContentCopyExtension on OpenMessageContent {
  OpenMessageContent copy({int? chatId, int? messageId}) => OpenMessageContent(
      chatId: chatId ?? this.chatId, messageId: messageId ?? this.messageId);
}

extension GetExternalLinkInfoCopyExtension on GetExternalLinkInfo {
  GetExternalLinkInfo copy({String? link}) =>
      GetExternalLinkInfo(link: link ?? this.link);
}

extension GetExternalLinkCopyExtension on GetExternalLink {
  GetExternalLink copy({String? link, bool? allowWriteAccess}) =>
      GetExternalLink(
          link: link ?? this.link,
          allowWriteAccess: allowWriteAccess ?? this.allowWriteAccess);
}

extension ReadAllChatMentionsCopyExtension on ReadAllChatMentions {
  ReadAllChatMentions copy({int? chatId}) =>
      ReadAllChatMentions(chatId: chatId ?? this.chatId);
}

extension CreatePrivateChatCopyExtension on CreatePrivateChat {
  CreatePrivateChat copy({int? userId, bool? force}) => CreatePrivateChat(
      userId: userId ?? this.userId, force: force ?? this.force);
}

extension CreateBasicGroupChatCopyExtension on CreateBasicGroupChat {
  CreateBasicGroupChat copy({int? basicGroupId, bool? force}) =>
      CreateBasicGroupChat(
          basicGroupId: basicGroupId ?? this.basicGroupId,
          force: force ?? this.force);
}

extension CreateSupergroupChatCopyExtension on CreateSupergroupChat {
  CreateSupergroupChat copy({int? supergroupId, bool? force}) =>
      CreateSupergroupChat(
          supergroupId: supergroupId ?? this.supergroupId,
          force: force ?? this.force);
}

extension CreateSecretChatCopyExtension on CreateSecretChat {
  CreateSecretChat copy({int? secretChatId}) =>
      CreateSecretChat(secretChatId: secretChatId ?? this.secretChatId);
}

extension CreateNewBasicGroupChatCopyExtension on CreateNewBasicGroupChat {
  CreateNewBasicGroupChat copy({List<int>? userIds, String? title}) =>
      CreateNewBasicGroupChat(
          userIds: userIds ?? this.userIds, title: title ?? this.title);
}

extension CreateNewSupergroupChatCopyExtension on CreateNewSupergroupChat {
  CreateNewSupergroupChat copy(
          {String? title,
          bool? isChannel,
          String? description,
          ChatLocation? location,
          bool? forImport}) =>
      CreateNewSupergroupChat(
          title: title ?? this.title,
          isChannel: isChannel ?? this.isChannel,
          description: description ?? this.description,
          location: location ?? this.location,
          forImport: forImport ?? this.forImport);
}

extension CreateNewSecretChatCopyExtension on CreateNewSecretChat {
  CreateNewSecretChat copy({int? userId}) =>
      CreateNewSecretChat(userId: userId ?? this.userId);
}

extension UpgradeBasicGroupChatToSupergroupChatCopyExtension
    on UpgradeBasicGroupChatToSupergroupChat {
  UpgradeBasicGroupChatToSupergroupChat copy({int? chatId}) =>
      UpgradeBasicGroupChatToSupergroupChat(chatId: chatId ?? this.chatId);
}

extension GetChatListsToAddChatCopyExtension on GetChatListsToAddChat {
  GetChatListsToAddChat copy({int? chatId}) =>
      GetChatListsToAddChat(chatId: chatId ?? this.chatId);
}

extension AddChatToListCopyExtension on AddChatToList {
  AddChatToList copy({int? chatId, ChatList? chatList}) => AddChatToList(
      chatId: chatId ?? this.chatId, chatList: chatList ?? this.chatList);
}

extension GetChatFilterCopyExtension on GetChatFilter {
  GetChatFilter copy({int? chatFilterId}) =>
      GetChatFilter(chatFilterId: chatFilterId ?? this.chatFilterId);
}

extension CreateChatFilterCopyExtension on CreateChatFilter {
  CreateChatFilter copy({ChatFilter? filter}) =>
      CreateChatFilter(filter: filter ?? this.filter);
}

extension EditChatFilterCopyExtension on EditChatFilter {
  EditChatFilter copy({int? chatFilterId, ChatFilter? filter}) =>
      EditChatFilter(
          chatFilterId: chatFilterId ?? this.chatFilterId,
          filter: filter ?? this.filter);
}

extension DeleteChatFilterCopyExtension on DeleteChatFilter {
  DeleteChatFilter copy({int? chatFilterId}) =>
      DeleteChatFilter(chatFilterId: chatFilterId ?? this.chatFilterId);
}

extension ReorderChatFiltersCopyExtension on ReorderChatFilters {
  ReorderChatFilters copy({List<int>? chatFilterIds}) =>
      ReorderChatFilters(chatFilterIds: chatFilterIds ?? this.chatFilterIds);
}

extension GetChatFilterDefaultIconNameCopyExtension
    on GetChatFilterDefaultIconName {
  GetChatFilterDefaultIconName copy({ChatFilter? filter}) =>
      GetChatFilterDefaultIconName(filter: filter ?? this.filter);
}

extension SetChatTitleCopyExtension on SetChatTitle {
  SetChatTitle copy({int? chatId, String? title}) =>
      SetChatTitle(chatId: chatId ?? this.chatId, title: title ?? this.title);
}

extension SetChatPhotoCopyExtension on SetChatPhoto {
  SetChatPhoto copy({int? chatId, InputChatPhoto? photo}) =>
      SetChatPhoto(chatId: chatId ?? this.chatId, photo: photo ?? this.photo);
}

extension SetChatMessageTtlSettingCopyExtension on SetChatMessageTtlSetting {
  SetChatMessageTtlSetting copy({int? chatId, int? ttl}) =>
      SetChatMessageTtlSetting(
          chatId: chatId ?? this.chatId, ttl: ttl ?? this.ttl);
}

extension SetChatPermissionsCopyExtension on SetChatPermissions {
  SetChatPermissions copy({int? chatId, ChatPermissions? permissions}) =>
      SetChatPermissions(
          chatId: chatId ?? this.chatId,
          permissions: permissions ?? this.permissions);
}

extension SetChatDraftMessageCopyExtension on SetChatDraftMessage {
  SetChatDraftMessage copy(
          {int? chatId, int? messageThreadId, DraftMessage? draftMessage}) =>
      SetChatDraftMessage(
          chatId: chatId ?? this.chatId,
          messageThreadId: messageThreadId ?? this.messageThreadId,
          draftMessage: draftMessage ?? this.draftMessage);
}

extension SetChatNotificationSettingsCopyExtension
    on SetChatNotificationSettings {
  SetChatNotificationSettings copy(
          {int? chatId, ChatNotificationSettings? notificationSettings}) =>
      SetChatNotificationSettings(
          chatId: chatId ?? this.chatId,
          notificationSettings:
              notificationSettings ?? this.notificationSettings);
}

extension ToggleChatIsMarkedAsUnreadCopyExtension
    on ToggleChatIsMarkedAsUnread {
  ToggleChatIsMarkedAsUnread copy({int? chatId, bool? isMarkedAsUnread}) =>
      ToggleChatIsMarkedAsUnread(
          chatId: chatId ?? this.chatId,
          isMarkedAsUnread: isMarkedAsUnread ?? this.isMarkedAsUnread);
}

extension ToggleChatDefaultDisableNotificationCopyExtension
    on ToggleChatDefaultDisableNotification {
  ToggleChatDefaultDisableNotification copy(
          {int? chatId, bool? defaultDisableNotification}) =>
      ToggleChatDefaultDisableNotification(
          chatId: chatId ?? this.chatId,
          defaultDisableNotification:
              defaultDisableNotification ?? this.defaultDisableNotification);
}

extension SetChatClientDataCopyExtension on SetChatClientData {
  SetChatClientData copy({int? chatId, String? clientData}) =>
      SetChatClientData(
          chatId: chatId ?? this.chatId,
          clientData: clientData ?? this.clientData);
}

extension SetChatDescriptionCopyExtension on SetChatDescription {
  SetChatDescription copy({int? chatId, String? description}) =>
      SetChatDescription(
          chatId: chatId ?? this.chatId,
          description: description ?? this.description);
}

extension SetChatDiscussionGroupCopyExtension on SetChatDiscussionGroup {
  SetChatDiscussionGroup copy({int? chatId, int? discussionChatId}) =>
      SetChatDiscussionGroup(
          chatId: chatId ?? this.chatId,
          discussionChatId: discussionChatId ?? this.discussionChatId);
}

extension SetChatLocationCopyExtension on SetChatLocation {
  SetChatLocation copy({int? chatId, ChatLocation? location}) =>
      SetChatLocation(
          chatId: chatId ?? this.chatId, location: location ?? this.location);
}

extension SetChatSlowModeDelayCopyExtension on SetChatSlowModeDelay {
  SetChatSlowModeDelay copy({int? chatId, int? slowModeDelay}) =>
      SetChatSlowModeDelay(
          chatId: chatId ?? this.chatId,
          slowModeDelay: slowModeDelay ?? this.slowModeDelay);
}

extension PinChatMessageCopyExtension on PinChatMessage {
  PinChatMessage copy(
          {int? chatId,
          int? messageId,
          bool? disableNotification,
          bool? onlyForSelf}) =>
      PinChatMessage(
          chatId: chatId ?? this.chatId,
          messageId: messageId ?? this.messageId,
          disableNotification: disableNotification ?? this.disableNotification,
          onlyForSelf: onlyForSelf ?? this.onlyForSelf);
}

extension UnpinChatMessageCopyExtension on UnpinChatMessage {
  UnpinChatMessage copy({int? chatId, int? messageId}) => UnpinChatMessage(
      chatId: chatId ?? this.chatId, messageId: messageId ?? this.messageId);
}

extension UnpinAllChatMessagesCopyExtension on UnpinAllChatMessages {
  UnpinAllChatMessages copy({int? chatId}) =>
      UnpinAllChatMessages(chatId: chatId ?? this.chatId);
}

extension JoinChatCopyExtension on JoinChat {
  JoinChat copy({int? chatId}) => JoinChat(chatId: chatId ?? this.chatId);
}

extension LeaveChatCopyExtension on LeaveChat {
  LeaveChat copy({int? chatId}) => LeaveChat(chatId: chatId ?? this.chatId);
}

extension AddChatMemberCopyExtension on AddChatMember {
  AddChatMember copy({int? chatId, int? userId, int? forwardLimit}) =>
      AddChatMember(
          chatId: chatId ?? this.chatId,
          userId: userId ?? this.userId,
          forwardLimit: forwardLimit ?? this.forwardLimit);
}

extension AddChatMembersCopyExtension on AddChatMembers {
  AddChatMembers copy({int? chatId, List<int>? userIds}) => AddChatMembers(
      chatId: chatId ?? this.chatId, userIds: userIds ?? this.userIds);
}

extension SetChatMemberStatusCopyExtension on SetChatMemberStatus {
  SetChatMemberStatus copy(
          {int? chatId, int? userId, ChatMemberStatus? status}) =>
      SetChatMemberStatus(
          chatId: chatId ?? this.chatId,
          userId: userId ?? this.userId,
          status: status ?? this.status);
}

extension BanChatMemberCopyExtension on BanChatMember {
  BanChatMember copy(
          {int? chatId,
          int? userId,
          int? bannedUntilDate,
          bool? revokeMessages}) =>
      BanChatMember(
          chatId: chatId ?? this.chatId,
          userId: userId ?? this.userId,
          bannedUntilDate: bannedUntilDate ?? this.bannedUntilDate,
          revokeMessages: revokeMessages ?? this.revokeMessages);
}

extension TransferChatOwnershipCopyExtension on TransferChatOwnership {
  TransferChatOwnership copy({int? chatId, int? userId, String? password}) =>
      TransferChatOwnership(
          chatId: chatId ?? this.chatId,
          userId: userId ?? this.userId,
          password: password ?? this.password);
}

extension GetChatMemberCopyExtension on GetChatMember {
  GetChatMember copy({int? chatId, int? userId}) => GetChatMember(
      chatId: chatId ?? this.chatId, userId: userId ?? this.userId);
}

extension SearchChatMembersCopyExtension on SearchChatMembers {
  SearchChatMembers copy(
          {int? chatId,
          String? query,
          int? limit,
          ChatMembersFilter? filter}) =>
      SearchChatMembers(
          chatId: chatId ?? this.chatId,
          query: query ?? this.query,
          limit: limit ?? this.limit,
          filter: filter ?? this.filter);
}

extension GetChatAdministratorsCopyExtension on GetChatAdministrators {
  GetChatAdministrators copy({int? chatId}) =>
      GetChatAdministrators(chatId: chatId ?? this.chatId);
}

extension ClearAllDraftMessagesCopyExtension on ClearAllDraftMessages {
  ClearAllDraftMessages copy({bool? excludeSecretChats}) =>
      ClearAllDraftMessages(
          excludeSecretChats: excludeSecretChats ?? this.excludeSecretChats);
}

extension GetChatNotificationSettingsExceptionsCopyExtension
    on GetChatNotificationSettingsExceptions {
  GetChatNotificationSettingsExceptions copy(
          {NotificationSettingsScope? scope, bool? compareSound}) =>
      GetChatNotificationSettingsExceptions(
          scope: scope ?? this.scope,
          compareSound: compareSound ?? this.compareSound);
}

extension GetScopeNotificationSettingsCopyExtension
    on GetScopeNotificationSettings {
  GetScopeNotificationSettings copy({NotificationSettingsScope? scope}) =>
      GetScopeNotificationSettings(scope: scope ?? this.scope);
}

extension SetScopeNotificationSettingsCopyExtension
    on SetScopeNotificationSettings {
  SetScopeNotificationSettings copy(
          {NotificationSettingsScope? scope,
          ScopeNotificationSettings? notificationSettings}) =>
      SetScopeNotificationSettings(
          scope: scope ?? this.scope,
          notificationSettings:
              notificationSettings ?? this.notificationSettings);
}

extension ToggleChatIsPinnedCopyExtension on ToggleChatIsPinned {
  ToggleChatIsPinned copy({ChatList? chatList, int? chatId, bool? isPinned}) =>
      ToggleChatIsPinned(
          chatList: chatList ?? this.chatList,
          chatId: chatId ?? this.chatId,
          isPinned: isPinned ?? this.isPinned);
}

extension SetPinnedChatsCopyExtension on SetPinnedChats {
  SetPinnedChats copy({ChatList? chatList, List<int>? chatIds}) =>
      SetPinnedChats(
          chatList: chatList ?? this.chatList,
          chatIds: chatIds ?? this.chatIds);
}

extension DownloadFileCopyExtension on DownloadFile {
  DownloadFile copy(
          {int? fileId,
          int? priority,
          int? offset,
          int? limit,
          bool? synchronous}) =>
      DownloadFile(
          fileId: fileId ?? this.fileId,
          priority: priority ?? this.priority,
          offset: offset ?? this.offset,
          limit: limit ?? this.limit,
          synchronous: synchronous ?? this.synchronous);
}

extension GetFileDownloadedPrefixSizeCopyExtension
    on GetFileDownloadedPrefixSize {
  GetFileDownloadedPrefixSize copy({int? fileId, int? offset}) =>
      GetFileDownloadedPrefixSize(
          fileId: fileId ?? this.fileId, offset: offset ?? this.offset);
}

extension CancelDownloadFileCopyExtension on CancelDownloadFile {
  CancelDownloadFile copy({int? fileId, bool? onlyIfPending}) =>
      CancelDownloadFile(
          fileId: fileId ?? this.fileId,
          onlyIfPending: onlyIfPending ?? this.onlyIfPending);
}

extension UploadFileCopyExtension on UploadFile {
  UploadFile copy({InputFile? file, FileType? fileType, int? priority}) =>
      UploadFile(
          file: file ?? this.file,
          fileType: fileType ?? this.fileType,
          priority: priority ?? this.priority);
}

extension CancelUploadFileCopyExtension on CancelUploadFile {
  CancelUploadFile copy({int? fileId}) =>
      CancelUploadFile(fileId: fileId ?? this.fileId);
}

extension WriteGeneratedFilePartCopyExtension on WriteGeneratedFilePart {
  WriteGeneratedFilePart copy({int? generationId, int? offset, String? data}) =>
      WriteGeneratedFilePart(
          generationId: generationId ?? this.generationId,
          offset: offset ?? this.offset,
          data: data ?? this.data);
}

extension SetFileGenerationProgressCopyExtension on SetFileGenerationProgress {
  SetFileGenerationProgress copy(
          {int? generationId, int? expectedSize, int? localPrefixSize}) =>
      SetFileGenerationProgress(
          generationId: generationId ?? this.generationId,
          expectedSize: expectedSize ?? this.expectedSize,
          localPrefixSize: localPrefixSize ?? this.localPrefixSize);
}

extension FinishFileGenerationCopyExtension on FinishFileGeneration {
  FinishFileGeneration copy({int? generationId, TdError? error}) =>
      FinishFileGeneration(
          generationId: generationId ?? this.generationId,
          error: error ?? this.error);
}

extension ReadFilePartCopyExtension on ReadFilePart {
  ReadFilePart copy({int? fileId, int? offset, int? count}) => ReadFilePart(
      fileId: fileId ?? this.fileId,
      offset: offset ?? this.offset,
      count: count ?? this.count);
}

extension DeleteFileCopyExtension on DeleteFile {
  DeleteFile copy({int? fileId}) => DeleteFile(fileId: fileId ?? this.fileId);
}

extension GetMessageFileTypeCopyExtension on GetMessageFileType {
  GetMessageFileType copy({String? messageFileHead}) => GetMessageFileType(
      messageFileHead: messageFileHead ?? this.messageFileHead);
}

extension GetMessageImportConfirmationTextCopyExtension
    on GetMessageImportConfirmationText {
  GetMessageImportConfirmationText copy({int? chatId}) =>
      GetMessageImportConfirmationText(chatId: chatId ?? this.chatId);
}

extension ImportMessagesCopyExtension on ImportMessages {
  ImportMessages copy(
          {int? chatId,
          InputFile? messageFile,
          List<InputFile>? attachedFiles}) =>
      ImportMessages(
          chatId: chatId ?? this.chatId,
          messageFile: messageFile ?? this.messageFile,
          attachedFiles: attachedFiles ?? this.attachedFiles);
}

extension ReplacePrimaryChatInviteLinkCopyExtension
    on ReplacePrimaryChatInviteLink {
  ReplacePrimaryChatInviteLink copy({int? chatId}) =>
      ReplacePrimaryChatInviteLink(chatId: chatId ?? this.chatId);
}

extension CreateChatInviteLinkCopyExtension on CreateChatInviteLink {
  CreateChatInviteLink copy({int? chatId, int? expireDate, int? memberLimit}) =>
      CreateChatInviteLink(
          chatId: chatId ?? this.chatId,
          expireDate: expireDate ?? this.expireDate,
          memberLimit: memberLimit ?? this.memberLimit);
}

extension EditChatInviteLinkCopyExtension on EditChatInviteLink {
  EditChatInviteLink copy(
          {int? chatId,
          String? inviteLink,
          int? expireDate,
          int? memberLimit}) =>
      EditChatInviteLink(
          chatId: chatId ?? this.chatId,
          inviteLink: inviteLink ?? this.inviteLink,
          expireDate: expireDate ?? this.expireDate,
          memberLimit: memberLimit ?? this.memberLimit);
}

extension GetChatInviteLinkCopyExtension on GetChatInviteLink {
  GetChatInviteLink copy({int? chatId, String? inviteLink}) =>
      GetChatInviteLink(
          chatId: chatId ?? this.chatId,
          inviteLink: inviteLink ?? this.inviteLink);
}

extension GetChatInviteLinkCountsCopyExtension on GetChatInviteLinkCounts {
  GetChatInviteLinkCounts copy({int? chatId}) =>
      GetChatInviteLinkCounts(chatId: chatId ?? this.chatId);
}

extension GetChatInviteLinksCopyExtension on GetChatInviteLinks {
  GetChatInviteLinks copy(
          {int? chatId,
          int? creatorUserId,
          bool? isRevoked,
          int? offsetDate,
          String? offsetInviteLink,
          int? limit}) =>
      GetChatInviteLinks(
          chatId: chatId ?? this.chatId,
          creatorUserId: creatorUserId ?? this.creatorUserId,
          isRevoked: isRevoked ?? this.isRevoked,
          offsetDate: offsetDate ?? this.offsetDate,
          offsetInviteLink: offsetInviteLink ?? this.offsetInviteLink,
          limit: limit ?? this.limit);
}

extension GetChatInviteLinkMembersCopyExtension on GetChatInviteLinkMembers {
  GetChatInviteLinkMembers copy(
          {int? chatId,
          String? inviteLink,
          ChatInviteLinkMember? offsetMember,
          int? limit}) =>
      GetChatInviteLinkMembers(
          chatId: chatId ?? this.chatId,
          inviteLink: inviteLink ?? this.inviteLink,
          offsetMember: offsetMember ?? this.offsetMember,
          limit: limit ?? this.limit);
}

extension RevokeChatInviteLinkCopyExtension on RevokeChatInviteLink {
  RevokeChatInviteLink copy({int? chatId, String? inviteLink}) =>
      RevokeChatInviteLink(
          chatId: chatId ?? this.chatId,
          inviteLink: inviteLink ?? this.inviteLink);
}

extension DeleteRevokedChatInviteLinkCopyExtension
    on DeleteRevokedChatInviteLink {
  DeleteRevokedChatInviteLink copy({int? chatId, String? inviteLink}) =>
      DeleteRevokedChatInviteLink(
          chatId: chatId ?? this.chatId,
          inviteLink: inviteLink ?? this.inviteLink);
}

extension DeleteAllRevokedChatInviteLinksCopyExtension
    on DeleteAllRevokedChatInviteLinks {
  DeleteAllRevokedChatInviteLinks copy({int? chatId, int? creatorUserId}) =>
      DeleteAllRevokedChatInviteLinks(
          chatId: chatId ?? this.chatId,
          creatorUserId: creatorUserId ?? this.creatorUserId);
}

extension CheckChatInviteLinkCopyExtension on CheckChatInviteLink {
  CheckChatInviteLink copy({String? inviteLink}) =>
      CheckChatInviteLink(inviteLink: inviteLink ?? this.inviteLink);
}

extension JoinChatByInviteLinkCopyExtension on JoinChatByInviteLink {
  JoinChatByInviteLink copy({String? inviteLink}) =>
      JoinChatByInviteLink(inviteLink: inviteLink ?? this.inviteLink);
}

extension CreateCallCopyExtension on CreateCall {
  CreateCall copy({int? userId, CallProtocol? protocol, bool? isVideo}) =>
      CreateCall(
          userId: userId ?? this.userId,
          protocol: protocol ?? this.protocol,
          isVideo: isVideo ?? this.isVideo);
}

extension AcceptCallCopyExtension on AcceptCall {
  AcceptCall copy({int? callId, CallProtocol? protocol}) => AcceptCall(
      callId: callId ?? this.callId, protocol: protocol ?? this.protocol);
}

extension SendCallSignalingDataCopyExtension on SendCallSignalingData {
  SendCallSignalingData copy({int? callId, String? data}) =>
      SendCallSignalingData(
          callId: callId ?? this.callId, data: data ?? this.data);
}

extension DiscardCallCopyExtension on DiscardCall {
  DiscardCall copy(
          {int? callId,
          bool? isDisconnected,
          int? duration,
          bool? isVideo,
          int? connectionId}) =>
      DiscardCall(
          callId: callId ?? this.callId,
          isDisconnected: isDisconnected ?? this.isDisconnected,
          duration: duration ?? this.duration,
          isVideo: isVideo ?? this.isVideo,
          connectionId: connectionId ?? this.connectionId);
}

extension SendCallRatingCopyExtension on SendCallRating {
  SendCallRating copy(
          {int? callId,
          int? rating,
          String? comment,
          List<CallProblem>? problems}) =>
      SendCallRating(
          callId: callId ?? this.callId,
          rating: rating ?? this.rating,
          comment: comment ?? this.comment,
          problems: problems ?? this.problems);
}

extension SendCallDebugInformationCopyExtension on SendCallDebugInformation {
  SendCallDebugInformation copy({int? callId, String? debugInformation}) =>
      SendCallDebugInformation(
          callId: callId ?? this.callId,
          debugInformation: debugInformation ?? this.debugInformation);
}

extension GetAvailableVoiceChatAliasesCopyExtension
    on GetAvailableVoiceChatAliases {
  GetAvailableVoiceChatAliases copy({int? chatId}) =>
      GetAvailableVoiceChatAliases(chatId: chatId ?? this.chatId);
}

extension CreateVoiceChatCopyExtension on CreateVoiceChat {
  CreateVoiceChat copy({int? chatId}) =>
      CreateVoiceChat(chatId: chatId ?? this.chatId);
}

extension GetGroupCallCopyExtension on GetGroupCall {
  GetGroupCall copy({int? groupCallId}) =>
      GetGroupCall(groupCallId: groupCallId ?? this.groupCallId);
}

extension JoinGroupCallCopyExtension on JoinGroupCall {
  JoinGroupCall copy(
          {int? groupCallId,
          MessageSender? participantAlias,
          GroupCallPayload? payload,
          int? source,
          bool? isMuted,
          String? inviteHash}) =>
      JoinGroupCall(
          groupCallId: groupCallId ?? this.groupCallId,
          participantAlias: participantAlias ?? this.participantAlias,
          payload: payload ?? this.payload,
          source: source ?? this.source,
          isMuted: isMuted ?? this.isMuted,
          inviteHash: inviteHash ?? this.inviteHash);
}

extension SetGroupCallTitleCopyExtension on SetGroupCallTitle {
  SetGroupCallTitle copy({int? groupCallId, String? title}) =>
      SetGroupCallTitle(
          groupCallId: groupCallId ?? this.groupCallId,
          title: title ?? this.title);
}

extension ToggleGroupCallMuteNewParticipantsCopyExtension
    on ToggleGroupCallMuteNewParticipants {
  ToggleGroupCallMuteNewParticipants copy(
          {int? groupCallId, bool? muteNewParticipants}) =>
      ToggleGroupCallMuteNewParticipants(
          groupCallId: groupCallId ?? this.groupCallId,
          muteNewParticipants: muteNewParticipants ?? this.muteNewParticipants);
}

extension RevokeGroupCallInviteLinkCopyExtension on RevokeGroupCallInviteLink {
  RevokeGroupCallInviteLink copy({int? groupCallId}) =>
      RevokeGroupCallInviteLink(groupCallId: groupCallId ?? this.groupCallId);
}

extension InviteGroupCallParticipantsCopyExtension
    on InviteGroupCallParticipants {
  InviteGroupCallParticipants copy({int? groupCallId, List<int>? userIds}) =>
      InviteGroupCallParticipants(
          groupCallId: groupCallId ?? this.groupCallId,
          userIds: userIds ?? this.userIds);
}

extension GetGroupCallInviteLinkCopyExtension on GetGroupCallInviteLink {
  GetGroupCallInviteLink copy({int? groupCallId, bool? canSelfUnmute}) =>
      GetGroupCallInviteLink(
          groupCallId: groupCallId ?? this.groupCallId,
          canSelfUnmute: canSelfUnmute ?? this.canSelfUnmute);
}

extension StartGroupCallRecordingCopyExtension on StartGroupCallRecording {
  StartGroupCallRecording copy({int? groupCallId, String? title}) =>
      StartGroupCallRecording(
          groupCallId: groupCallId ?? this.groupCallId,
          title: title ?? this.title);
}

extension EndGroupCallRecordingCopyExtension on EndGroupCallRecording {
  EndGroupCallRecording copy({int? groupCallId}) =>
      EndGroupCallRecording(groupCallId: groupCallId ?? this.groupCallId);
}

extension SetGroupCallParticipantIsSpeakingCopyExtension
    on SetGroupCallParticipantIsSpeaking {
  SetGroupCallParticipantIsSpeaking copy(
          {int? groupCallId, int? source, bool? isSpeaking}) =>
      SetGroupCallParticipantIsSpeaking(
          groupCallId: groupCallId ?? this.groupCallId,
          source: source ?? this.source,
          isSpeaking: isSpeaking ?? this.isSpeaking);
}

extension ToggleGroupCallParticipantIsMutedCopyExtension
    on ToggleGroupCallParticipantIsMuted {
  ToggleGroupCallParticipantIsMuted copy(
          {int? groupCallId, MessageSender? participant, bool? isMuted}) =>
      ToggleGroupCallParticipantIsMuted(
          groupCallId: groupCallId ?? this.groupCallId,
          participant: participant ?? this.participant,
          isMuted: isMuted ?? this.isMuted);
}

extension SetGroupCallParticipantVolumeLevelCopyExtension
    on SetGroupCallParticipantVolumeLevel {
  SetGroupCallParticipantVolumeLevel copy(
          {int? groupCallId, MessageSender? participant, int? volumeLevel}) =>
      SetGroupCallParticipantVolumeLevel(
          groupCallId: groupCallId ?? this.groupCallId,
          participant: participant ?? this.participant,
          volumeLevel: volumeLevel ?? this.volumeLevel);
}

extension ToggleGroupCallParticipantIsHandRaisedCopyExtension
    on ToggleGroupCallParticipantIsHandRaised {
  ToggleGroupCallParticipantIsHandRaised copy(
          {int? groupCallId, MessageSender? participant, bool? isHandRaised}) =>
      ToggleGroupCallParticipantIsHandRaised(
          groupCallId: groupCallId ?? this.groupCallId,
          participant: participant ?? this.participant,
          isHandRaised: isHandRaised ?? this.isHandRaised);
}

extension LoadGroupCallParticipantsCopyExtension on LoadGroupCallParticipants {
  LoadGroupCallParticipants copy({int? groupCallId, int? limit}) =>
      LoadGroupCallParticipants(
          groupCallId: groupCallId ?? this.groupCallId,
          limit: limit ?? this.limit);
}

extension LeaveGroupCallCopyExtension on LeaveGroupCall {
  LeaveGroupCall copy({int? groupCallId}) =>
      LeaveGroupCall(groupCallId: groupCallId ?? this.groupCallId);
}

extension DiscardGroupCallCopyExtension on DiscardGroupCall {
  DiscardGroupCall copy({int? groupCallId}) =>
      DiscardGroupCall(groupCallId: groupCallId ?? this.groupCallId);
}

extension GetGroupCallStreamSegmentCopyExtension on GetGroupCallStreamSegment {
  GetGroupCallStreamSegment copy(
          {int? groupCallId, int? timeOffset, int? scale}) =>
      GetGroupCallStreamSegment(
          groupCallId: groupCallId ?? this.groupCallId,
          timeOffset: timeOffset ?? this.timeOffset,
          scale: scale ?? this.scale);
}

extension ToggleMessageSenderIsBlockedCopyExtension
    on ToggleMessageSenderIsBlocked {
  ToggleMessageSenderIsBlocked copy({MessageSender? sender, bool? isBlocked}) =>
      ToggleMessageSenderIsBlocked(
          sender: sender ?? this.sender,
          isBlocked: isBlocked ?? this.isBlocked);
}

extension BlockMessageSenderFromRepliesCopyExtension
    on BlockMessageSenderFromReplies {
  BlockMessageSenderFromReplies copy(
          {int? messageId,
          bool? deleteMessage,
          bool? deleteAllMessages,
          bool? reportSpam}) =>
      BlockMessageSenderFromReplies(
          messageId: messageId ?? this.messageId,
          deleteMessage: deleteMessage ?? this.deleteMessage,
          deleteAllMessages: deleteAllMessages ?? this.deleteAllMessages,
          reportSpam: reportSpam ?? this.reportSpam);
}

extension GetBlockedMessageSendersCopyExtension on GetBlockedMessageSenders {
  GetBlockedMessageSenders copy({int? offset, int? limit}) =>
      GetBlockedMessageSenders(
          offset: offset ?? this.offset, limit: limit ?? this.limit);
}

extension AddContactCopyExtension on AddContact {
  AddContact copy({Contact? contact, bool? sharePhoneNumber}) => AddContact(
      contact: contact ?? this.contact,
      sharePhoneNumber: sharePhoneNumber ?? this.sharePhoneNumber);
}

extension ImportContactsCopyExtension on ImportContacts {
  ImportContacts copy({List<Contact>? contacts}) =>
      ImportContacts(contacts: contacts ?? this.contacts);
}

extension SearchContactsCopyExtension on SearchContacts {
  SearchContacts copy({String? query, int? limit}) =>
      SearchContacts(query: query ?? this.query, limit: limit ?? this.limit);
}

extension RemoveContactsCopyExtension on RemoveContacts {
  RemoveContacts copy({List<int>? userIds}) =>
      RemoveContacts(userIds: userIds ?? this.userIds);
}

extension ChangeImportedContactsCopyExtension on ChangeImportedContacts {
  ChangeImportedContacts copy({List<Contact>? contacts}) =>
      ChangeImportedContacts(contacts: contacts ?? this.contacts);
}

extension SharePhoneNumberCopyExtension on SharePhoneNumber {
  SharePhoneNumber copy({int? userId}) =>
      SharePhoneNumber(userId: userId ?? this.userId);
}

extension GetUserProfilePhotosCopyExtension on GetUserProfilePhotos {
  GetUserProfilePhotos copy({int? userId, int? offset, int? limit}) =>
      GetUserProfilePhotos(
          userId: userId ?? this.userId,
          offset: offset ?? this.offset,
          limit: limit ?? this.limit);
}

extension GetStickersCopyExtension on GetStickers {
  GetStickers copy({String? emoji, int? limit}) =>
      GetStickers(emoji: emoji ?? this.emoji, limit: limit ?? this.limit);
}

extension SearchStickersCopyExtension on SearchStickers {
  SearchStickers copy({String? emoji, int? limit}) =>
      SearchStickers(emoji: emoji ?? this.emoji, limit: limit ?? this.limit);
}

extension GetInstalledStickerSetsCopyExtension on GetInstalledStickerSets {
  GetInstalledStickerSets copy({bool? isMasks}) =>
      GetInstalledStickerSets(isMasks: isMasks ?? this.isMasks);
}

extension GetArchivedStickerSetsCopyExtension on GetArchivedStickerSets {
  GetArchivedStickerSets copy(
          {bool? isMasks, int? offsetStickerSetId, int? limit}) =>
      GetArchivedStickerSets(
          isMasks: isMasks ?? this.isMasks,
          offsetStickerSetId: offsetStickerSetId ?? this.offsetStickerSetId,
          limit: limit ?? this.limit);
}

extension GetTrendingStickerSetsCopyExtension on GetTrendingStickerSets {
  GetTrendingStickerSets copy({int? offset, int? limit}) =>
      GetTrendingStickerSets(
          offset: offset ?? this.offset, limit: limit ?? this.limit);
}

extension GetAttachedStickerSetsCopyExtension on GetAttachedStickerSets {
  GetAttachedStickerSets copy({int? fileId}) =>
      GetAttachedStickerSets(fileId: fileId ?? this.fileId);
}

extension GetStickerSetCopyExtension on GetStickerSet {
  GetStickerSet copy({int? setId}) => GetStickerSet(setId: setId ?? this.setId);
}

extension SearchStickerSetCopyExtension on SearchStickerSet {
  SearchStickerSet copy({String? name}) =>
      SearchStickerSet(name: name ?? this.name);
}

extension SearchInstalledStickerSetsCopyExtension
    on SearchInstalledStickerSets {
  SearchInstalledStickerSets copy({bool? isMasks, String? query, int? limit}) =>
      SearchInstalledStickerSets(
          isMasks: isMasks ?? this.isMasks,
          query: query ?? this.query,
          limit: limit ?? this.limit);
}

extension SearchStickerSetsCopyExtension on SearchStickerSets {
  SearchStickerSets copy({String? query}) =>
      SearchStickerSets(query: query ?? this.query);
}

extension ChangeStickerSetCopyExtension on ChangeStickerSet {
  ChangeStickerSet copy({int? setId, bool? isInstalled, bool? isArchived}) =>
      ChangeStickerSet(
          setId: setId ?? this.setId,
          isInstalled: isInstalled ?? this.isInstalled,
          isArchived: isArchived ?? this.isArchived);
}

extension ViewTrendingStickerSetsCopyExtension on ViewTrendingStickerSets {
  ViewTrendingStickerSets copy({List<int>? stickerSetIds}) =>
      ViewTrendingStickerSets(
          stickerSetIds: stickerSetIds ?? this.stickerSetIds);
}

extension ReorderInstalledStickerSetsCopyExtension
    on ReorderInstalledStickerSets {
  ReorderInstalledStickerSets copy({bool? isMasks, List<int>? stickerSetIds}) =>
      ReorderInstalledStickerSets(
          isMasks: isMasks ?? this.isMasks,
          stickerSetIds: stickerSetIds ?? this.stickerSetIds);
}

extension GetRecentStickersCopyExtension on GetRecentStickers {
  GetRecentStickers copy({bool? isAttached}) =>
      GetRecentStickers(isAttached: isAttached ?? this.isAttached);
}

extension AddRecentStickerCopyExtension on AddRecentSticker {
  AddRecentSticker copy({bool? isAttached, InputFile? sticker}) =>
      AddRecentSticker(
          isAttached: isAttached ?? this.isAttached,
          sticker: sticker ?? this.sticker);
}

extension RemoveRecentStickerCopyExtension on RemoveRecentSticker {
  RemoveRecentSticker copy({bool? isAttached, InputFile? sticker}) =>
      RemoveRecentSticker(
          isAttached: isAttached ?? this.isAttached,
          sticker: sticker ?? this.sticker);
}

extension ClearRecentStickersCopyExtension on ClearRecentStickers {
  ClearRecentStickers copy({bool? isAttached}) =>
      ClearRecentStickers(isAttached: isAttached ?? this.isAttached);
}

extension AddFavoriteStickerCopyExtension on AddFavoriteSticker {
  AddFavoriteSticker copy({InputFile? sticker}) =>
      AddFavoriteSticker(sticker: sticker ?? this.sticker);
}

extension RemoveFavoriteStickerCopyExtension on RemoveFavoriteSticker {
  RemoveFavoriteSticker copy({InputFile? sticker}) =>
      RemoveFavoriteSticker(sticker: sticker ?? this.sticker);
}

extension GetStickerEmojisCopyExtension on GetStickerEmojis {
  GetStickerEmojis copy({InputFile? sticker}) =>
      GetStickerEmojis(sticker: sticker ?? this.sticker);
}

extension SearchEmojisCopyExtension on SearchEmojis {
  SearchEmojis copy(
          {String? text, bool? exactMatch, List<String>? inputLanguageCodes}) =>
      SearchEmojis(
          text: text ?? this.text,
          exactMatch: exactMatch ?? this.exactMatch,
          inputLanguageCodes: inputLanguageCodes ?? this.inputLanguageCodes);
}

extension GetEmojiSuggestionsUrlCopyExtension on GetEmojiSuggestionsUrl {
  GetEmojiSuggestionsUrl copy({String? languageCode}) =>
      GetEmojiSuggestionsUrl(languageCode: languageCode ?? this.languageCode);
}

extension AddSavedAnimationCopyExtension on AddSavedAnimation {
  AddSavedAnimation copy({InputFile? animation}) =>
      AddSavedAnimation(animation: animation ?? this.animation);
}

extension RemoveSavedAnimationCopyExtension on RemoveSavedAnimation {
  RemoveSavedAnimation copy({InputFile? animation}) =>
      RemoveSavedAnimation(animation: animation ?? this.animation);
}

extension SearchHashtagsCopyExtension on SearchHashtags {
  SearchHashtags copy({String? prefix, int? limit}) =>
      SearchHashtags(prefix: prefix ?? this.prefix, limit: limit ?? this.limit);
}

extension RemoveRecentHashtagCopyExtension on RemoveRecentHashtag {
  RemoveRecentHashtag copy({String? hashtag}) =>
      RemoveRecentHashtag(hashtag: hashtag ?? this.hashtag);
}

extension GetWebPagePreviewCopyExtension on GetWebPagePreview {
  GetWebPagePreview copy({FormattedText? text}) =>
      GetWebPagePreview(text: text ?? this.text);
}

extension GetWebPageInstantViewCopyExtension on GetWebPageInstantView {
  GetWebPageInstantView copy({String? url, bool? forceFull}) =>
      GetWebPageInstantView(
          url: url ?? this.url, forceFull: forceFull ?? this.forceFull);
}

extension SetProfilePhotoCopyExtension on SetProfilePhoto {
  SetProfilePhoto copy({InputChatPhoto? photo}) =>
      SetProfilePhoto(photo: photo ?? this.photo);
}

extension DeleteProfilePhotoCopyExtension on DeleteProfilePhoto {
  DeleteProfilePhoto copy({int? profilePhotoId}) =>
      DeleteProfilePhoto(profilePhotoId: profilePhotoId ?? this.profilePhotoId);
}

extension SetNameCopyExtension on SetName {
  SetName copy({String? firstName, String? lastName}) => SetName(
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName);
}

extension SetBioCopyExtension on SetBio {
  SetBio copy({String? bio}) => SetBio(bio: bio ?? this.bio);
}

extension SetUsernameCopyExtension on SetUsername {
  SetUsername copy({String? username}) =>
      SetUsername(username: username ?? this.username);
}

extension SetLocationCopyExtension on SetLocation {
  SetLocation copy({Location? location}) =>
      SetLocation(location: location ?? this.location);
}

extension ChangePhoneNumberCopyExtension on ChangePhoneNumber {
  ChangePhoneNumber copy(
          {String? phoneNumber, PhoneNumberAuthenticationSettings? settings}) =>
      ChangePhoneNumber(
          phoneNumber: phoneNumber ?? this.phoneNumber,
          settings: settings ?? this.settings);
}

extension CheckChangePhoneNumberCodeCopyExtension
    on CheckChangePhoneNumberCode {
  CheckChangePhoneNumberCode copy({String? code}) =>
      CheckChangePhoneNumberCode(code: code ?? this.code);
}

extension SetCommandsCopyExtension on SetCommands {
  SetCommands copy({List<BotCommand>? commands}) =>
      SetCommands(commands: commands ?? this.commands);
}

extension TerminateSessionCopyExtension on TerminateSession {
  TerminateSession copy({int? sessionId}) =>
      TerminateSession(sessionId: sessionId ?? this.sessionId);
}

extension DisconnectWebsiteCopyExtension on DisconnectWebsite {
  DisconnectWebsite copy({int? websiteId}) =>
      DisconnectWebsite(websiteId: websiteId ?? this.websiteId);
}

extension SetSupergroupUsernameCopyExtension on SetSupergroupUsername {
  SetSupergroupUsername copy({int? supergroupId, String? username}) =>
      SetSupergroupUsername(
          supergroupId: supergroupId ?? this.supergroupId,
          username: username ?? this.username);
}

extension SetSupergroupStickerSetCopyExtension on SetSupergroupStickerSet {
  SetSupergroupStickerSet copy({int? supergroupId, int? stickerSetId}) =>
      SetSupergroupStickerSet(
          supergroupId: supergroupId ?? this.supergroupId,
          stickerSetId: stickerSetId ?? this.stickerSetId);
}

extension ToggleSupergroupSignMessagesCopyExtension
    on ToggleSupergroupSignMessages {
  ToggleSupergroupSignMessages copy({int? supergroupId, bool? signMessages}) =>
      ToggleSupergroupSignMessages(
          supergroupId: supergroupId ?? this.supergroupId,
          signMessages: signMessages ?? this.signMessages);
}

extension ToggleSupergroupIsAllHistoryAvailableCopyExtension
    on ToggleSupergroupIsAllHistoryAvailable {
  ToggleSupergroupIsAllHistoryAvailable copy(
          {int? supergroupId, bool? isAllHistoryAvailable}) =>
      ToggleSupergroupIsAllHistoryAvailable(
          supergroupId: supergroupId ?? this.supergroupId,
          isAllHistoryAvailable:
              isAllHistoryAvailable ?? this.isAllHistoryAvailable);
}

extension ToggleSupergroupIsBroadcastGroupCopyExtension
    on ToggleSupergroupIsBroadcastGroup {
  ToggleSupergroupIsBroadcastGroup copy({int? supergroupId}) =>
      ToggleSupergroupIsBroadcastGroup(
          supergroupId: supergroupId ?? this.supergroupId);
}

extension ReportSupergroupSpamCopyExtension on ReportSupergroupSpam {
  ReportSupergroupSpam copy(
          {int? supergroupId, int? userId, List<int>? messageIds}) =>
      ReportSupergroupSpam(
          supergroupId: supergroupId ?? this.supergroupId,
          userId: userId ?? this.userId,
          messageIds: messageIds ?? this.messageIds);
}

extension GetSupergroupMembersCopyExtension on GetSupergroupMembers {
  GetSupergroupMembers copy(
          {int? supergroupId,
          SupergroupMembersFilter? filter,
          int? offset,
          int? limit}) =>
      GetSupergroupMembers(
          supergroupId: supergroupId ?? this.supergroupId,
          filter: filter ?? this.filter,
          offset: offset ?? this.offset,
          limit: limit ?? this.limit);
}

extension CloseSecretChatCopyExtension on CloseSecretChat {
  CloseSecretChat copy({int? secretChatId}) =>
      CloseSecretChat(secretChatId: secretChatId ?? this.secretChatId);
}

extension GetChatEventLogCopyExtension on GetChatEventLog {
  GetChatEventLog copy(
          {int? chatId,
          String? query,
          int? fromEventId,
          int? limit,
          ChatEventLogFilters? filters,
          List<int>? userIds}) =>
      GetChatEventLog(
          chatId: chatId ?? this.chatId,
          query: query ?? this.query,
          fromEventId: fromEventId ?? this.fromEventId,
          limit: limit ?? this.limit,
          filters: filters ?? this.filters,
          userIds: userIds ?? this.userIds);
}

extension GetPaymentFormCopyExtension on GetPaymentForm {
  GetPaymentForm copy({int? chatId, int? messageId}) => GetPaymentForm(
      chatId: chatId ?? this.chatId, messageId: messageId ?? this.messageId);
}

extension ValidateOrderInfoCopyExtension on ValidateOrderInfo {
  ValidateOrderInfo copy(
          {int? chatId,
          int? messageId,
          OrderInfo? orderInfo,
          bool? allowSave}) =>
      ValidateOrderInfo(
          chatId: chatId ?? this.chatId,
          messageId: messageId ?? this.messageId,
          orderInfo: orderInfo ?? this.orderInfo,
          allowSave: allowSave ?? this.allowSave);
}

extension SendPaymentFormCopyExtension on SendPaymentForm {
  SendPaymentForm copy(
          {int? chatId,
          int? messageId,
          String? orderInfoId,
          String? shippingOptionId,
          InputCredentials? credentials}) =>
      SendPaymentForm(
          chatId: chatId ?? this.chatId,
          messageId: messageId ?? this.messageId,
          orderInfoId: orderInfoId ?? this.orderInfoId,
          shippingOptionId: shippingOptionId ?? this.shippingOptionId,
          credentials: credentials ?? this.credentials);
}

extension GetPaymentReceiptCopyExtension on GetPaymentReceipt {
  GetPaymentReceipt copy({int? chatId, int? messageId}) => GetPaymentReceipt(
      chatId: chatId ?? this.chatId, messageId: messageId ?? this.messageId);
}

extension GetBackgroundsCopyExtension on GetBackgrounds {
  GetBackgrounds copy({bool? forDarkTheme}) =>
      GetBackgrounds(forDarkTheme: forDarkTheme ?? this.forDarkTheme);
}

extension GetBackgroundUrlCopyExtension on GetBackgroundUrl {
  GetBackgroundUrl copy({String? name, BackgroundType? type}) =>
      GetBackgroundUrl(name: name ?? this.name, type: type ?? this.type);
}

extension SearchBackgroundCopyExtension on SearchBackground {
  SearchBackground copy({String? name}) =>
      SearchBackground(name: name ?? this.name);
}

extension SetBackgroundCopyExtension on SetBackground {
  SetBackground copy(
          {InputBackground? background,
          BackgroundType? type,
          bool? forDarkTheme}) =>
      SetBackground(
          background: background ?? this.background,
          type: type ?? this.type,
          forDarkTheme: forDarkTheme ?? this.forDarkTheme);
}

extension RemoveBackgroundCopyExtension on RemoveBackground {
  RemoveBackground copy({int? backgroundId}) =>
      RemoveBackground(backgroundId: backgroundId ?? this.backgroundId);
}

extension GetLocalizationTargetInfoCopyExtension on GetLocalizationTargetInfo {
  GetLocalizationTargetInfo copy({bool? onlyLocal}) =>
      GetLocalizationTargetInfo(onlyLocal: onlyLocal ?? this.onlyLocal);
}

extension GetLanguagePackInfoCopyExtension on GetLanguagePackInfo {
  GetLanguagePackInfo copy({String? languagePackId}) => GetLanguagePackInfo(
      languagePackId: languagePackId ?? this.languagePackId);
}

extension GetLanguagePackStringsCopyExtension on GetLanguagePackStrings {
  GetLanguagePackStrings copy({String? languagePackId, List<String>? keys}) =>
      GetLanguagePackStrings(
          languagePackId: languagePackId ?? this.languagePackId,
          keys: keys ?? this.keys);
}

extension SynchronizeLanguagePackCopyExtension on SynchronizeLanguagePack {
  SynchronizeLanguagePack copy({String? languagePackId}) =>
      SynchronizeLanguagePack(
          languagePackId: languagePackId ?? this.languagePackId);
}

extension AddCustomServerLanguagePackCopyExtension
    on AddCustomServerLanguagePack {
  AddCustomServerLanguagePack copy({String? languagePackId}) =>
      AddCustomServerLanguagePack(
          languagePackId: languagePackId ?? this.languagePackId);
}

extension SetCustomLanguagePackCopyExtension on SetCustomLanguagePack {
  SetCustomLanguagePack copy(
          {LanguagePackInfo? info, List<LanguagePackString>? strings}) =>
      SetCustomLanguagePack(
          info: info ?? this.info, strings: strings ?? this.strings);
}

extension EditCustomLanguagePackInfoCopyExtension
    on EditCustomLanguagePackInfo {
  EditCustomLanguagePackInfo copy({LanguagePackInfo? info}) =>
      EditCustomLanguagePackInfo(info: info ?? this.info);
}

extension SetCustomLanguagePackStringCopyExtension
    on SetCustomLanguagePackString {
  SetCustomLanguagePackString copy(
          {String? languagePackId, LanguagePackString? newString}) =>
      SetCustomLanguagePackString(
          languagePackId: languagePackId ?? this.languagePackId,
          newString: newString ?? this.newString);
}

extension DeleteLanguagePackCopyExtension on DeleteLanguagePack {
  DeleteLanguagePack copy({String? languagePackId}) =>
      DeleteLanguagePack(languagePackId: languagePackId ?? this.languagePackId);
}

extension RegisterDeviceCopyExtension on RegisterDevice {
  RegisterDevice copy({DeviceToken? deviceToken, List<int>? otherUserIds}) =>
      RegisterDevice(
          deviceToken: deviceToken ?? this.deviceToken,
          otherUserIds: otherUserIds ?? this.otherUserIds);
}

extension ProcessPushNotificationCopyExtension on ProcessPushNotification {
  ProcessPushNotification copy({String? payload}) =>
      ProcessPushNotification(payload: payload ?? this.payload);
}

extension GetPushReceiverIdCopyExtension on GetPushReceiverId {
  GetPushReceiverId copy({String? payload}) =>
      GetPushReceiverId(payload: payload ?? this.payload);
}

extension GetRecentlyVisitedTMeUrlsCopyExtension on GetRecentlyVisitedTMeUrls {
  GetRecentlyVisitedTMeUrls copy({String? referrer}) =>
      GetRecentlyVisitedTMeUrls(referrer: referrer ?? this.referrer);
}

extension SetUserPrivacySettingRulesCopyExtension
    on SetUserPrivacySettingRules {
  SetUserPrivacySettingRules copy(
          {UserPrivacySetting? setting, UserPrivacySettingRules? rules}) =>
      SetUserPrivacySettingRules(
          setting: setting ?? this.setting, rules: rules ?? this.rules);
}

extension GetUserPrivacySettingRulesCopyExtension
    on GetUserPrivacySettingRules {
  GetUserPrivacySettingRules copy({UserPrivacySetting? setting}) =>
      GetUserPrivacySettingRules(setting: setting ?? this.setting);
}

extension GetOptionCopyExtension on GetOption {
  GetOption copy({String? name}) => GetOption(name: name ?? this.name);
}

extension SetOptionCopyExtension on SetOption {
  SetOption copy({String? name, OptionValue? value}) =>
      SetOption(name: name ?? this.name, value: value ?? this.value);
}

extension SetAccountTtlCopyExtension on SetAccountTtl {
  SetAccountTtl copy({AccountTtl? ttl}) => SetAccountTtl(ttl: ttl ?? this.ttl);
}

extension DeleteAccountCopyExtension on DeleteAccount {
  DeleteAccount copy({String? reason}) =>
      DeleteAccount(reason: reason ?? this.reason);
}

extension RemoveChatActionBarCopyExtension on RemoveChatActionBar {
  RemoveChatActionBar copy({int? chatId}) =>
      RemoveChatActionBar(chatId: chatId ?? this.chatId);
}

extension ReportChatCopyExtension on ReportChat {
  ReportChat copy(
          {int? chatId,
          List<int>? messageIds,
          ChatReportReason? reason,
          String? text}) =>
      ReportChat(
          chatId: chatId ?? this.chatId,
          messageIds: messageIds ?? this.messageIds,
          reason: reason ?? this.reason,
          text: text ?? this.text);
}

extension ReportChatPhotoCopyExtension on ReportChatPhoto {
  ReportChatPhoto copy(
          {int? chatId, int? fileId, ChatReportReason? reason, String? text}) =>
      ReportChatPhoto(
          chatId: chatId ?? this.chatId,
          fileId: fileId ?? this.fileId,
          reason: reason ?? this.reason,
          text: text ?? this.text);
}

extension GetChatStatisticsUrlCopyExtension on GetChatStatisticsUrl {
  GetChatStatisticsUrl copy({int? chatId, String? parameters, bool? isDark}) =>
      GetChatStatisticsUrl(
          chatId: chatId ?? this.chatId,
          parameters: parameters ?? this.parameters,
          isDark: isDark ?? this.isDark);
}

extension GetChatStatisticsCopyExtension on GetChatStatistics {
  GetChatStatistics copy({int? chatId, bool? isDark}) => GetChatStatistics(
      chatId: chatId ?? this.chatId, isDark: isDark ?? this.isDark);
}

extension GetMessageStatisticsCopyExtension on GetMessageStatistics {
  GetMessageStatistics copy({int? chatId, int? messageId, bool? isDark}) =>
      GetMessageStatistics(
          chatId: chatId ?? this.chatId,
          messageId: messageId ?? this.messageId,
          isDark: isDark ?? this.isDark);
}

extension GetStatisticalGraphCopyExtension on GetStatisticalGraph {
  GetStatisticalGraph copy({int? chatId, String? token, int? x}) =>
      GetStatisticalGraph(
          chatId: chatId ?? this.chatId,
          token: token ?? this.token,
          x: x ?? this.x);
}

extension GetStorageStatisticsCopyExtension on GetStorageStatistics {
  GetStorageStatistics copy({int? chatLimit}) =>
      GetStorageStatistics(chatLimit: chatLimit ?? this.chatLimit);
}

extension OptimizeStorageCopyExtension on OptimizeStorage {
  OptimizeStorage copy(
          {int? size,
          int? ttl,
          int? count,
          int? immunityDelay,
          List<FileType>? fileTypes,
          List<int>? chatIds,
          List<int>? excludeChatIds,
          bool? returnDeletedFileStatistics,
          int? chatLimit}) =>
      OptimizeStorage(
          size: size ?? this.size,
          ttl: ttl ?? this.ttl,
          count: count ?? this.count,
          immunityDelay: immunityDelay ?? this.immunityDelay,
          fileTypes: fileTypes ?? this.fileTypes,
          chatIds: chatIds ?? this.chatIds,
          excludeChatIds: excludeChatIds ?? this.excludeChatIds,
          returnDeletedFileStatistics:
              returnDeletedFileStatistics ?? this.returnDeletedFileStatistics,
          chatLimit: chatLimit ?? this.chatLimit);
}

extension SetNetworkTypeCopyExtension on SetNetworkType {
  SetNetworkType copy({NetworkType? type}) =>
      SetNetworkType(type: type ?? this.type);
}

extension GetNetworkStatisticsCopyExtension on GetNetworkStatistics {
  GetNetworkStatistics copy({bool? onlyCurrent}) =>
      GetNetworkStatistics(onlyCurrent: onlyCurrent ?? this.onlyCurrent);
}

extension AddNetworkStatisticsCopyExtension on AddNetworkStatistics {
  AddNetworkStatistics copy({NetworkStatisticsEntry? entry}) =>
      AddNetworkStatistics(entry: entry ?? this.entry);
}

extension SetAutoDownloadSettingsCopyExtension on SetAutoDownloadSettings {
  SetAutoDownloadSettings copy(
          {AutoDownloadSettings? settings, NetworkType? type}) =>
      SetAutoDownloadSettings(
          settings: settings ?? this.settings, type: type ?? this.type);
}

extension GetBankCardInfoCopyExtension on GetBankCardInfo {
  GetBankCardInfo copy({String? bankCardNumber}) =>
      GetBankCardInfo(bankCardNumber: bankCardNumber ?? this.bankCardNumber);
}

extension GetPassportElementCopyExtension on GetPassportElement {
  GetPassportElement copy({PassportElementType? type, String? password}) =>
      GetPassportElement(
          type: type ?? this.type, password: password ?? this.password);
}

extension GetAllPassportElementsCopyExtension on GetAllPassportElements {
  GetAllPassportElements copy({String? password}) =>
      GetAllPassportElements(password: password ?? this.password);
}

extension SetPassportElementCopyExtension on SetPassportElement {
  SetPassportElement copy({InputPassportElement? element, String? password}) =>
      SetPassportElement(
          element: element ?? this.element,
          password: password ?? this.password);
}

extension DeletePassportElementCopyExtension on DeletePassportElement {
  DeletePassportElement copy({PassportElementType? type}) =>
      DeletePassportElement(type: type ?? this.type);
}

extension SetPassportElementErrorsCopyExtension on SetPassportElementErrors {
  SetPassportElementErrors copy(
          {int? userId, List<InputPassportElementError>? errors}) =>
      SetPassportElementErrors(
          userId: userId ?? this.userId, errors: errors ?? this.errors);
}

extension GetPreferredCountryLanguageCopyExtension
    on GetPreferredCountryLanguage {
  GetPreferredCountryLanguage copy({String? countryCode}) =>
      GetPreferredCountryLanguage(countryCode: countryCode ?? this.countryCode);
}

extension SendPhoneNumberVerificationCodeCopyExtension
    on SendPhoneNumberVerificationCode {
  SendPhoneNumberVerificationCode copy(
          {String? phoneNumber, PhoneNumberAuthenticationSettings? settings}) =>
      SendPhoneNumberVerificationCode(
          phoneNumber: phoneNumber ?? this.phoneNumber,
          settings: settings ?? this.settings);
}

extension CheckPhoneNumberVerificationCodeCopyExtension
    on CheckPhoneNumberVerificationCode {
  CheckPhoneNumberVerificationCode copy({String? code}) =>
      CheckPhoneNumberVerificationCode(code: code ?? this.code);
}

extension SendEmailAddressVerificationCodeCopyExtension
    on SendEmailAddressVerificationCode {
  SendEmailAddressVerificationCode copy({String? emailAddress}) =>
      SendEmailAddressVerificationCode(
          emailAddress: emailAddress ?? this.emailAddress);
}

extension CheckEmailAddressVerificationCodeCopyExtension
    on CheckEmailAddressVerificationCode {
  CheckEmailAddressVerificationCode copy({String? code}) =>
      CheckEmailAddressVerificationCode(code: code ?? this.code);
}

extension GetPassportAuthorizationFormCopyExtension
    on GetPassportAuthorizationForm {
  GetPassportAuthorizationForm copy(
          {int? botUserId, String? scope, String? publicKey, String? nonce}) =>
      GetPassportAuthorizationForm(
          botUserId: botUserId ?? this.botUserId,
          scope: scope ?? this.scope,
          publicKey: publicKey ?? this.publicKey,
          nonce: nonce ?? this.nonce);
}

extension GetPassportAuthorizationFormAvailableElementsCopyExtension
    on GetPassportAuthorizationFormAvailableElements {
  GetPassportAuthorizationFormAvailableElements copy(
          {int? autorizationFormId, String? password}) =>
      GetPassportAuthorizationFormAvailableElements(
          autorizationFormId: autorizationFormId ?? this.autorizationFormId,
          password: password ?? this.password);
}

extension SendPassportAuthorizationFormCopyExtension
    on SendPassportAuthorizationForm {
  SendPassportAuthorizationForm copy(
          {int? autorizationFormId, List<PassportElementType>? types}) =>
      SendPassportAuthorizationForm(
          autorizationFormId: autorizationFormId ?? this.autorizationFormId,
          types: types ?? this.types);
}

extension SendPhoneNumberConfirmationCodeCopyExtension
    on SendPhoneNumberConfirmationCode {
  SendPhoneNumberConfirmationCode copy(
          {String? hash,
          String? phoneNumber,
          PhoneNumberAuthenticationSettings? settings}) =>
      SendPhoneNumberConfirmationCode(
          hash: hash ?? this.hash,
          phoneNumber: phoneNumber ?? this.phoneNumber,
          settings: settings ?? this.settings);
}

extension CheckPhoneNumberConfirmationCodeCopyExtension
    on CheckPhoneNumberConfirmationCode {
  CheckPhoneNumberConfirmationCode copy({String? code}) =>
      CheckPhoneNumberConfirmationCode(code: code ?? this.code);
}

extension SetBotUpdatesStatusCopyExtension on SetBotUpdatesStatus {
  SetBotUpdatesStatus copy({int? pendingUpdateCount, String? errorMessage}) =>
      SetBotUpdatesStatus(
          pendingUpdateCount: pendingUpdateCount ?? this.pendingUpdateCount,
          errorMessage: errorMessage ?? this.errorMessage);
}

extension UploadStickerFileCopyExtension on UploadStickerFile {
  UploadStickerFile copy({int? userId, InputFile? pngSticker}) =>
      UploadStickerFile(
          userId: userId ?? this.userId,
          pngSticker: pngSticker ?? this.pngSticker);
}

extension CreateNewStickerSetCopyExtension on CreateNewStickerSet {
  CreateNewStickerSet copy(
          {int? userId,
          String? title,
          String? name,
          bool? isMasks,
          List<InputSticker>? stickers}) =>
      CreateNewStickerSet(
          userId: userId ?? this.userId,
          title: title ?? this.title,
          name: name ?? this.name,
          isMasks: isMasks ?? this.isMasks,
          stickers: stickers ?? this.stickers);
}

extension AddStickerToSetCopyExtension on AddStickerToSet {
  AddStickerToSet copy({int? userId, String? name, InputSticker? sticker}) =>
      AddStickerToSet(
          userId: userId ?? this.userId,
          name: name ?? this.name,
          sticker: sticker ?? this.sticker);
}

extension SetStickerSetThumbnailCopyExtension on SetStickerSetThumbnail {
  SetStickerSetThumbnail copy(
          {int? userId, String? name, InputFile? thumbnail}) =>
      SetStickerSetThumbnail(
          userId: userId ?? this.userId,
          name: name ?? this.name,
          thumbnail: thumbnail ?? this.thumbnail);
}

extension SetStickerPositionInSetCopyExtension on SetStickerPositionInSet {
  SetStickerPositionInSet copy({InputFile? sticker, int? position}) =>
      SetStickerPositionInSet(
          sticker: sticker ?? this.sticker,
          position: position ?? this.position);
}

extension RemoveStickerFromSetCopyExtension on RemoveStickerFromSet {
  RemoveStickerFromSet copy({InputFile? sticker}) =>
      RemoveStickerFromSet(sticker: sticker ?? this.sticker);
}

extension GetMapThumbnailFileCopyExtension on GetMapThumbnailFile {
  GetMapThumbnailFile copy(
          {Location? location,
          int? zoom,
          int? width,
          int? height,
          int? scale,
          int? chatId}) =>
      GetMapThumbnailFile(
          location: location ?? this.location,
          zoom: zoom ?? this.zoom,
          width: width ?? this.width,
          height: height ?? this.height,
          scale: scale ?? this.scale,
          chatId: chatId ?? this.chatId);
}

extension AcceptTermsOfServiceCopyExtension on AcceptTermsOfService {
  AcceptTermsOfService copy({String? termsOfServiceId}) => AcceptTermsOfService(
      termsOfServiceId: termsOfServiceId ?? this.termsOfServiceId);
}

extension SendCustomRequestCopyExtension on SendCustomRequest {
  SendCustomRequest copy({String? method, String? parameters}) =>
      SendCustomRequest(
          method: method ?? this.method,
          parameters: parameters ?? this.parameters);
}

extension AnswerCustomQueryCopyExtension on AnswerCustomQuery {
  AnswerCustomQuery copy({int? customQueryId, String? data}) =>
      AnswerCustomQuery(
          customQueryId: customQueryId ?? this.customQueryId,
          data: data ?? this.data);
}

extension SetAlarmCopyExtension on SetAlarm {
  SetAlarm copy({double? seconds}) =>
      SetAlarm(seconds: seconds ?? this.seconds);
}

extension GetPhoneNumberInfoCopyExtension on GetPhoneNumberInfo {
  GetPhoneNumberInfo copy({String? phoneNumberPrefix}) => GetPhoneNumberInfo(
      phoneNumberPrefix: phoneNumberPrefix ?? this.phoneNumberPrefix);
}

extension GetDeepLinkInfoCopyExtension on GetDeepLinkInfo {
  GetDeepLinkInfo copy({String? link}) =>
      GetDeepLinkInfo(link: link ?? this.link);
}

extension SaveApplicationLogEventCopyExtension on SaveApplicationLogEvent {
  SaveApplicationLogEvent copy({String? type, int? chatId, JsonValue? data}) =>
      SaveApplicationLogEvent(
          type: type ?? this.type,
          chatId: chatId ?? this.chatId,
          data: data ?? this.data);
}

extension AddProxyCopyExtension on AddProxy {
  AddProxy copy({String? server, int? port, bool? enable, ProxyType? type}) =>
      AddProxy(
          server: server ?? this.server,
          port: port ?? this.port,
          enable: enable ?? this.enable,
          type: type ?? this.type);
}

extension EditProxyCopyExtension on EditProxy {
  EditProxy copy(
          {int? proxyId,
          String? server,
          int? port,
          bool? enable,
          ProxyType? type}) =>
      EditProxy(
          proxyId: proxyId ?? this.proxyId,
          server: server ?? this.server,
          port: port ?? this.port,
          enable: enable ?? this.enable,
          type: type ?? this.type);
}

extension EnableProxyCopyExtension on EnableProxy {
  EnableProxy copy({int? proxyId}) =>
      EnableProxy(proxyId: proxyId ?? this.proxyId);
}

extension RemoveProxyCopyExtension on RemoveProxy {
  RemoveProxy copy({int? proxyId}) =>
      RemoveProxy(proxyId: proxyId ?? this.proxyId);
}

extension GetProxyLinkCopyExtension on GetProxyLink {
  GetProxyLink copy({int? proxyId}) =>
      GetProxyLink(proxyId: proxyId ?? this.proxyId);
}

extension PingProxyCopyExtension on PingProxy {
  PingProxy copy({int? proxyId}) => PingProxy(proxyId: proxyId ?? this.proxyId);
}

extension SetLogStreamCopyExtension on SetLogStream {
  SetLogStream copy({LogStream? logStream}) =>
      SetLogStream(logStream: logStream ?? this.logStream);
}

extension SetLogVerbosityLevelCopyExtension on SetLogVerbosityLevel {
  SetLogVerbosityLevel copy({int? newVerbosityLevel}) => SetLogVerbosityLevel(
      newVerbosityLevel: newVerbosityLevel ?? this.newVerbosityLevel);
}

extension SetLogTagVerbosityLevelCopyExtension on SetLogTagVerbosityLevel {
  SetLogTagVerbosityLevel copy({String? tag, int? newVerbosityLevel}) =>
      SetLogTagVerbosityLevel(
          tag: tag ?? this.tag,
          newVerbosityLevel: newVerbosityLevel ?? this.newVerbosityLevel);
}

extension GetLogTagVerbosityLevelCopyExtension on GetLogTagVerbosityLevel {
  GetLogTagVerbosityLevel copy({String? tag}) =>
      GetLogTagVerbosityLevel(tag: tag ?? this.tag);
}

extension AddLogMessageCopyExtension on AddLogMessage {
  AddLogMessage copy({int? verbosityLevel, String? text}) => AddLogMessage(
      verbosityLevel: verbosityLevel ?? this.verbosityLevel,
      text: text ?? this.text);
}

extension TestCallStringCopyExtension on TestCallString {
  TestCallString copy({String? x}) => TestCallString(x: x ?? this.x);
}

extension TestCallBytesCopyExtension on TestCallBytes {
  TestCallBytes copy({String? x}) => TestCallBytes(x: x ?? this.x);
}

extension TestCallVectorIntCopyExtension on TestCallVectorInt {
  TestCallVectorInt copy({List<int>? x}) => TestCallVectorInt(x: x ?? this.x);
}

extension TestCallVectorIntObjectCopyExtension on TestCallVectorIntObject {
  TestCallVectorIntObject copy({List<TestInt>? x}) =>
      TestCallVectorIntObject(x: x ?? this.x);
}

extension TestCallVectorStringCopyExtension on TestCallVectorString {
  TestCallVectorString copy({List<String>? x}) =>
      TestCallVectorString(x: x ?? this.x);
}

extension TestCallVectorStringObjectCopyExtension
    on TestCallVectorStringObject {
  TestCallVectorStringObject copy({List<TestString>? x}) =>
      TestCallVectorStringObject(x: x ?? this.x);
}

extension TestSquareIntCopyExtension on TestSquareInt {
  TestSquareInt copy({int? x}) => TestSquareInt(x: x ?? this.x);
}

extension TestProxyCopyExtension on TestProxy {
  TestProxy copy(
          {String? server,
          int? port,
          ProxyType? type,
          int? dcId,
          double? timeout}) =>
      TestProxy(
          server: server ?? this.server,
          port: port ?? this.port,
          type: type ?? this.type,
          dcId: dcId ?? this.dcId,
          timeout: timeout ?? this.timeout);
}

extension TestReturnErrorCopyExtension on TestReturnError {
  TestReturnError copy({TdError? error}) =>
      TestReturnError(error: error ?? this.error);
}
