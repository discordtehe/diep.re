// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CLSFCRANALYTICS_H
#define CLSFCRANALYTICS_H


#import <Foundation/Foundation.h>


@interface CLSFCRAnalytics : NSObject



+(void)logCrashWithTimeStamp:(CGFloat)arg0 firebaseCrashlyticsEnabled:(BOOL)arg1 ;
+(void)registerAnalyticsEventListener:(id)arg0 ;
+(id)buildLogParamsFromCrash:(CGFloat)arg0 ;


@end


#endif