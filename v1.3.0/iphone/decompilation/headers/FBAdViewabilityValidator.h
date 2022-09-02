// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADVIEWABILITYVALIDATOR_H
#define FBADVIEWABILITYVALIDATOR_H

@protocol FBAdViewabilityValidatorDelegate;

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <CoreFoundation/CoreFoundation.h>

@class FBAdTimer;

@interface FBAdViewabilityValidator : NSObject {
    recursive_mutex _historyLock;
}


@property (retain, nonatomic) FBAdTimer *checkViewabilityTimer; // ivar: _checkViewabilityTimer
@property (weak, nonatomic) UIView *view; // ivar: _view
@property (nonatomic, getter=isviewOnScreenNotificationFinished) BOOL viewOnScreenNotificationFinished; // ivar: _viewOnScreenNotificationFinished
@property (nonatomic, getter=isObservingNotifications) BOOL observingNotifications; // ivar: _observingNotifications
@property (nonatomic) NSInteger minViewabilityPercentage; // ivar: _minViewabilityPercentage
@property (nonatomic) NSInteger tickDuration; // ivar: _tickDuration
@property NSInteger currentTickCount; // ivar: _currentTickCount
@property (nonatomic) CGFloat initialDelay; // ivar: _initialDelay
@property (nonatomic) CGFloat checkInterval; // ivar: _checkInterval
@property NSInteger currentStatus; // ivar: _currentStatus
@property CGFloat lastViewabilityPercentage; // ivar: _lastViewabilityPercentage
@property (retain, nonatomic) NSMutableDictionary *viewabilityHistory; // ivar: _viewabilityHistory
@property (weak, nonatomic) NSObject<FBAdViewabilityValidatorDelegate> *delegate; // ivar: _delegate
@property (readonly, nonatomic, getter=isValid) BOOL valid;
@property (readonly, copy, nonatomic) NSString *viewabilityHistoryJSON;


-(id)initWithView:(id)arg0 withMinViewability:(NSInteger)arg1 shouldObserveNotifications:(BOOL)arg2 ;
-(id)initWithView:(id)arg0 withInterval:(CGFloat)arg1 withInitialDelay:(CGFloat)arg2 withMinViewability:(NSInteger)arg3 withTickDuration:(NSInteger)arg4 shouldObserveNotifications:(BOOL)arg5 ;
-(void)dealloc;
-(void)addHistoryEvent:(NSInteger)arg0 ;
-(id)logSuccess:(BOOL)arg0 withStatus:(NSInteger)arg1 withViewabilityPercentage:(CGFloat)arg2 ;
-(void)isViewOnScreenWithBlock:(id)arg0 ;
-(void)checkViewability;
-(void)updateCurrentStatus:(NSInteger)arg0 ;
-(void)sendViewNotification:(NSInteger)arg0 ;
-(void)scheduleViewabilityCheck;
-(void)scheduleViewabilityCheckWithInterval:(CGFloat)arg0 withInitialDelay:(CGFloat)arg1 ;
-(void)stopViewabilityCheck;
-(void)stopViewabilityCheckAndStopObservingNotifications:(BOOL)arg0 ;
-(void)invalidateTimer;
-(void)resumeTimer;
-(void)startObservingNotifications;
-(void)onApplicationBackgrounded;
-(void)onApplicationForegrounded;
-(void)stopObservingNotifications;
+(void)initialize;


@end


#endif