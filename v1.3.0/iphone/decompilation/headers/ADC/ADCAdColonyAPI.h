// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCADCOLONYAPI_H
#define ADCADCOLONYAPI_H


#import <Foundation/Foundation.h>


@interface ADCAdColonyAPI : NSObject



+(id)getAppInfo;
+(void)controllerVersion:(id)arg0 ;
+(void)V4VCRewardForZoneID:(id)arg0 amount:(int)arg1 name:(id)arg2 success:(BOOL)arg3 ;
+(id)zoneInfoForZoneID:(id)arg0 rewardInfo:(id)arg1 zoneType:(NSUInteger)arg2 status:(NSUInteger)arg3 appSessionID:(id)arg4 rewarded:(BOOL)arg5 playInterval:(NSUInteger)arg6 ;
+(id)updateZoneInfoForZoneID:(id)arg0 rewardInfo:(id)arg1 zoneType:(NSUInteger)arg2 status:(NSUInteger)arg3 appSessionID:(id)arg4 rewarded:(BOOL)arg5 playInterval:(NSUInteger)arg6 ;
+(void)disable;
+(void)probe;
+(void)onConfigError;


@end


#endif