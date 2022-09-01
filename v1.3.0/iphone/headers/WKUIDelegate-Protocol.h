// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol WKUIDelegate



@optional
-(id)webView:(id)arg0 createWebViewWithConfiguration:(id)arg1 forNavigationAction:(id)arg2 windowFeatures:(id)arg3 ;
-(void)webViewDidClose:(id)arg0 ;
-(void)webView:(id)arg0 runJavaScriptAlertPanelWithMessage:(id)arg1 initiatedByFrame:(id)arg2 completionHandler:(id)arg3 ;
-(void)webView:(id)arg0 runJavaScriptConfirmPanelWithMessage:(id)arg1 initiatedByFrame:(id)arg2 completionHandler:(id)arg3 ;
-(void)webView:(id)arg0 runJavaScriptTextInputPanelWithPrompt:(id)arg1 defaultText:(id)arg2 initiatedByFrame:(id)arg3 completionHandler:(id)arg4 ;
-(BOOL)webView:(id)arg0 shouldPreviewElement:(id)arg1 ;
-(id)webView:(id)arg0 previewingViewControllerForElement:(id)arg1 defaultActions:(id)arg2 ;
-(void)webView:(id)arg0 commitPreviewingViewController:(id)arg1 ;
@end

