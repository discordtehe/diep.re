// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADINAPPPURCHASETRANSACTIONREPORTER_H
#define GADINAPPPURCHASETRANSACTIONREPORTER_H


#import <Foundation/Foundation.h>

@protocol SKPaymentTransactionObserver;

@interface GADInAppPurchaseTransactionReporter : NSObject <SKPaymentTransactionObserver>

 {
    BOOL _reportingEnabled;
    BOOL _wasDisabled;
}


@property (readonly, nonatomic) BOOL shouldBeEnabled;
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)dealloc;
-(void)enableReporting;
-(void)disableReporting;
-(void)reportTransactionInformationArray:(id)arg0 ;
-(void)paymentQueue:(id)arg0 updatedTransactions:(id)arg1 ;
+(id)sharedInstance;


@end


#endif