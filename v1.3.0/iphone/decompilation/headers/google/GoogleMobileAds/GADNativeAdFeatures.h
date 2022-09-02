// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADNATIVEADFEATURES_H
#define GADNATIVEADFEATURES_H


#import <Foundation/Foundation.h>


@interface GADNativeAdFeatures : NSObject

@property (readonly, nonatomic) BOOL publisherClickReportingAllowed; // ivar: _publisherClickReportingAllowed
@property (readonly, nonatomic) BOOL publisherTouchReportingAllowed; // ivar: _publisherTouchReportingAllowed
@property (readonly, nonatomic) BOOL publisherImpressionReportingAllowed; // ivar: _publisherImpressionReportingAllowed
@property (readonly, nonatomic) BOOL publisherRenderAdChoicesAllowed; // ivar: _publisherRenderAdChoicesAllowed
@property (readonly, nonatomic) BOOL publisherOwnedAdViewAllowed; // ivar: _publisherOwnedAdViewAllowed
@property (readonly, nonatomic) BOOL customOnePointFiveClickWhitelisted; // ivar: _customOnePointFiveClickWhitelisted
@property (readonly, nonatomic) BOOL customClickGestureAllowed; // ivar: _customClickGestureAllowed


-(id)initWithAdConfiguration:(id)arg0 ;


@end


#endif