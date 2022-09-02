// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef UPURTRANSACTIONDETAILSBUILDER_H
#define UPURTRANSACTIONDETAILSBUILDER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface UPURTransactionDetailsBuilder : NSObject

@property (retain, nonatomic) NSString *productId; // ivar: _productId
@property (retain, nonatomic) NSString *transactionId; // ivar: _transactionId
@property (retain, nonatomic) NSString *receipt; // ivar: _receipt
@property (retain, nonatomic) NSDecimalNumber *price; // ivar: _price
@property (retain, nonatomic) NSString *currency; // ivar: _currency
@property (retain, nonatomic) NSMutableDictionary *extras; // ivar: _extras


-(id)init;
-(id)putExtra:(id)arg0 value:(id)arg1 ;


@end


#endif