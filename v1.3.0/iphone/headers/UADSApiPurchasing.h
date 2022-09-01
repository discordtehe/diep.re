// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef UADSAPIPURCHASING_H
#define UADSAPIPURCHASING_H


#import <Foundation/Foundation.h>


@interface UADSApiPurchasing : NSObject



+(id)getPurchasingDelegate;
+(void)setPurchasingDelegate:(id)arg0 ;
+(void)WebViewExposed_getPromoVersion:(id)arg0 ;
+(void)WebViewExposed_getPromoCatalog:(id)arg0 ;
+(void)WebViewExposed_initiatePurchasingCommand:(id)arg0 callback:(id)arg1 ;
+(void)WebViewExposed_initializePurchasing:(id)arg0 ;


@end


#endif