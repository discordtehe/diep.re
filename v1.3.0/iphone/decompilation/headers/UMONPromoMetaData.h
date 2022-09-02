// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef UMONPROMOMETADATA_H
#define UMONPROMOMETADATA_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class UPURProduct;

@interface UMONPromoMetaData : NSObject

@property (nonatomic) CGFloat offerDuration; // ivar: _offerDuration
@property (retain) UPURProduct *premiumProduct; // ivar: _premiumProduct
@property (retain) NSArray *costs; // ivar: _costs
@property (retain) NSArray *payouts; // ivar: _payouts
@property (retain) NSDictionary *userInfo; // ivar: _userInfo
@property (retain, nonatomic) NSDate *impressionDate; // ivar: _impressionDate


-(id)initWithBuilder:(id)arg0 ;
-(BOOL)isExpired;
-(BOOL)isPremium;
-(CGFloat)timeRemaining;
-(id)cost;
-(id)payout;
+(id)build:(id)arg0 ;


@end


#endif