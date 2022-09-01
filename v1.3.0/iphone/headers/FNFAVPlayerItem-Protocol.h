// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol FNFAVPlayerItem

@property (readonly, nonatomic) NSInteger status;
@property (readonly, copy, nonatomic) NSArray *loadedTimeRanges;
@property (copy, nonatomic) AVAudioMix *audioMix;

-(id)accessLog;
-(id)asset;
-(BOOL)isPlaybackBufferFull;
-(BOOL)isPlaybackLikelyToKeepUp;
-(struct ? )duration;
-(void)asyncLoadAvailableQualitiesWithHandler:(id)arg0 onQueue:(unk)arg1 ;
-(void)asyncLoadCurrentQualityWithHandler:(id)arg0 onQueue:(unk)arg1 ;
-(struct ? )currentTime;
-(void)addOutput:(id)arg0 ;
-(void)requestTimeLoadedUpdate;
-(void)requestErrorNotificationIfNeeded;
-(NSInteger)status;
-(id)loadedTimeRanges;
-(id)audioMix;
-(void)setAudioMix:(id)arg0 ;

@end

