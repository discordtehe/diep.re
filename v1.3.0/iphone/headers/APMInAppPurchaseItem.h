// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef APMINAPPPURCHASEITEM_H
#define APMINAPPPURCHASEITEM_H


#import <Foundation/Foundation.h>


@interface APMInAppPurchaseItem : NSObject

@property (nonatomic, getter=isFreeTrial) BOOL freeTrial; // ivar: _freeTrial
@property (nonatomic, getter=isIntroductoryOffer) BOOL introductoryOffer; // ivar: _introductoryOffer
@property (copy, nonatomic) NSString *subscriptionExpirationDateIA5String; // ivar: _subscriptionExpirationDateIA5String
@property (copy, nonatomic) NSString *productID; // ivar: _productID
@property (copy, nonatomic) NSString *originalTransactionID; // ivar: _originalTransactionID
@property (copy, nonatomic) NSString *transactionID; // ivar: _transactionID
@property (copy, nonatomic) NSNumber *purchaseType; // ivar: _purchaseType




@end


#endif