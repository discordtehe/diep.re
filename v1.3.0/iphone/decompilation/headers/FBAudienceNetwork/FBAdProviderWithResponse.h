// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADPROVIDERWITHRESPONSE_H
#define FBADPROVIDERWITHRESPONSE_H



@class FBAdProvider;
@class FBAdProviderResponseAds;

@interface FBAdProviderWithResponse : FBAdProvider

@property (retain, nonatomic) FBAdProviderResponseAds *response; // ivar: _response


-(id)init;
-(id)initWithResponse:(id)arg0 forAdAtIndex:(NSInteger)arg1 ;
-(void)loadAdWithEnvironmentData:(id)arg0 ;


@end


#endif