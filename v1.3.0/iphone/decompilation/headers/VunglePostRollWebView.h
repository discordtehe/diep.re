// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VUNGLEPOSTROLLWEBVIEW_H
#define VUNGLEPOSTROLLWEBVIEW_H


#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>
#import <CoreFoundation/CoreFoundation.h>
#import <Foundation/Foundation.h>

@class VungleWebViewFacade;
@class VungleAdViewController;
@protocol JavascriptToNativeHandler;
@protocol WKNavigationDelegate;
@protocol WKUIDelegate;
@protocol WKScriptMessageHandler;

@interface VunglePostRollWebView : UIView <JavascriptToNativeHandler, WKNavigationDelegate, WKUIDelegate, WKScriptMessageHandler>



@property (retain, nonatomic) VungleWebViewFacade *facade; // ivar: _facade
@property (weak, nonatomic) WKWebView *webView; // ivar: _webView
@property (retain) NSURL *URL; // ivar: _URL
@property (nonatomic) VungleAdViewController *adViewController; // ivar: _adViewController
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithURL:(id)arg0 ;
-(void)dealloc;
-(void)load;
-(void)removeScriptHandlers;
-(BOOL)javascriptMessageHandler:(id)arg0 ;
-(BOOL)javascriptToObjectiveCMapping:(id)arg0 ;
-(void)userContentController:(id)arg0 didReceiveScriptMessage:(id)arg1 ;


@end


#endif