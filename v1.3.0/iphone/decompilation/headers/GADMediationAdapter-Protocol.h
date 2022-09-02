// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol GADMediationAdapter


+(struct ? )version;
+(struct ? )adSDKVersion;
+(Class)networkExtrasClass;

@optional
-(void)loadBannerForAdConfiguration:(id)arg0 completionHandler:(id)arg1 ;
-(void)loadInterstitialForAdConfiguration:(id)arg0 completionHandler:(id)arg1 ;
-(void)loadNativeAdForAdConfiguration:(id)arg0 completionHandler:(id)arg1 ;
-(void)loadRewardedAdForAdConfiguration:(id)arg0 completionHandler:(id)arg1 ;
+(void)setUpWithConfiguration:(id)arg0 completionHandler:(id)arg1 ;
+(void)setUp;
+(void)updateConfiguration:(id)arg0 ;
@end

