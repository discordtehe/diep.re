// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol FNFClock


-(id)initWithShouldCreateTimebase:(BOOL)arg0 playerConfig:(struct ? )arg1 ;
-(void)initTimebase;
-(void)resume;
-(void)pause;
-(void)set:(struct ? )arg0 ;
-(void)setRate:(float)arg0 ;
-(float)currentPlayRate;
-(id)createTimeObserverWithInterval:(struct ? )arg0 block:(id)arg1 fireOnceAtExactTime:(unk)arg2 followMasterClock:(BOOL)arg3 ;
-(BOOL)addTimeObserver:(id)arg0 ;
-(void)removeTimeObserver:(id)arg0 ;
-(void)resumeTimeObserver:(id)arg0 ;
-(void)suspendTimeObserver:(id)arg0 ;
-(void)removeAllTimeObservers;
-(id)observers;
-(void)syncWithLayer:(id)arg0 ;
-(struct ? )currentTime;

@end

