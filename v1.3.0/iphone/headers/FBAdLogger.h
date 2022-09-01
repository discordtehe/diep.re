// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADLOGGER_H
#define FBADLOGGER_H


#import <Foundation/Foundation.h>


@interface FBAdLogger : NSObject



+(void)initialize;
+(void)logAtLevel:(int)arg0 file:(char *)arg1 lineNumber:(int)arg2 format:(id)arg3 ;
+(void)logInTestModeWithFile:(char *)arg0 lineNumber:(int)arg1 format:(id)arg2 ;


@end


#endif