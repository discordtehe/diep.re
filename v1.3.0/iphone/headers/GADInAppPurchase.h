// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADINAPPPURCHASE_H
#define GADINAPPPURCHASE_H


#import <Foundation/Foundation.h>


@interface GADInAppPurchase : NSObject

@property (readonly, copy, nonatomic) NSString *productID; // ivar: _productID
@property (readonly, nonatomic) NSInteger quantity; // ivar: _quantity


-(id)init;
-(void)reportPurchaseStatus:(NSInteger)arg0 ;


@end


#endif