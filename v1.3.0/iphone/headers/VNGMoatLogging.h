// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VNGMOATLOGGING_H
#define VNGMOATLOGGING_H


#import <Foundation/Foundation.h>


@interface VNGMoatLogging : NSObject



+(void)initialize;
+(void)setLoggingType:(NSUInteger)arg0 ;
+(void)setSamplingRate:(NSInteger)arg0 ;
+(void)reportDevLogWithObject:(id)arg0 format:(id)arg1 ;
+(void)reportDevLogWithClass:(Class)arg0 format:(id)arg1 ;
+(void)reportDevLogWithClassTag:(id)arg0 format:(id)arg1 ;
+(void)reportClientLog:(NSUInteger)arg0 format:(id)arg1 ;
+(void)reportClientLog:(NSUInteger)arg0 trackerID:(id)arg1 format:(id)arg2 ;
+(void)reportClientLog:(NSUInteger)arg0 trackerID:(id)arg1 format:(id)arg2 args:(char *)arg3 ;
+(void)reportLogWithTag:(id)arg0 format:(id)arg1 args:(char *)arg2 ;
+(void)reportRemoteLog:(id)arg0 args:(char *)arg1 ;
+(void)reportRemoteLog:(id)arg0 ;
+(id)remoteLoggingSession;


@end


#endif