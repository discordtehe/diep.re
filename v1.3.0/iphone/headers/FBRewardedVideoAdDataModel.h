// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBREWARDEDVIDEOADDATAMODEL_H
#define FBREWARDEDVIDEOADDATAMODEL_H


#import <Foundation/Foundation.h>

@class FBNativeAdDataModel;

@interface FBRewardedVideoAdDataModel : FBNativeAdDataModel

@property (readonly, copy, nonatomic) NSString *activationCommand; // ivar: _activationCommand
@property (readonly, nonatomic) ? duration; // ivar: _duration
@property (readonly, nonatomic) BOOL isPlayableAd;
@property (readonly, copy, nonatomic) NSString *destinationTitle; // ivar: _destinationTitle
@property (readonly, nonatomic, getter=isValid) BOOL valid;


-(id)initWithMetadata:(id)arg0 ;
-(id)initWithMetadata:(id)arg0 placementType:(NSInteger)arg1 ;
+(void)initialize;


@end


#endif