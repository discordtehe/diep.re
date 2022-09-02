// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol GADMAdNetworkAdapter


-(id)initWithGADMAdNetworkConnector:(id)arg0 ;
-(void)getBannerWithSize:(struct GADAdSize )arg0 ;
-(void)getInterstitial;
-(void)stopBeingDelegate;
-(void)presentInterstitialFromRootViewController:(id)arg0 ;
+(id)adapterVersion;
+(Class)networkExtrasClass;

@optional
-(void)getNativeAdWithAdTypes:(id)arg0 options:(id)arg1 ;
-(BOOL)handlesUserClicks;
-(BOOL)handlesUserImpressions;
-(void)changeAdSizeTo:(struct GADAdSize )arg0 ;
@end

