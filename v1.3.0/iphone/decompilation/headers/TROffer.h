// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TROFFER_H
#define TROFFER_H


#import <Foundation/Foundation.h>

@protocol NSCoding;

@interface TROffer : NSObject <NSCoding>



@property (copy, nonatomic) NSString *offerURL; // ivar: _offerURL
@property (copy, nonatomic) NSString *abandonURL; // ivar: _abandonURL
@property (copy, nonatomic) NSString *reasonComment; // ivar: _reasonComment
@property (copy, nonatomic) NSString *offerIdentifier; // ivar: _offerIdentifier
@property (copy, nonatomic) NSString *currencyName; // ivar: _currencyName
@property (nonatomic) BOOL isSurveyWallAvailable; // ivar: _isSurveyWallAvailable
@property (nonatomic) BOOL hasHotSurvey; // ivar: _hasHotSurvey
@property (nonatomic) NSInteger offerReason; // ivar: _offerReason
@property (nonatomic) NSInteger minSurveyLength; // ivar: _minSurveyLength
@property (nonatomic) NSInteger maxSurveyLength; // ivar: _maxSurveyLength
@property (nonatomic) NSInteger maxPayoutInCurrency; // ivar: _maxPayoutInCurrency
@property (nonatomic) NSInteger minPayoutInCurrency; // ivar: _minPayoutInCurrency


-(id)init;
-(id)initWithTROfferDictionary:(id)arg0 ;
-(id)initWithCoder:(id)arg0 ;
-(void)encodeWithCoder:(id)arg0 ;


@end


#endif