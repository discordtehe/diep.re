// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol UnityRouterDelegate


-(void)unityAdsReady:(id)arg0 ;
-(void)unityAdsDidError:(NSInteger)arg0 withMessage:(id)arg1 ;
-(void)unityAdsDidStart:(id)arg0 ;
-(void)unityAdsDidFinish:(id)arg0 withFinishState:(NSInteger)arg1 ;
-(void)unityAdsDidClick:(id)arg0 ;
-(void)unityAdsDidFailWithError:(id)arg0 ;

@optional
-(void)unityAdsPlacementStateChanged:(id)arg0 oldState:(NSInteger)arg1 newState:(NSInteger)arg2 ;
@end

