// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TRPLACEMENT_H
#define TRPLACEMENT_H


#import <Foundation/Foundation.h>


@interface TRPlacement : NSObject

@property (copy, nonatomic) NSString *placementIdentifier; // ivar: _placementIdentifier
@property (copy, nonatomic) NSString *currencyName; // ivar: _currencyName
@property (copy, nonatomic) NSString *placementErrorMessage; // ivar: _placementErrorMessage
@property (nonatomic) BOOL isSurveyWallAvailable; // ivar: _isSurveyWallAvailable
@property (nonatomic) BOOL hasHotSurvey; // ivar: _hasHotSurvey
@property (nonatomic) NSInteger placementCode; // ivar: _placementCode
@property (nonatomic) NSInteger maxPayoutInCurrency; // ivar: _maxPayoutInCurrency
@property (nonatomic) NSInteger minPayoutInCurrency; // ivar: _minPayoutInCurrency
@property (nonatomic) NSInteger maxSurveyLength; // ivar: _maxSurveyLength
@property (nonatomic) NSInteger minSurveyLength; // ivar: _minSurveyLength


-(id)initWithOffer:(id)arg0 ;
-(id)initWithComment:(id)arg0 identifier:(id)arg1 ;
-(id)initWithComment:(id)arg0 identifier:(id)arg1 placementCode:(NSInteger)arg2 ;
-(void)showSurveyWallWithDelegate:(id)arg0 ;


@end


#endif