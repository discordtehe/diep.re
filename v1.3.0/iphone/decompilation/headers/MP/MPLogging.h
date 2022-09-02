// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPLOGGING_H
#define MPLOGGING_H


#import <Foundation/Foundation.h>


@interface MPLogging : NSObject



+(NSUInteger)consoleLogLevel;
+(void)setConsoleLogLevel:(NSUInteger)arg0 ;
+(void)addLogger:(id)arg0 ;
+(void)removeLogger:(id)arg0 ;
+(void)logEvent:(id)arg0 source:(id)arg1 fromClass:(Class)arg2 ;


@end


#endif