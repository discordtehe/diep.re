// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef UPURPRODUCT_H
#define UPURPRODUCT_H


#import <Foundation/Foundation.h>


@interface UPURProduct : NSObject

@property (retain, nonatomic) NSString *productId; // ivar: _productId
@property (retain, nonatomic) NSString *localizedPriceString; // ivar: _localizedPriceString
@property (retain, nonatomic) NSString *localizedTitle; // ivar: _localizedTitle
@property (retain, nonatomic) NSString *isoCurrencyCode; // ivar: _isoCurrencyCode
@property (retain, nonatomic) NSDecimalNumber *localizedPrice; // ivar: _localizedPrice
@property (retain, nonatomic) NSString *localizedDescription; // ivar: _localizedDescription
@property (retain, nonatomic) NSString *productType; // ivar: _productType


-(id)getProductJSONDictionary;
-(id)initWithBuilder:(id)arg0 ;
+(id)build:(id)arg0 ;


@end


#endif