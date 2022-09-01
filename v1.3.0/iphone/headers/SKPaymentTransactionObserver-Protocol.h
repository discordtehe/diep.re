// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol SKPaymentTransactionObserver


-(void)paymentQueue:(id)arg0 updatedTransactions:(id)arg1 ;

@optional
-(void)paymentQueue:(id)arg0 removedTransactions:(id)arg1 ;
-(void)paymentQueue:(id)arg0 restoreCompletedTransactionsFailedWithError:(id)arg1 ;
-(void)paymentQueueRestoreCompletedTransactionsFinished:(id)arg0 ;
-(void)paymentQueue:(id)arg0 updatedDownloads:(id)arg1 ;
-(BOOL)paymentQueue:(id)arg0 shouldAddStorePayment:(id)arg1 forProduct:(id)arg2 ;
@end

