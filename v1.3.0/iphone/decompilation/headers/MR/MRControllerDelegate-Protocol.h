// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol MRControllerDelegate


-(id)adUnitId;
-(id)adConfiguration;
-(id)location;
-(id)viewControllerForPresentingModalView;
-(void)appShouldSuspendForAd:(id)arg0 ;
-(void)appShouldResumeFromAd:(id)arg0 ;

@optional
-(void)adDidLoad:(id)arg0 ;
-(void)adDidFailToLoad:(id)arg0 ;
-(void)adWillClose:(id)arg0 ;
-(void)adDidClose:(id)arg0 ;
-(void)rewardedVideoEnded;
-(void)adWillExpand:(id)arg0 ;
-(void)adDidCollapse:(id)arg0 ;
@end

