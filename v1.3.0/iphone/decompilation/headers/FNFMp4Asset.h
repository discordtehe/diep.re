// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FNFMP4ASSET_H
#define FNFMP4ASSET_H

@class AVAudioMix;
@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class FNFBufferSizeDecider;
@protocol AVAsynchronousKeyValueLoading;
@protocol FNFAVAsset;
@protocol FNFAVPlayerItem;
@protocol FNFAssetForPlayer;
@protocol FNFInfoForLoopableAsset;
@protocol FNFDataLoaderDelegate;
@protocol FNFAtomManagerDelegate;
@protocol FNFTimeLoadedDelegate;
@protocol FNFDataLoader;
@protocol FNFAtomManager;
@protocol FNFAssetEventListener;

@interface FNFMp4Asset : NSObject <AVAsynchronousKeyValueLoading, FNFAVAsset, FNFAVPlayerItem, FNFAssetForPlayer, FNFInfoForLoopableAsset, FNFDataLoaderDelegate, FNFAtomManagerDelegate, FNFTimeLoadedDelegate>

 {
    id *_assetLoadedHandler;
    id<FNFDataLoader> *_dataLoader;
    id<FNFAtomManager> *_atomManager;
    FNFBufferSizeDecider *_bufferSizeDecider;
    id *_playerCheckForStallCallback;
    BOOL _hasFailed;
    BOOL _isStalled;
    NSError *_error;
    NSError *_loadingError;
    BOOL _shouldShowBroadcasterInterruptedMessage;
    BOOL _assetLoaded;
    BOOL _waitingOnLoad;
    int _warningCount;
    NSObject<OS_dispatch_queue> *_dispatchQueue;
    BOOL _isAsync;
    int _pauseReason;
    NSUInteger _moovAtomSizeForReattempt;
    NSUInteger _moovAtomSizeForDataLoader;
    id<FNFAssetEventListener> *_eventListener;
}


@property (copy) NSString *resourceHost; // ivar: _resourceHost
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
@property (readonly, nonatomic) NSInteger status;
@property (readonly, copy, nonatomic) NSArray *loadedTimeRanges;
@property (copy, nonatomic) AVAudioMix *audioMix;
@property (readonly, nonatomic) ? maxBufferTime;
@property (readonly, nonatomic) ? minBufferTime;
@property (readonly, nonatomic) int pauseReason;


