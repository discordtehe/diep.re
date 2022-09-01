// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CLSDATACOLLECTIONARBITER_H
#define CLSDATACOLLECTIONARBITER_H


#import <Foundation/Foundation.h>


@interface CLSDataCollectionArbiter : NSObject



+(BOOL)isLegacyPlistCrashlyticsCollectionEnabled;
+(BOOL)isCrashlyticsCollectionEnabled;
+(void)setCrashlyticsCollectionEnabled:(BOOL)arg0 ;
+(NSInteger)stickySetting;


@end


#endif