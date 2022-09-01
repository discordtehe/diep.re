// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPRATELIMITMANAGER_H
#define MPRATELIMITMANAGER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface MPRateLimitManager : NSObject

@property (retain, nonatomic) NSMutableDictionary *configurationDictionary; // ivar: _configurationDictionary


-(id)init;
-(void)setRateLimitTimerWithAdUnitId:(id)arg0 milliseconds:(NSInteger)arg1 reason:(id)arg2 ;
-(BOOL)isRateLimitedForAdUnitId:(id)arg0 ;
-(NSUInteger)lastRateLimitMillisecondsForAdUnitId:(id)arg0 ;
-(id)lastRateLimitReasonForAdUnitId:(id)arg0 ;
+(id)sharedInstance;


@end


#endif