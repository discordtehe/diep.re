// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FNFLOCALMP4ASSET_H
#define FNFLOCALMP4ASSET_H

@class AVAsset, AVAssetReader, AVAssetReaderOutput, AVAssetReaderTrackOutput, AVAudioMix;
@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol AVAsynchronousKeyValueLoading;
@protocol FNFAVAsset;
@protocol FNFAVPlayerItem;
@protocol FNFAssetForPlayer;
@protocol FNFInfoForLoopableAsset;
@protocol FNFAssetEventListener;

@interface FNFLocalMp4Asset : NSObject <AVAsynchronousKeyValueLoading, FNFAVAsset, FNFAVPlayerItem, FNFAssetForPlayer, FNFInfoForLoopableAsset>

 {
    id *_assetLoadedHandler;
    NSURL *_localURL;
    ? _duration;
    ? _playbackTime;
    ? _startingPlaybackTime;
    *opaqueCMFormatDescription _formatDesc;
    AudioStreamBasicDescription _asbd;
    unsigned int _timescale;
    unsigned int _audioTimescale;
    BOOL _hasFailed;
    NSError *_loadingError;
    BOOL _async;
    NSObject<OS_dispatch_queue> *_dispatchQueue;
    AVAsset *_videoAsset;
    AVAssetReader *_videoAssetReader;
    AVAssetReaderOutput *_videoAssetReaderTrackOutput;
    *opaqueCMSampleBuffer _videoSampleBuffer;
    CGSize _naturalSize;
    CGAffineTransform _preferredTransform;
    AVAssetReader *_audioAssetReader;
    AVAssetReaderTrackOutput *_audioAssetReaderTrackOutput;
    *opaqueCMSampleBuffer _audioSampleBuffer;
    *OpaqueCMBlockBuffer _audioBlockBuffer;
    int _numberOfPackets;
    *AudioStreamPacketDescription _inPacketDescriptions;
    AudioBuffer _audioBuffer;
    int _currentAudioBufferIndex;
    float _fps;
    BOOL _isOutputDecompressed;
    BOOL _videoBufferEnded;
    CGSize _containerDimensions;
    int _pauseReason;
    id<FNFAssetEventListener> *_eventListener;
    BOOL _audioOnlyAsset;
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


-(id)initWithLocalURL:(id)arg0 decompressedOutput:(BOOL)arg1 containerDimensions:(struct CGSize )arg2 eventListener:(id)arg3 ;
-(id)initWithLocalURL:(id)arg0 decompressedOutput:(BOOL)arg1 containerDimensions:(struct CGSize )arg2 ;
-(id)initAudioOnlyAssetWithLocalURL:(id)arg0 decompressedOutput:(BOOL)arg1 containerDimensions:(struct CGSize )arg2 ;
-(id)initAudioOnlyAssetWithLocalURL:(id)arg0 async:(BOOL)arg1 decompressedOutput:(BOOL)arg2 containerDimensions:(struct CGSize )arg3 ;
-(id)initWithLocalURL:(id)arg0 async:(BOOL)arg1 decompressedOutput:(BOOL)arg2 containerDimensions:(struct CGSize )arg3 ;
-(void)dealloc;
-(struct CGAffineTransform )preferredTransform;
-(BOOL)createVideoReader:(struct ? )arg0 ;
-(BOOL)createAudioReader:(struct ? )arg0 ;
-(void)_startWithAsset:(id)arg0 completionHandler:(id)arg1 ;
-(void)loadValuesAsynchronouslyForKeys:(id)arg0 completionHandler:(id)arg1 ;
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
-(struct ? )timeAfterSeek;
-(BOOL)is30MSFrame:(struct opaqueCMSampleBuffer *)arg0 ;
-(BOOL)isKeyFrame:(struct opaqueCMSampleBuffer *)arg0 ;
-(struct FNFFrameMetadata )currentFrameMetadataForTrack:(NSInteger)arg0 ;
-(char *)currentFrameDataForTrack:(NSInteger)arg0 ;
-(BOOL)containsTrack:(NSInteger)arg0 ;
-(id)audioCodec;
-(BOOL)trackHasMoreFrames:(NSInteger)arg0 ;
-(void)advanceFrameForTrack:(NSInteger)arg0 ;
-(BOOL)shouldBufferVideoAsSoonAsPossible;
// -(BOOL)shouldPauseForStallingWithNextCheckCallback:(id)arg0 stallReason:(unk)arg1  ;
-(BOOL)shouldRestartAfterStalling;
-(BOOL)stallingForTrack:(NSInteger)arg0 ;
-(id)URLIfExists;
-(id)representationId;
-(id)audioRepresentationId;
-(id)mpdAccessibilityDescription;
-(BOOL)mpdContainsAttributeUsingASRCaptions;
-(id)asset;
-(void)addErrorToLog:(id)arg0 shouldStopPlayback:(BOOL)arg1 ;
-(struct ? )currentTime;
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
-(unsigned int)timescale;
-(unsigned int)audioTimescale;
-(id)resourceLoader;
-(void)playbackStarted;
-(void)playbackPauseRequested:(int)arg0 ;
-(id)debugDetails;
-(id)qualityLabel;
-(void)_releaseAudioBufferIfNeeded;
-(void)_getAudioPacketDescriptions;
-(BOOL)isProtectedContent;
-(int)_currentAudioBufferIndex;
-(void)printASBD:(struct AudioStreamBasicDescription )arg0 ;
-(struct ? )videoTrackDuration;
-(BOOL)decompressedFramebuffer;
-(BOOL)isDurationFinal;
-(void)setAssetEventListener:(id)arg0 ;
-(void)setIsSoundMuted:(BOOL)arg0 ;


@end


#endif