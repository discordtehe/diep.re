// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADDEFAULTINAPPPURCHASE_H
#define GADDEFAULTINAPPPURCHASE_H

@class SKPaymentTransaction;

#import <Foundation/Foundation.h>


@interface GADDefaultInAppPurchase : NSObject

@property (readonly, copy, nonatomic) NSString *productID; // ivar: _productID
@property (readonly, nonatomic) NSInteger quantity; // ivar: _quantity
@property (readonly, nonatomic) SKPaymentTransaction *paymentTransaction; // ivar: _paymentTransaction


-(void)finishTransaction;
+(void)enableDefaultPurchaseFlowWithDelegate:(id)arg0 ;
+(void)disableDefaultPurchaseFlow;


@end


#endif