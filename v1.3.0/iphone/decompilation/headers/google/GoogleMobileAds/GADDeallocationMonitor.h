// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADDEALLOCATIONMONITOR_H
#define GADDEALLOCATIONMONITOR_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface GADDeallocationMonitor : NSObject {
    NSObject<OS_dispatch_queue> *_lockQueue;
    NSMutableArray *_completionBlocks;
}




-(id)initWithAssociatedObject:(id)arg0 completionHandler:(id)arg1 ;
-(void)dealloc;
-(void)addCompletionHandler:(id)arg0 ;


@end


#endif