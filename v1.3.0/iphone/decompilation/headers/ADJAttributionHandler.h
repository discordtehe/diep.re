// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADJATTRIBUTIONHANDLER_H
#define ADJATTRIBUTIONHANDLER_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>

@class ADJTimerOnce;
@class ADJActivityPackage;
@protocol ADJAttributionHandler;
@protocol ADJActivityHandler;
@protocol ADJLogger;

@interface ADJAttributionHandler : NSObject <ADJAttributionHandler>



@property (retain, nonatomic) NSObject<OS_dispatch_queue> *internalQueue; // ivar: _internalQueue
@property (weak, nonatomic) NSObject<ADJActivityHandler> *activityHandler; // ivar: _activityHandler
@property (weak, nonatomic) NSObject<ADJLogger> *logger; // ivar: _logger
@property (retain, nonatomic) ADJTimerOnce *attributionTimer; // ivar: _attributionTimer
@property (retain, nonatomic) ADJActivityPackage *attributionPackage; // ivar: _attributionPackage
@property (nonatomic) BOOL paused; // ivar: _paused


-(id)initWithActivityHandler:(id)arg0 withAttributionPackage:(id)arg1 startsSending:(BOOL)arg2 ;
-(void)checkSessionResponse:(id)arg0 ;
-(void)checkSdkClickResponse:(id)arg0 ;
-(void)checkAttributionResponse:(id)arg0 ;
-(void)getAttribution;
-(void)pauseSending;
-(void)resumeSending;
-(void)checkSessionResponseI:(id)arg0 sessionResponseData:(id)arg1 ;
-(void)checkSdkClickResponseI:(id)arg0 sdkClickResponseData:(id)arg1 ;
-(void)checkAttributionResponseI:(id)arg0 attributionResponseData:(id)arg1 ;
-(void)checkAttributionI:(id)arg0 responseData:(id)arg1 ;
-(void)checkDeeplinkI:(id)arg0 attributionResponseData:(id)arg1 ;
-(void)requestAttributionI:(id)arg0 ;
-(void)waitRequestAttributionWithDelayI:(id)arg0 milliSecondsDelay:(int)arg1 ;
-(id)requestI:(id)arg0 ;
-(id)urlI:(id)arg0 ;
-(void)teardown;
+(id)handlerWithActivityHandler:(id)arg0 withAttributionPackage:(id)arg1 startsSending:(BOOL)arg2 ;


@end


#endif