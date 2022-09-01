// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADCUSTOMEVENTREQUEST_H
#define GADCUSTOMEVENTREQUEST_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface GADCustomEventRequest : NSObject

@property (readonly, nonatomic) BOOL userHasLocation; // ivar: _userHasLocation
@property (readonly, nonatomic) CGFloat userLatitude; // ivar: _userLatitude
@property (readonly, nonatomic) CGFloat userLongitude; // ivar: _userLongitude
@property (readonly, nonatomic) CGFloat userLocationAccuracyInMeters; // ivar: _userLocationAccuracyInMeters
@property (readonly, copy, nonatomic) NSString *userLocationDescription; // ivar: _userLocationDescription
@property (readonly, copy, nonatomic) NSArray *userKeywords; // ivar: _userKeywords
@property (readonly, copy, nonatomic) NSDictionary *additionalParameters; // ivar: _additionalParameters
@property (readonly, nonatomic) BOOL isTesting; // ivar: _isTesting
@property (readonly, nonatomic) NSInteger userGender; // ivar: _userGender
@property (readonly, copy, nonatomic) NSDate *userBirthday; // ivar: _userBirthday


-(id)initWithTargeting:(id)arg0 locationEnabled:(BOOL)arg1 extrasLabel:(id)arg2 ;


@end


#endif