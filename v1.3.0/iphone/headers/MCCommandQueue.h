// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCCOMMANDQUEUE_H
#define MCCOMMANDQUEUE_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol MCCommand;

@interface MCCommandQueue : NSObject {
    NSMutableArray *mQueue;
    id<MCCommand> *mCommandInExecution;
    BOOL mUpdateOn;
    BOOL mRunning;
    BOOL mRequestStop;
}




-(id)init;
-(void)dealloc;
-(void)enqueueCommand:(id)arg0 ;
-(void)enqueueCommands:(id)arg0 ;
-(void)run;
-(void)stop;
-(BOOL)isRunning;
-(void)processQueue;
-(void)update:(CGFloat)arg0 ;
-(BOOL)isExecutingCommand;
-(void)cleanQueuedCommands;


@end


#endif