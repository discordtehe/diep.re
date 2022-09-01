// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol SSAOfferWallDelegate



@optional
-(void)ssaOfferWallShowSuccess:(id)arg0 ;
-(void)ssaOfferWallShowFailedWithError:(id)arg0 ;
-(void)ssaInitOfferWallSuccess;
-(void)ssaInitOfferWallFailedWithError:(id)arg0 ;
-(void)ssaOfferWallDidClose;
-(BOOL)ssaOfferWallDidReceiveCredit:(id)arg0 ;
-(void)ssaOfferwallDidFailGettingCreditWithError:(id)arg0 ;
-(void)ssaOfferwallDidReceiveNotificationOnEvent:(id)arg0 extData:(id)arg1 ;
@end

