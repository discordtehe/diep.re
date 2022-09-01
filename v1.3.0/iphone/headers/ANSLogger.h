// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ANSLOGGER_H
#define ANSLOGGER_H


#import <Foundation/Foundation.h>


@interface ANSLogger : NSObject

@property (nonatomic) BOOL debugMode; // ivar: _debugMode


-(void)log:(id)arg0 ;
-(void)logWithLabel:(id)arg0 format:(id)arg1 ;
-(void)internalLog:(id)arg0 args:(char *)arg1 ;
+(id)sharedLogger;


@end


#endif