// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol SSWVWebViewDelegate


-(void)loadSuccessfully:(id)arg0 ;
-(void)failedToLoadWithError:(id)arg0 webView:(id)arg1 ;

@optional
-(BOOL)shouldLoadRequestForWebview:(id)arg0 request:(id)arg1 navigationType:(NSInteger)arg2 ;
@end

