// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef IROMOATBASEVIDEOTRACKER_H
#define IROMOATBASEVIDEOTRACKER_H

@protocol IROMoatVideoTrackerDelegate;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class IROMoatBaseTracker;
@class IROMoatWebViewAndBridge;

@interface IROMoatBaseVideoTracker : IROMoatBaseTracker

@property (retain, nonatomic) NSString *partnerCode; // ivar: _partnerCode
@property (retain, nonatomic) NSMutableDictionary *adIds; // ivar: _adIds
@property (nonatomic) NSUInteger playerState; // ivar: _playerState
@property (readonly) BOOL trackingCompleted;
@property (nonatomic) BOOL initialized; // ivar: _initialized
@property (nonatomic) BOOL misTracking; // ivar: _misTracking
@property (nonatomic) BOOL destroyed; // ivar: _destroyed
@property (retain, nonatomic) NSMutableSet *oneTimeEventsFired; // ivar: _oneTimeEventsFired
@property (nonatomic) NSInteger failedDurationChecks; // ivar: _failedDurationChecks
@property (nonatomic) CGFloat lastTrackedPlayheadMS; // ivar: _lastTrackedPlayheadMS
@property (nonatomic) float lastAggregateVolume; // ivar: _lastAggregateVolume
@property (weak, nonatomic) id *player; // ivar: _player
@property (retain, nonatomic) IROMoatWebViewAndBridge *mWebViewAndBridge; // ivar: _mWebViewAndBridge
@property (retain, nonatomic) NSTimer *checkTimer; // ivar: _checkTimer
@property (weak, nonatomic) NSObject<IROMoatVideoTrackerDelegate> *videoTrackerDelegate; // ivar: _videoTrackerDelegate


-(void)dealloc;
-(void)startTracking;
-(id)initWithPartnerCode:(id)arg0 ;
-(void)stopTracking;
-(id)classTag;
-(BOOL)isMuted;
-(BOOL)playbackError;
-(float)playbackVolume;
-(BOOL)timerRequired;
-(BOOL)trackPlayer:(id)arg0 adIds:(id)arg1 targetLayer:(id)arg2 ;
-(void)updatePlaybackStatus;
-(void)playbackCompletionUpdate;
-(void)playbackCompletionUpdate:(BOOL)arg0 ;
-(NSUInteger)completionEventType:(CGFloat)arg0 ;
-(void)dispatchEventType:(NSUInteger)arg0 ;
-(void)dispatchEvent:(id)arg0 ;
-(void)destroy;
-(void)startCheckTimer;
-(BOOL)updateDuration;
-(void)updateAndCheckPlayheadAndVolume;
-(void)updatePlayheadAndVolume;
-(void)checkPlaybackChanges;
-(void)dispatchEventThreadSafe:(id)arg0 ;
+(id)trackerWithPartnerCode:(id)arg0 ;
+(id)classTag;
+(id)oneTimeEvents;


@end


#endif