// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADDSLFULLSCREENADVIEWCONTROLLER_H
#define FBADDSLFULLSCREENADVIEWCONTROLLER_H


#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>
#import <Foundation/Foundation.h>

@class FBAdDSLViewModel;
@protocol WKUIDelegate;
@protocol WKNavigationDelegate;
@protocol FBAdDSLJSScriptMessageHandlerDelegate;
@protocol FBAdDSLFullScreenAdViewControllerDelegate;

@interface FBAdDSLFullScreenAdViewController : UIViewController <WKUIDelegate, WKNavigationDelegate, FBAdDSLJSScriptMessageHandlerDelegate>



@property (retain, nonatomic) WKWebView *webview; // ivar: _webview
@property (copy, nonatomic) NSString *authKey; // ivar: _authKey
@property (copy, nonatomic) FBAdDSLViewModel *adModel; // ivar: _adModel
@property (weak, nonatomic) NSObject<FBAdDSLFullScreenAdViewControllerDelegate> *delegate; // ivar: _delegate
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)viewDidLoad;
-(void)dealloc;
-(void)setupWebView;
-(void)setupWithDataModel:(id)arg0 ;
-(void)receivedJSScriptEvent:(NSUInteger)arg0 withExtraData:(id)arg1 ;
-(void)webView:(id)arg0 didFinishNavigation:(id)arg1 ;
-(void)generateAuthKey;
-(void)sendMessage:(id)arg0 ToWebView:(id)arg1 ;
-(void)sendEvent:(NSUInteger)arg0 ;
-(void)sendLogEventWithJSONString:(id)arg0 ;
-(void)webViewRequestedData:(id)arg0 ;
-(id)getDictionaryFromExtraData:(id)arg0 ;


@end


#endif