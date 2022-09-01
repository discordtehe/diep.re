// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPVASTCREATIVE_H
#define MPVASTCREATIVE_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class MPVASTModel;
@class MPVASTLinearAd;

@interface MPVASTCreative : MPVASTModel

@property (readonly, copy, nonatomic) NSString *identifier; // ivar: _identifier
@property (readonly, copy, nonatomic) NSString *sequence; // ivar: _sequence
@property (readonly, copy, nonatomic) NSString *adID; // ivar: _adID
@property (readonly, nonatomic) MPVASTLinearAd *linearAd; // ivar: _linearAd
@property (readonly, nonatomic) NSArray *companionAds; // ivar: _companionAds


+(id)modelMap;


@end


#endif