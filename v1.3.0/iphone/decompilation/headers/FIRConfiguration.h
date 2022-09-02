// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FIRCONFIGURATION_H
#define FIRCONFIGURATION_H


#import <Foundation/Foundation.h>

@class FIRAnalyticsConfiguration;

@interface FIRConfiguration : NSObject

@property (retain, nonatomic) FIRAnalyticsConfiguration *analyticsConfiguration; // ivar: _analyticsConfiguration


-(id)init;
-(void)setLoggerLevel:(NSInteger)arg0 ;
+(id)sharedInstance;


@end


#endif