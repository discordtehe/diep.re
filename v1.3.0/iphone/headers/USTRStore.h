// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef USTRSTORE_H
#define USTRSTORE_H


#import <Foundation/Foundation.h>


@interface USTRStore : NSObject



+(id)appSheet;
+(void)startTransactionObserver;
+(void)stopTransactionObserver;
+(void)requestProductInfos:(id)arg0 requestId:(id)arg1 ;
+(id)getReceipt;


@end


#endif