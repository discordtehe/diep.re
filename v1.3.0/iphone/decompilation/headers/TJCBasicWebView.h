// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TJCBASICWEBVIEW_H
#define TJCBASICWEBVIEW_H


#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>


@interface TJCBasicWebView : UIView

@property (retain, nonatomic) WKWebView *wkWebView; // ivar: _wkWebView
@property (retain, nonatomic) UIWebView *uiWebView; // ivar: _uiWebView
@property (retain, nonatomic) id *webView; // ivar: _webView


-(id)initWithFrame:(struct CGRect )arg0 ;
-(id)initWithFrame:(struct CGRect )arg0 webkitPreferred:(BOOL)arg1 ;
-(void)createWKWebViewWithFrame:(struct CGRect )arg0 ;
-(void)createUIWebViewWithFrame:(struct CGRect )arg0 ;
-(void)commonInitialization;
-(void)disableScrolling;
-(void)setHTMLContent:(id)arg0 ;


@end


#endif