// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol SSABannerDelegate


-(void)ISNBannerInitSuccess;
-(void)ISNBannerInitFailedWithError:(id)arg0 ;
-(void)ISNBannerLoadSuccess;
-(void)ISNBannerLoadFailedWithError:(id)arg0 ;
-(void)ISNBannerAdClosed;
-(void)ISNBannerAdClicked;
-(void)ISNBannerWillPresentFullScreen;
-(void)ISNBannerAdDidReceiveNotificationOnEvent:(id)arg0 extData:(id)arg1 ;

@end

