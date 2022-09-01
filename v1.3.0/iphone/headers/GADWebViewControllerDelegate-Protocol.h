// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol GADWebViewControllerDelegate


-(void)webViewControllerDidStartLoad:(id)arg0 ;
-(void)webViewControllerDidFinishLoad:(id)arg0 ;
-(void)webViewController:(id)arg0 didFailLoadWithError:(id)arg1 ;
-(void)webViewControllerWebContentProcessDidTerminate:(id)arg0 ;

@optional
-(BOOL)webViewController:(id)arg0 shouldStartLoadWithRequest:(id)arg1 navigationType:(NSInteger)arg2 ;
-(void)webViewController:(id)arg0 runJavaScriptAlertPanelWithTitle:(id)arg1 message:(id)arg2 completionHandler:(id)arg3 ;
-(void)webViewController:(id)arg0 runJavaScriptConfirmPanelWithTitle:(id)arg1 message:(id)arg2 completionHandler:(id)arg3 ;
-(void)webViewController:(id)arg0 runJavaScriptTextInputPanelWithTitle:(id)arg1 defaultText:(id)arg2 prompt:(id)arg3 completionHandler:(id)arg4 ;
@end

