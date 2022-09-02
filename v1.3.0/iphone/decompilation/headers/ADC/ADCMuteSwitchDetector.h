// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCMUTESWITCHDETECTOR_H
#define ADCMUTESWITCHDETECTOR_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>

@class ADCMuteSwitchDetectorJob;

@interface ADCMuteSwitchDetector : NSObject

@property (nonatomic) unsigned int soundId; // ivar: _soundId
@property BOOL isPaused; // ivar: _isPaused
@property (nonatomic) BOOL isMute; // ivar: _isMute
@property (nonatomic) BOOL started; // ivar: _started
@property BOOL forceEmit; // ivar: _forceEmit
@property (nonatomic) BOOL initialized; // ivar: _initialized
@property NSUInteger possibleChange; // ivar: _possibleChange
@property (retain) NSObject<OS_dispatch_queue> *queue; // ivar: _queue
@property (retain) ADCMuteSwitchDetectorJob *job; // ivar: _job
@property (copy, nonatomic) id *silentNotify; // ivar: _silentNotify


-(id)init;
-(void)runOnQueue:(id)arg0 ;
-(void)initialize;
-(void)jobFinished:(BOOL)arg0 isMuted:(BOOL)arg1 ;
-(void)scheduleCheck;
-(void)didEnterBackground;
-(void)bacameActive;
-(void)start;
-(void)stop;
-(BOOL)createSoundFile:(id)arg0 ;
-(id)getSoundFilename;
-(BOOL)isSoundFileAvailable;
-(void)completeJob;
+(id)sharedInstance;


@end


#endif