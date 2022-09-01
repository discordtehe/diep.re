// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef APMINAPPPURCHASETRANSACTIONREPORTER_H
#define APMINAPPPURCHASETRANSACTIONREPORTER_H


#import <Foundation/Foundation.h>


@interface APMInAppPurchaseTransactionReporter : NSObject



-(void)reportTransactionsFromArray:(id)arg0 ;
-(void)paymentQueue:(id)arg0 updatedFilteredTransactions:(id)arg1 ;
+(id)sharedInstance;
+(id)transactionFingerprint:(id)arg0 ;


@end


#endif