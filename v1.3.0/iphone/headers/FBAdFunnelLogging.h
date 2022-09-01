// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADFUNNELLOGGING_H
#define FBADFUNNELLOGGING_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface FBAdFunnelLogging : NSObject

@property (retain, nonatomic) NSMutableDictionary *funnelLoggersForToken; // ivar: _funnelLoggersForToken
@property (copy, nonatomic) NSDictionary *eventMatching; // ivar: _eventMatching


-(id)init;
-(id)funnelLoggerForToken:(id)arg0 ;
-(id)createFunnelLoggerForToken:(id)arg0 andEventList:(id)arg1 ;
-(void)logFunnelEventOfType:(id)arg0 withSubtype:(id)arg1 withToken:(id)arg2 withExtraData:(id)arg3 ;
-(void)logUXFunnelEventOfSubtype:(id)arg0 withToken:(id)arg1 withExtraData:(id)arg2 ;
-(void)logEventFunnelOfSubtype:(id)arg0 withToken:(id)arg1 withExtraData:(id)arg2 ;
-(id)uxFunnelDataWithEventType:(id)arg0 forToken:(id)arg1 ;
-(void)createLoggerAndLogAdRequestSuccessForAdCandidate:(id)arg0 withTime:(CGFloat)arg1 ;
-(id)funnelEventSubtypeForAdEvent:(id)arg0 ;
+(id)sharedFunnelLogger;


@end


#endif