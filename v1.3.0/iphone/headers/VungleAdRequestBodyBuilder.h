// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VUNGLEADREQUESTBODYBUILDER_H
#define VUNGLEADREQUESTBODYBUILDER_H


#import <CoreFoundation/CoreFoundation.h>

@class VungleNetworkRequestBodyBuilder;

@interface VungleAdRequestBodyBuilder : VungleNetworkRequestBodyBuilder

@property (retain, nonatomic) NSArray *placements; // ivar: _placements
@property (nonatomic, getter=isHeaderBiddingEnabled) BOOL headerBiddingEnabled; // ivar: _headerBiddingEnabled


-(id)initWithPublisherInformation:(id)arg0 placements:(id)arg1 headerBiddingEnabled:(BOOL)arg2 ;
-(id)buildRequestParameters;


@end


#endif