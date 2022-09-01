// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef USTRAPIPRODUCTS_H
#define USTRAPIPRODUCTS_H


#import <Foundation/Foundation.h>


@interface USTRApiProducts : NSObject



+(void)WebViewExposed_requestProductInfos:(id)arg0 requestId:(id)arg1 callback:(id)arg2 ;
+(void)WebViewExposed_startTransactionObserver:(id)arg0 ;
+(void)WebViewExposed_stopTransactionObserver:(id)arg0 ;
+(void)WebViewExposed_getReceipt:(id)arg0 ;


@end


#endif