-(id)initWithURL:(id)arg0 moovAtomSize:(NSUInteger)arg1 moovAtomSizeForReattempt:(NSUInteger)arg2 bitrate:(NSUInteger)arg3 fetchBufferSizeInSeconds:(CGFloat)arg4 unstallBufferSizeInSeconds:(CGFloat)arg5 stallBufferSizeInSeconds:(CGFloat)arg6 firstFetchSizeInSeconds:(CGFloat)arg7 fetchBufferMultiplier:(CGFloat)arg8 unstallBufferMultiplier:(CGFloat)arg9 enableMp4AssetSeekingFix:(BOOL)arg10 enableMp4AssetEditListSeekingFix:(BOOL)arg11 enableMp4AssetRotationSupport:(BOOL)arg12 enableHEVCSupport:(BOOL)arg13 eventListener:(id)arg14 ;
-(id)initWithURL:(id)arg0 moovAtomSize:(NSUInteger)arg1 moovAtomSizeForReattempt:(NSUInteger)arg2 bitrate:(NSUInteger)arg3 fetchBufferSizeInSeconds:(CGFloat)arg4 unstallBufferSizeInSeconds:(CGFloat)arg5 stallBufferSizeInSeconds:(CGFloat)arg6 firstFetchSizeInSeconds:(CGFloat)arg7 fetchBufferMultiplier:(CGFloat)arg8 unstallBufferMultiplier:(CGFloat)arg9 enableMp4AssetSeekingFix:(BOOL)arg10 enableMp4AssetEditListSeekingFix:(BOOL)arg11 enableMp4AssetRotationSupport:(BOOL)arg12 enableHEVCSupport:(BOOL)arg13 ;
-(id)initWithURL:(id)arg0 moovAtomSize:(NSUInteger)arg1 bitrate:(NSUInteger)arg2 ;
-(id)initWithURL:(id)arg0 moovAtomSize:(NSUInteger)arg1 bitrate:(NSUInteger)arg2 dispatchQueue:(id)arg3 isAsync:(BOOL)arg4 ;
-(id)initWithURL:(id)arg0 moovAtomSize:(NSUInteger)arg1 moovAtomSizeForReattempt:(NSUInteger)arg2 bitrate:(NSUInteger)arg3 fetchBufferSizeInSeconds:(CGFloat)arg4 unstallBufferSizeInSeconds:(CGFloat)arg5 stallBufferSizeInSeconds:(CGFloat)arg6 firstFetchSizeInSeconds:(CGFloat)arg7 fetchBufferMultiplier:(CGFloat)arg8 unstallBufferMultiplier:(CGFloat)arg9 enableMp4AssetSeekingFix:(BOOL)arg10 enableMp4AssetEditListSeekingFix:(BOOL)arg11 enableMp4AssetRotationSupport:(BOOL)arg12 enableHEVCSupport:(BOOL)arg13 dispatchQueue:(id)arg14 isAsync:(BOOL)arg15 ;
-(void)dealloc;
-(void)loadValuesAsynchronouslyForKeys:(id)arg0 completionHandler:(id)arg1 ;
-(struct CGAffineTransform )preferredTransform;
-(struct CGSize )naturalSize;
-(void)updatePlaybackTime:(struct ? )arg0 ;
-(NSInteger)statusOfValueForKey:(id)arg0 error:(*id)arg1 ;
// -(void)asyncLoadAvailableQualitiesWithHandler:(id)arg0 onQueue:(unk)arg1  ;
// -(void)asyncLoadCurrentQualityWithHandler:(id)arg0 onQueue:(unk)arg1  ;
-(struct ? )duration;
-(void)requestTimeLoadedUpdate;
-(void)requestErrorNotificationIfNeeded;
-(BOOL)resetAssetToBeginningIfNeeded;
-(CGFloat)prepareToSeekWithPosition:(struct ? )arg0 ;
-(BOOL)seekToPosition:(struct ? )arg0 ;
-(struct FNFFrameMetadata )currentFrameMetadataForTrack:(NSInteger)arg0 ;
-(char *)currentFrameDataForTrack:(NSInteger)arg0 ;
-(id)audioCodec;
-(BOOL)containsTrack:(NSInteger)arg0 ;
-(BOOL)trackHasMoreFrames:(NSInteger)arg0 ;
-(void)advanceFrameForTrack:(NSInteger)arg0 ;
// -(BOOL)shouldPauseForStallingWithNextCheckCallback:(id)arg0 stallReason:(unk)arg1  ;
-(BOOL)shouldRestartAfterStalling;
-(BOOL)stallingForTrack:(NSInteger)arg0 ;
-(id)representationId;
-(id)audioRepresentationId;
-(id)mpdAccessibilityDescription;
-(BOOL)mpdContainsAttributeUsingASRCaptions;
-(id)asset;
-(void)addErrorToLog:(id)arg0 shouldStopPlayback:(BOOL)arg1 ;
-(struct ? )currentTime;
-(struct ? )timeAfterSeek;
-(void)playbackPauseRequested:(int)arg0 ;
-(void)playbackStarted;
-(id)debugDetails;
-(id)qualityLabel;
-(BOOL)isProtectedContent;
-(void)parsingDidFailWithError:(id)arg0 ;
-(void)resetDataForSeekBack;
-(void)resetDataForSeekBackForTrack:(NSInteger)arg0 ;
-(void)reportWarning:(id)arg0 ;
-(void)dataWasReceivedForTrack:(NSInteger)arg0 andIsComplete:(BOOL)arg1 ;
-(void)loadingDidFailWithError:(id)arg0 ;
-(void)willChangeValue;
-(void)didChangeValue;
-(id)resourceLoader;
-(void)_updateTimeLoaded;
-(BOOL)_fullyDownloaded:(NSInteger)arg0 ;
-(BOOL)_fullyDownloaded;
-(void)_potentiallyStartRequest;
-(void)_potentiallyStartRequestForTrack:(NSInteger)arg0 ;
-(void)_handleWarning:(id)arg0 ;
-(void)_handleError:(id)arg0 ;
-(void)_seekDataLoaderToTime:(struct ? )arg0 offset:(NSUInteger)arg1 shouldUpdateOffset:(BOOL)arg2 track:(NSInteger)arg3 ;
-(void)cancelLoading;
-(id)tracksWithMediaType:(id)arg0 ;
-(id)accessLog;
-(void)addOutput:(id)arg0 ;
-(BOOL)isPlaybackLikelyToKeepUp;
-(BOOL)isPlaybackBufferFull;
-(struct opaqueCMFormatDescription *)formatDesc;
-(struct AudioStreamBasicDescription )asbd;
-(id)audioStreamExtraParameters;
-(id)projection;
-(id)audioChannelConfiguration;
-(id)dataBlockDistributorForTrack:(NSInteger)arg0 ;
-(BOOL)shouldBufferVideoAsSoonAsPossible;
-(NSUInteger)timescale;
-(NSUInteger)currentOffsetForTrack:(NSInteger)arg0 ;
-(struct ? )videoTrackDuration;
-(BOOL)decompressedFramebuffer;
-(BOOL)isDurationFinal;
-(void)setAssetEventListener:(id)arg0 ;
-(void)setIsSoundMuted:(BOOL)arg0 ;


@end


#endif