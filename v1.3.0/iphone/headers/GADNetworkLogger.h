// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADNETWORKLOGGER_H
#define GADNETWORKLOGGER_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>

@class GADObserverCollection;

@interface GADNetworkLogger : NSObject {
    GADObserverCollection *_observers;
    NSObject<OS_dispatch_queue> *_logQueue;
    NSInteger _maxLineLength;
    NSString *_initialMessage;
    NSString *_logPrefix;
    NSString *_finalMessage;
}




-(id)init;
-(void)observeEvent:(id)arg0 withBlock:(id)arg1 ;
-(void)logMessage:(id)arg0 ;
-(void)logEvent:(id)arg0 context:(id)arg1 userInfo:(id)arg2 ;
+(id)sharedInstance;


@end


#endif