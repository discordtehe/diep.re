// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol ISOfferwallAdapterDelegate


-(void)adapterOfferwallHasChangedAvailability:(BOOL)arg0 ;
-(void)adapterOfferwallDidShow;
-(void)adapterOfferwallDidFailToShowWithError:(id)arg0 ;
-(void)adapterOfferwallDidClose;
-(BOOL)adapterOfferwallDidReceiveCredits:(id)arg0 ;
-(void)adapterOfferwallDidFailToReceiveCreditsWithError:(id)arg0 ;

@end

