// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol ISBannerAdapterDelegate


-(void)adapterBannerInitSuccess;
-(void)adapterBannerInitFailedWithError:(id)arg0 ;
-(void)adapterBannerDidLoad:(id)arg0 ;
-(void)adapterBannerDidFailToLoadWithError:(id)arg0 ;
-(void)adapterBannerDidClick;
-(void)adapterBannerWillPresentScreen;
-(void)adapterBannerDidDismissScreen;
-(void)adapterBannerWillLeaveApplication;

@end

