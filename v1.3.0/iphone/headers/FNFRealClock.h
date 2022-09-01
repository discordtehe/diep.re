// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FNFREALCLOCK_H
#define FNFREALCLOCK_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol FNFClock;

@interface FNFRealClock : NSObject <FNFClock>

 {
    *OpaqueCMClock _audioDeviceClock;
    *OpaqueCMTimebase _controlTimebase;
    NSMutableArray *_timeObservers;
    float _playRate;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithShouldCreateTimebase:(BOOL)arg0 playerConfig:(struct ? )arg1 ;
-(BOOL)_initTimebase;
-(void)initTimebase;
// -(id)createTimeObserverWithInterval:(struct ? )arg0 block:(id)arg1 fireOnceAtExactTime:(unk)arg2 followMasterClock:(BOOL)arg3  ;
-(BOOL)addTimeObserver:(id)arg0 ;
-(void)resume;
-(void)pause;
-(void)set:(struct ? )arg0 ;
-(void)setRate:(float)arg0 ;
-(float)currentPlayRate;
-(struct ? )currentTime;
-(void)_dispatchSourceFiredForTimeObserver:(id)arg0 ;
-(void)dealloc;
-(void)resumeTimeObserver:(id)arg0 ;
-(void)suspendTimeObserver:(id)arg0 ;
-(void)removeTimeObserver:(id)arg0 ;
-(void)removeTimeObserverInternal:(id)arg0 ;
-(id)observers;
-(void)removeAllTimeObservers;
-(void)removeAllTimeObserversInternal;
-(void)syncWithLayer:(id)arg0 ;
-(void)_updateNextFireTimeForObserver:(id)arg0 ;


@end


#endif