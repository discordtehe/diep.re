// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FRPURCHASEREQUEST_H
#define FRPURCHASEREQUEST_H


#import <Foundation/Foundation.h>


@interface FRPurchaseRequest : NSObject

@property (retain) NSString *campaignId; // ivar: _campaignId
@property (retain) NSString *productId; // ivar: _productId


-(id)initWithDictionary:(id)arg0 ;
+(id)objectWithDictionary:(id)arg0 ;


@end


#endif