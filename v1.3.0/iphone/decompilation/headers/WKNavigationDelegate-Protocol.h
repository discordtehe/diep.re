// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol WKNavigationDelegate



@optional
-(void)webView:(id)arg0 decidePolicyForNavigationAction:(id)arg1 decisionHandler:(id)arg2 ;
-(void)webView:(id)arg0 decidePolicyForNavigationResponse:(id)arg1 decisionHandler:(id)arg2 ;
-(void)webView:(id)arg0 didStartProvisionalNavigation:(id)arg1 ;
-(void)webView:(id)arg0 didReceiveServerRedirectForProvisionalNavigation:(id)arg1 ;
-(void)webView:(id)arg0 didFailProvisionalNavigation:(id)arg1 withError:(id)arg2 ;
-(void)webView:(id)arg0 didCommitNavigation:(id)arg1 ;
-(void)webView:(id)arg0 didFinishNavigation:(id)arg1 ;
-(void)webView:(id)arg0 didFailNavigation:(id)arg1 withError:(id)arg2 ;
-(void)webView:(id)arg0 didReceiveAuthenticationChallenge:(id)arg1 completionHandler:(id)arg2 ;
-(void)webViewWebContentProcessDidTerminate:(id)arg0 ;
@end

