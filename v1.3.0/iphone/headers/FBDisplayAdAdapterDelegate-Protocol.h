// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol FBDisplayAdAdapterDelegate


-(void)adapterDidClick:(id)arg0 url:(id)arg1 playerHandles:(BOOL)arg2 ;
-(void)adapterDidLoad:(id)arg0 ;
-(void)adapter:(id)arg0 didFailWithError:(id)arg1 ;
-(void)adapterWillLogImpression:(id)arg0 ;

@optional
-(void)adapterDidFinishHandlingClick:(id)arg0 ;
-(void)adapterWillUnload:(id)arg0 ;
-(void)adapterDidUnload:(id)arg0 ;
-(void)adapterVideoDidComplete:(id)arg0 ;
-(void)adapterServerRewardSuccess:(id)arg0 ;
-(void)adapterServerRewardFailed:(id)arg0 ;
@end

