// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol VungleSDKDelegate



@optional
-(void)vungleAdPlayabilityUpdate:(BOOL)arg0 placementID:(id)arg1 error:(id)arg2 ;
-(void)vungleAdPlayabilityUpdate:(BOOL)arg0 placementID:(id)arg1 ;
-(void)vungleWillShowAdForPlacementID:(id)arg0 ;
-(void)vungleDidShowAdForPlacementID:(id)arg0 ;
-(void)vungleWillCloseAdWithViewInfo:(id)arg0 placementID:(id)arg1 ;
-(void)vungleSDKwillCloseAdWithViewInfo:(id)arg0 willPresentProductSheet:(BOOL)arg1 ;
-(void)vungleSDKwillCloseProductSheet:(id)arg0 ;
-(void)vungleDidCloseAdWithViewInfo:(id)arg0 placementID:(id)arg1 ;
-(void)vungleSDKDidInitialize;
-(void)vungleSDKFailedToInitializeWithError:(id)arg0 ;
@end

