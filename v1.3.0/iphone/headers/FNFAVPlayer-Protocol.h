// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol FNFAVPlayer

@property (nonatomic) float rate;
@property (nonatomic, getter=isMuted) BOOL muted;
@property (nonatomic) float volume;
@property (nonatomic) BOOL allowsExternalPlayback;
@property (readonly, nonatomic) NSInteger status;
@property (readonly, nonatomic) NSError *error;

-(void)replaceCurrentItemWithPlayerItem:(id)arg0 ;
-(void)seekToTime:(struct ? )arg0 toleranceBefore:(struct ? )arg1 toleranceAfter:(struct ? )arg2 completionHandler:(id)arg3 ;
-(void)seekToTime:(struct ? )arg0 toleranceBefore:(struct ? )arg1 toleranceAfter:(struct ? )arg2 ;
-(void)seekToTime:(struct ? )arg0 completionHandler:(id)arg1 ;
-(void)seekToTime:(struct ? )arg0 ;
-(id)currentItem;
-(struct ? )currentTime;
-(void)play;
-(void)pause;
-(id)addPeriodicTimeObserverForInterval:(struct ? )arg0 queue:(id)arg1 followMasterClock:(BOOL)arg2 usingBlock:(id)arg3 ;
-(id)addPeriodicTimeObserverForInterval:(struct ? )arg0 queue:(id)arg1 usingBlock:(id)arg2 ;
-(void)removeTimeObserver:(id)arg0 ;
-(float)rate;
-(void)setRate:(float)arg0 ;
-(BOOL)isMuted;
-(void)setMuted:(BOOL)arg0 ;
-(float)volume;
-(void)setVolume:(float)arg0 ;
-(BOOL)allowsExternalPlayback;
-(void)setAllowsExternalPlayback:(BOOL)arg0 ;
-(NSInteger)status;
-(id)error;

@end

