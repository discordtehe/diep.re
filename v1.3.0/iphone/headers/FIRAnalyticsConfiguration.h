// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FIRANALYTICSCONFIGURATION_H
#define FIRANALYTICSCONFIGURATION_H


#import <Foundation/Foundation.h>


@interface FIRAnalyticsConfiguration : NSObject



-(void)postNotificationName:(id)arg0 value:(id)arg1 ;
-(void)setAnalyticsCollectionEnabled:(BOOL)arg0 ;
-(void)setAnalyticsCollectionEnabled:(BOOL)arg0 persistSetting:(BOOL)arg1 ;
+(id)sharedInstance;


@end


#endif