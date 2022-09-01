// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPADTARGETING_H
#define MPADTARGETING_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>
#import <CoreLocation/CoreLocation.h>


@interface MPAdTargeting : NSObject

@property (nonatomic) CGSize creativeSafeSize; // ivar: _creativeSafeSize
@property (copy, nonatomic) NSString *keywords; // ivar: _keywords
@property (copy, nonatomic) NSDictionary *localExtras; // ivar: _localExtras
@property (copy, nonatomic) CLLocation *location; // ivar: _location
@property (copy, nonatomic) NSString *userDataKeywords; // ivar: _userDataKeywords


-(id)initWithCreativeSafeSize:(struct CGSize )arg0 ;
+(id)targetingWithCreativeSafeSize:(struct CGSize )arg0 ;


@end


#endif