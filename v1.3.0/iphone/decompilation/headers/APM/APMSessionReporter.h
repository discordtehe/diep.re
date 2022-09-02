// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef APMSESSIONREPORTER_H
#define APMSESSIONREPORTER_H


#import <Foundation/Foundation.h>

@class APMPersistedConfig;
@class APMAlarm;

@interface APMSessionReporter : NSObject {
    APMPersistedConfig *_persistedConfig;
    APMAlarm *_sessionStartTimer;
    APMAlarm *_userEngagementTimer;
    CGFloat _engagementStartUptime;
    CGFloat _freerideEngagementStartUptime;
}


@property (nonatomic, getter=isReportingEnabled) BOOL reportingEnabled; // ivar: _reportingEnabled
@property (nonatomic) CGFloat minimumSessionInterval; // ivar: _minimumSessionInterval
@property (nonatomic) CGFloat timeoutSessionInterval; // ivar: _timeoutSessionInterval
@property (readonly, nonatomic, getter=isSessionExpired) BOOL sessionExpired;


-(id)initWithPersistedConfig:(id)arg0 ;
-(void)dealloc;
-(BOOL)shouldStartNewSession;
-(BOOL)extendSession;
-(id)sessionIDPropertyWithTimestamp:(CGFloat)arg0 ;
-(id)sessionNumberProperty;
-(void)logSessionStartEvent;
-(void)logUserEngagementEvent;
-(void)logUserEngagementEventWithScreen:(id)arg0 isRedundant:(BOOL)arg1 ;
-(void)handleAppDidBecomeActive;
-(void)handleAppWillResignActiveWithScreen:(id)arg0 ;
-(void)handleScreenDidChangeFromScreen:(id)arg0 toScreen:(id)arg1 ;
-(void)rescheduleSessionStartTimer;
-(void)rescheduleUserEngagementTimer;
-(CGFloat)currentUptime;
-(CGFloat)currentClockTime;
-(CGFloat)incurredEngagementTime;
-(NSInteger)cutFreerideEngagementTimeMillis;
-(void)updatePropertiesForNewSessionStart;
-(void)setSessionID:(id)arg0 withSessionNumber:(id)arg1 ;


@end


#endif