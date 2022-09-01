// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADURLSESSION_H
#define GADURLSESSION_H


#import <Foundation/Foundation.h>

@class GADURLSessionTransactionMonitor;

@interface GADURLSession : NSObject {
    NSURLSession *_session;
    GADURLSessionTransactionMonitor *_taskMonitor;
    BOOL _valid;
    NSOperationQueue *_lockQueue;
}




-(id)initWithConfiguration:(id)arg0 ;
-(id)init;
-(void)dealloc;
-(void)sendRequest:(id)arg0 withContext:(id)arg1 notificationPolicy:(NSInteger)arg2 completionHandler:(id)arg3 ;
-(void)invalidateAndCancel;


@end


#endif