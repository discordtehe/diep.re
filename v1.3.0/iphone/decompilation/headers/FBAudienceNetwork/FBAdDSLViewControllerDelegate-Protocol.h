// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol FBAdDSLViewControllerDelegate


-(void)dynamicAdViewControllerDidLoad;
-(void)dynamicAdViewControllerDidFailWithError:(id)arg0 ;
-(void)assetForURL:(id)arg0 type:(NSUInteger)arg1 block:(id)arg2 ;
-(void)CTATappedFromController:(id)arg0 ;
-(void)reportFlowStartedFromController:(id)arg0 ;
-(void)closeButtonTappedFromController:(id)arg0 ;
-(void)didReceivedLogEventFromController:(id)arg0 withData:(id)arg1 ;
-(void)didReceiveErrorFromController:(id)arg0 withData:(id)arg1 ;
-(void)didReceivedDebugEventFromController:(id)arg0 withData:(id)arg1 ;

@end

