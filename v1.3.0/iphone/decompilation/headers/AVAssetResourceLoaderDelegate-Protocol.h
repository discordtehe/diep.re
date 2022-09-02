// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol AVAssetResourceLoaderDelegate



@optional
-(BOOL)resourceLoader:(id)arg0 shouldWaitForLoadingOfRequestedResource:(id)arg1 ;
-(BOOL)resourceLoader:(id)arg0 shouldWaitForRenewalOfRequestedResource:(id)arg1 ;
-(void)resourceLoader:(id)arg0 didCancelLoadingRequest:(id)arg1 ;
-(BOOL)resourceLoader:(id)arg0 shouldWaitForResponseToAuthenticationChallenge:(id)arg1 ;
-(void)resourceLoader:(id)arg0 didCancelAuthenticationChallenge:(id)arg1 ;
@end

