// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol GADMRewardBasedVideoAdNetworkAdapter


-(id)initWithRewardBasedVideoAdNetworkConnector:(id)arg0 ;
-(void)setUp;
-(void)requestRewardBasedVideoAd;
-(void)presentRewardBasedVideoAdWithRootViewController:(id)arg0 ;
-(void)stopBeingDelegate;
+(id)adapterVersion;
+(Class)networkExtrasClass;

@optional
-(id)initWithRewardBasedVideoAdNetworkConnector:(id)arg0 credentials:(id)arg1 ;
-(id)initWithGADMAdNetworkConnector:(id)arg0 ;
-(void)setUpWithUserID:(id)arg0 ;
@end

