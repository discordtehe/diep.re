// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef UADSWEBPLAYERVIEW_H
#define UADSWEBPLAYERVIEW_H


#import <UIKit/UIKit.h>
#import <CoreFoundation/CoreFoundation.h>
#import <Foundation/Foundation.h>

@protocol UIWebViewDelegate;

@interface UADSWebPlayerView : UIView <UIWebViewDelegate>



@property (nonatomic) id *internalWebView; // ivar: _internalWebView
@property (retain, nonatomic) id *wkConfiguration; // ivar: _wkConfiguration
@property (retain, nonatomic) NSDictionary *webPlayerSettings; // ivar: _webPlayerSettings
@property (retain, nonatomic) NSDictionary *webPlayerEventSettings; // ivar: _webPlayerEventSettings
@property (retain, nonatomic) NSString *viewId; // ivar: _viewId
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithFrame:(struct CGRect )arg0 viewId:(id)arg1 webPlayerSettings:(id)arg2 ;
-(void)destroy;
-(void)setFrame:(struct CGRect )arg0 ;
-(void)loadUrl:(id)arg0 ;
-(void)loadData:(id)arg0 mimeType:(id)arg1 encoding:(id)arg2 ;
-(void)loadData:(id)arg0 mimeType:(id)arg1 encoding:(id)arg2 baseUrl:(id)arg3 ;
-(void)setEventSettings:(id)arg0 ;
-(void)receiveEvent:(id)arg0 ;
-(void)createInternalWebView;
-(void)createUIWebPlayer;
-(void)webViewDidStartLoad:(id)arg0 ;
-(void)webViewDidFinishLoad:(id)arg0 ;
-(void)webView:(id)arg0 didFailLoadWithError:(id)arg1 ;
-(BOOL)webView:(id)arg0 shouldStartLoadWithRequest:(id)arg1 navigationType:(NSInteger)arg2 ;
-(void)createWKWebPlayer;
-(void)webView:(id)arg0 didFinishNavigation:(id)arg1 ;
-(void)webView:(id)arg0 didStartProvisionalNavigation:(id)arg1 ;
-(void)webView:(id)arg0 didFailProvisionalNavigation:(id)arg1 withError:(id)arg2 ;
-(void)userContentController:(id)arg0 didReceiveScriptMessage:(id)arg1 ;
-(NSInteger)decideNavigationAction:(BOOL)arg0 ;
-(BOOL)isNavigationActionRequestInIFrame:(id)arg0 ;
-(void)webView:(id)arg0 decidePolicyForNavigationAction:(id)arg1 decisionHandler:(id)arg2 ;
-(id)webView:(id)arg0 createWebViewWithConfiguration:(id)arg1 forNavigationAction:(id)arg2 windowFeatures:(id)arg3 ;
-(BOOL)shouldSendEvent:(id)arg0 ;
-(BOOL)shouldProvideReturnValue:(id)arg0 ;
-(BOOL)boolValueForEventReturnValue:(id)arg0 ;
-(BOOL)shouldSetWebPlayerSetting:(NSInteger)arg0 ;
-(BOOL)boolValueForWebPlayerSetting:(NSInteger)arg0 ;
-(int)intValueForWebPlayerSetting:(NSInteger)arg0 ;


@end


#endif