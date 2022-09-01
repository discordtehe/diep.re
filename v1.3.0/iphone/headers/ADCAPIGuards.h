// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCAPIGUARDS_H
#define ADCAPIGUARDS_H


#import <Foundation/Foundation.h>

@class ADCRateLimiter;

@interface ADCAPIGuards : NSObject {
    BOOL _disabled;
}


@property (retain, nonatomic) ADCRateLimiter *limiter; // ivar: _limiter
@property (retain, nonatomic) NSString *minSupportedOS; // ivar: _minSupportedOS


-(id)init;
-(BOOL)adColonySupported;
-(BOOL)adColonyConfigured;
-(BOOL)canReconfigure;
-(void)enableAPIUsage;
-(void)disableAPIUsage;
-(BOOL)adColonyDisabled;
-(void)handleException:(id)arg0 ;
+(id)sharedGuards;


@end


#endif