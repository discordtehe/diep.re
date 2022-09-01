// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADREQUESTCONFIGURATION_H
#define GADREQUESTCONFIGURATION_H


#import <Foundation/Foundation.h>


@interface GADRequestConfiguration : NSObject

@property (copy, nonatomic) NSNumber *underAgeOfConsent; // ivar: _underAgeOfConsent
@property (copy, nonatomic) NSNumber *tagForChildDirectedTreatment; // ivar: _tagForChildDirectedTreatment
@property (copy, nonatomic) NSString *maxAdContentRating; // ivar: _maxAdContentRating


-(void)tagForUnderAgeOfConsent:(BOOL)arg0 ;
-(void)tagForChildDirectedTreatment:(BOOL)arg0 ;


@end


#endif