// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol FBAdViewDelegate

@property (readonly, nonatomic) UIViewController *viewControllerForPresentingModalView;


@optional
-(void)adViewDidClick:(id)arg0 ;
-(void)adViewDidFinishHandlingClick:(id)arg0 ;
-(void)adViewDidLoad:(id)arg0 ;
-(void)adView:(id)arg0 didFailWithError:(id)arg1 ;
-(void)adViewWillLogImpression:(id)arg0 ;
-(id)viewControllerForPresentingModalView;
@end

