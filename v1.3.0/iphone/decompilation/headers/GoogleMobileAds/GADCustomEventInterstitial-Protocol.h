// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol GADCustomEventInterstitial

@property (weak, nonatomic) NSObject<GADCustomEventInterstitialDelegate> *delegate;

-(void)requestInterstitialAdWithParameter:(id)arg0 label:(id)arg1 request:(id)arg2 ;
-(void)presentFromRootViewController:(id)arg0 ;
-(id)delegate;
-(void)setDelegate:(id)arg0 ;

@end

