// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol FNFPlayerAudioEngine


-(void)setAudioStreamBasicDescription:(struct AudioStreamBasicDescription )arg0 extraParameters:(id)arg1 putDataCallback:(id)arg2 bufferUnderrunCallback:(unk)arg3 errorCallback:(id)arg4 sampleFrameSize:(unk)arg5 minSampleFrameSize:(id)arg6 ;
-(BOOL)isReadyToPlayWithStartTime:(struct ? )arg0 ;
-(void)prepareToPlay;
-(void)playWithStartTime:(struct ? )arg0 ;
-(void)pause;
-(void)stop;
-(void)reset;
-(void)flush;
-(void)stopLoadingData:(BOOL)arg0 ;
-(void)resumeEnqueuingData;
-(void)invalidate;
-(struct ? )getCurrentTime;
-(void)setVolume:(float)arg0 rampTime:(float)arg1 ;
-(void)enableLevelMeteringWithCallback:(id)arg0 ;
-(void)sendCurrentAudioLevelToCallback;
-(void)removeLevelMetering;
-(void)setRate:(float)arg0 ;

@end

