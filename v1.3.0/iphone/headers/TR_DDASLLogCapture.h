// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TR_DDASLLOGCAPTURE_H
#define TR_DDASLLOGCAPTURE_H


#import <Foundation/Foundation.h>


@interface TR_DDASLLogCapture : NSObject



+(void)initialize;
+(void)start;
+(void)stop;
+(NSUInteger)captureLevel;
+(void)setCaptureLevel:(NSUInteger)arg0 ;
+(void)configureAslQuery:(struct __asl_object_s *)arg0 ;
+(void)aslMessageReceived:(struct __asl_object_s *)arg0 ;
+(void)captureAslLogs;


@end


#endif