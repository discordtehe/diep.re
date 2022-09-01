// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TJYMOATONOFF_H
#define TJYMOATONOFF_H


#import <Foundation/Foundation.h>


@interface TJYMoatOnOff : NSObject



+(BOOL)getDebug;
+(void)setDebug:(BOOL)arg0 ;
+(void)load;
+(void)initialize;
+(void)runEnablerLoop;
+(id)trim:(id)arg0 ;
+(void)checkQueue;
+(void)resurrect;
+(void)enqueueResurrection:(id)arg0 ;
+(NSUInteger)getStatus;
// +(void)onResurrectionDo:(id)arg0 withQueue:(unk)arg1 withKey:(id)arg2  ;


@end


#endif