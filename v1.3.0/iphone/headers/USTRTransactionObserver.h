// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef USTRTRANSACTIONOBSERVER_H
#define USTRTRANSACTIONOBSERVER_H


#import <Foundation/Foundation.h>

@protocol SKPaymentTransactionObserver;

@interface USTRTransactionObserver : NSObject <SKPaymentTransactionObserver>



@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)paymentQueue:(id)arg0 updatedTransactions:(id)arg1 ;


@end


#endif