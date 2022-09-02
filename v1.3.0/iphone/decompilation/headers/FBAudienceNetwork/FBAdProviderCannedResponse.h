// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADPROVIDERCANNEDRESPONSE_H
#define FBADPROVIDERCANNEDRESPONSE_H



@class FBAdProviderResponseAds;
@class FBAdPlacement;

@interface FBAdProviderCannedResponse : FBAdProviderResponseAds

@property (retain, nonatomic) FBAdPlacement *cannedPlacement; // ivar: _cannedPlacement


-(id)initWithResponse:(id)arg0 forAdAtIndex:(NSInteger)arg1 ;
-(id)adPlacement;


@end


#endif