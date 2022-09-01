// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADJADJUSTFACTORY_H
#define ADJADJUSTFACTORY_H


#import <Foundation/Foundation.h>


@interface ADJAdjustFactory : NSObject



+(id)packageHandlerForActivityHandler:(id)arg0 startsSending:(BOOL)arg1 ;
+(id)requestHandlerForPackageHandler:(id)arg0 ;
+(id)activityHandlerWithConfig:(id)arg0 sessionParametersActionsArray:(id)arg1 deviceToken:(id)arg2 ;
+(id)logger;
+(CGFloat)sessionInterval;
+(CGFloat)subsessionInterval;
+(CGFloat)timerInterval;
+(CGFloat)timerStart;
+(id)packageHandlerBackoffStrategy;
+(id)sdkClickHandlerBackoffStrategy;
+(id)attributionHandlerForActivityHandler:(id)arg0 withAttributionPackage:(id)arg1 startsSending:(BOOL)arg2 ;
+(id)sdkClickHandlerWithStartsPaused:(id)arg0 startsSending:(BOOL)arg1 ;
+(BOOL)testing;
+(CGFloat)maxDelayStart;
+(void)setPackageHandler:(id)arg0 ;
+(void)setRequestHandler:(id)arg0 ;
+(void)setActivityHandler:(id)arg0 ;
+(void)setLogger:(id)arg0 ;
+(void)setSessionInterval:(CGFloat)arg0 ;
+(void)setSubsessionInterval:(CGFloat)arg0 ;
+(void)setTimerInterval:(CGFloat)arg0 ;
+(void)setTimerStart:(CGFloat)arg0 ;
+(void)setAttributionHandler:(id)arg0 ;
+(void)setSdkClickHandler:(id)arg0 ;
+(void)setPackageHandlerBackoffStrategy:(id)arg0 ;
+(void)setSdkClickHandlerBackoffStrategy:(id)arg0 ;
+(void)setTesting:(BOOL)arg0 ;
+(void)setMaxDelayStart:(CGFloat)arg0 ;
+(void)teardown;


@end


#endif