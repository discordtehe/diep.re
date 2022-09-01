// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol GADCustomEventBanner

@property (weak, nonatomic) NSObject<GADCustomEventBannerDelegate> *delegate;

-(void)requestBannerAd:(struct GADAdSize )arg0 parameter:(id)arg1 label:(id)arg2 request:(id)arg3 ;
-(id)delegate;
-(void)setDelegate:(id)arg0 ;

@end

