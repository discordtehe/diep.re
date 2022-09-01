// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol MPNativeAdAdapterDelegate


-(id)viewControllerForPresentingModalView;
-(void)nativeAdWillPresentModalForAdapter:(id)arg0 ;
-(void)nativeAdDidDismissModalForAdapter:(id)arg0 ;
-(void)nativeAdWillLeaveApplicationFromAdapter:(id)arg0 ;

@optional
-(void)nativeAdWillLogImpression:(id)arg0 ;
-(void)nativeAdDidClick:(id)arg0 ;
@end

