// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADBACKGROUNDTASKPINGER_H
#define GADBACKGROUNDTASKPINGER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class GADEventContext;

@interface GADBackgroundTaskPinger : NSObject {
    GADEventContext *_context;
    NSUInteger _backgroundTaskIdentifier;
    NSURL *_URL;
}




-(id)initWithURL:(id)arg0 eventContext:(id)arg1 ;
-(void)ping;
-(void)endBackgroundTask;


@end


#endif