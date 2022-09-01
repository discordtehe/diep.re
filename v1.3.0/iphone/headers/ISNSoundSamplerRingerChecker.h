// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ISNSOUNDSAMPLERRINGERCHECKER_H
#define ISNSOUNDSAMPLERRINGERCHECKER_H


#import <Foundation/Foundation.h>


@interface ISNSoundSamplerRingerChecker : NSObject

@property (nonatomic) CGFloat interval; // ivar: _interval
@property (nonatomic) unsigned int soundId; // ivar: _soundId
@property BOOL forceEmit; // ivar: _forceEmit
@property (getter=isPaused) BOOL paused; // ivar: _paused
@property (nonatomic, getter=isPlaying) BOOL playing; // ivar: _playing
@property (nonatomic, getter=shouldContinueInForground) BOOL continueInForground; // ivar: _continueInForground
@property (nonatomic) NSInteger loopCounter; // ivar: _loopCounter
@property (readonly, nonatomic, getter=isDetecting) BOOL detecting;
@property (readonly, nonatomic, getter=isActive) BOOL activated;
@property (readonly, nonatomic, getter=isSilentOn) BOOL silentOn; // ivar: _silentOn
@property (copy) id *statusHandler; // ivar: _statusHandler


-(id)init;
-(id)createAndSaveSamplingSound;
-(void)addBackgroundForgoundObservers;
-(void)scheduleCallWithDelay:(CGFloat)arg0 ;
-(void)complete;
-(void)loopCheck;
-(void)ISNSoundSamplerDidEnterBackground;
-(void)ISNSoundSamplerWillReturnToForeground;
-(void)startDetecting;
-(void)stopDetecting;
-(void)dealloc;
+(id)shared;


@end


#endif