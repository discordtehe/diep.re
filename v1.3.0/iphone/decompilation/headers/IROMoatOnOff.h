// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef IROMOATONOFF_H
#define IROMOATONOFF_H


#import <Foundation/Foundation.h>


@interface IROMoatOnOff : NSObject



+(NSUInteger)getDebug;
+(void)setDebug:(NSUInteger)arg0 ;
+(void)load;
+(void)initialize;
+(void)runStatusCheckInThread;
+(void)runEnablerCheck;
+(void)checkQueue;
+(void)resurrect;
+(void)processQueue:(id)arg0 withQueue:(id)arg1 ;
+(void)enqueueResurrection:(id)arg0 ;
+(NSUInteger)getStatus;
// +(void)onResurrectionDo:(id)arg0 withQueue:(unk)arg1 withKey:(id)arg2  ;
+(BOOL)isDevelopmentEnvironment;


@end


#endif