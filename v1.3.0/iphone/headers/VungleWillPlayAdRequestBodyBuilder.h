// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VUNGLEWILLPLAYADREQUESTBODYBUILDER_H
#define VUNGLEWILLPLAYADREQUESTBODYBUILDER_H



@class VungleNetworkRequestBodyBuilder;
@class VunglePlacement;
@class VunglePlayOptionsProvider;

@interface VungleWillPlayAdRequestBodyBuilder : VungleNetworkRequestBodyBuilder

@property (copy, nonatomic) VunglePlacement *placement; // ivar: _placement
@property (copy, nonatomic) VunglePlayOptionsProvider *playOptions; // ivar: _playOptions


-(id)initWithPlacement:(id)arg0 publisherInformation:(id)arg1 playOptions:(id)arg2 ;
-(id)buildRequestParameters;


@end


#endif