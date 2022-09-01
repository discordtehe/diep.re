// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADINITSETTINGS_H
#define FBADINITSETTINGS_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface FBAdInitSettings : NSObject

@property (copy, nonatomic) NSArray *placementIDs; // ivar: _placementIDs
@property (copy, nonatomic) NSString *mediation; // ivar: _mediation
@property (readonly, copy, nonatomic) NSString *mediationService; // ivar: _mediationService


-(id)initWithPlacementIDs:(id)arg0 mediationService:(id)arg1 ;
+(void)initialize;


@end


#endif