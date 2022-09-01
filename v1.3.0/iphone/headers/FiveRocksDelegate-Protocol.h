// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol FiveRocksDelegate



@optional
-(void)didFailToReadyPlacementContent:(id)arg0 ;
-(void)didReadyPlacementContent:(id)arg0 ;
-(void)didShowPlacementContent:(id)arg0 ;
-(void)didClosePlacementContent:(id)arg0 ;
-(void)didClickPlacementContent:(id)arg0 ;
-(void)didClickPlacementContent:(id)arg0 purchaseRequestForProductId:(id)arg1 withCampaignId:(id)arg2 ;
-(void)didClickPlacementContent:(id)arg0 rewardRequestForRewardId:(id)arg1 name:(id)arg2 quantity:(NSUInteger)arg3 token:(id)arg4 ;
-(void)didClickPlacementContent:(id)arg0 redirectURL:(id)arg1 adContent:(id)arg2 ;
-(void)didDismissPlacementContent:(id)arg0 ;
-(void)didDismissPlacementContent:(id)arg0 purchaseRequestForProductId:(id)arg1 withCampaignId:(id)arg2 ;
-(void)didDismissPlacementContent:(id)arg0 rewardRequestForRewardId:(id)arg1 name:(id)arg2 quantity:(NSUInteger)arg3 token:(id)arg4 ;
@end

