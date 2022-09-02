// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADURLSESSIONTRANSACTIONMONITOR_H
#define GADURLSESSIONTRANSACTIONMONITOR_H

@protocol OS_dispatch_group;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol NSURLSessionDataDelegate;

@interface GADURLSessionTransactionMonitor : NSObject <NSURLSessionDataDelegate>

 {
    NSMutableDictionary *_transactionsByTask;
    NSObject<OS_dispatch_group> *_completionGroup;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(void)dealloc;
-(void)waitForTransactionsWithCompletion:(id)arg0 ;
-(void)addTransaction:(id)arg0 forTask:(id)arg1 ;
-(void)removeTask:(id)arg0 ;
-(void)invalidateAllTasksWithError:(id)arg0 ;
-(void)URLSession:(id)arg0 didBecomeInvalidWithError:(id)arg1 ;
-(void)URLSession:(id)arg0 task:(id)arg1 willPerformHTTPRedirection:(id)arg2 newRequest:(id)arg3 completionHandler:(id)arg4 ;
-(void)URLSession:(id)arg0 task:(id)arg1 didCompleteWithError:(id)arg2 ;
-(void)URLSession:(id)arg0 dataTask:(id)arg1 didReceiveResponse:(id)arg2 completionHandler:(id)arg3 ;
-(void)URLSession:(id)arg0 dataTask:(id)arg1 didReceiveData:(id)arg2 ;


@end


#endif