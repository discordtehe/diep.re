// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol FNFAssetForPlayer

@property (readonly, nonatomic) NSInteger status;
@property (readonly, nonatomic) ? maxBufferTime;
@property (readonly, nonatomic) ? minBufferTime;
@property (readonly, nonatomic) int pauseReason;

-(struct opaqueCMFormatDescription *)formatDesc;
-(struct AudioStreamBasicDescription )asbd;
-(id)audioStreamExtraParameters;
-(id)projection;
-(id)audioChannelConfiguration;
-(struct ? )duration;
-(BOOL)containsTrack:(NSInteger)arg0 ;
-(void)addErrorToLog:(id)arg0 shouldStopPlayback:(BOOL)arg1 ;
-(id)representationId;
-(id)audioRepresentationId;
-(id)mpdAccessibilityDescription;
-(BOOL)mpdContainsAttributeUsingASRCaptions;
-(BOOL)trackHasMoreFrames:(NSInteger)arg0 ;
-(struct FNFFrameMetadata )currentFrameMetadataForTrack:(NSInteger)arg0 ;
-(char *)currentFrameDataForTrack:(NSInteger)arg0 ;
-(void)advanceFrameForTrack:(NSInteger)arg0 ;
-(void)updatePlaybackTime:(struct ? )arg0 ;
-(BOOL)shouldPauseForStallingWithNextCheckCallback:(id)arg0 stallReason:(unk)arg1 ;
-(BOOL)shouldRestartAfterStalling;
-(BOOL)stallingForTrack:(NSInteger)arg0 ;
-(BOOL)shouldBufferVideoAsSoonAsPossible;
-(BOOL)seekToPosition:(struct ? )arg0 ;
-(BOOL)resetAssetToBeginningIfNeeded;
-(void)playbackPauseRequested:(int)arg0 ;
-(void)playbackStarted;
-(struct ? )timeAfterSeek;
-(struct CGAffineTransform )preferredTransform;
-(id)debugDetails;
-(id)qualityLabel;
-(BOOL)decompressedFramebuffer;
-(BOOL)isDurationFinal;
-(CGFloat)prepareToSeekWithPosition:(struct ? )arg0 ;
-(void)setAssetEventListener:(id)arg0 ;
-(void)setIsSoundMuted:(BOOL)arg0 ;
-(BOOL)isProtectedContent;
-(NSInteger)status;
-(struct ? )maxBufferTime;
-(struct ? )minBufferTime;
-(int)pauseReason;

@end

