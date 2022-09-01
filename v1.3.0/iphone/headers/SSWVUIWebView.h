// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef SSWVUIWEBVIEW_H
#define SSWVUIWEBVIEW_H


#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol UIWebViewDelegate;
@protocol SSWVWebViewP;
@protocol SSWVBridgeP;
@protocol SSWVWebViewDelegate;

@interface SSWVUIWebView : UIWebView <UIWebViewDelegate, SSWVWebViewP>



@property (retain, nonatomic) NSString *messageHandlerName; // ivar: _messageHandlerName
@property (retain, nonatomic) NSObject<SSWVBridgeP> *bridge; // ivar: _bridge
@property (weak) NSObject<SSWVWebViewDelegate> *webViewDelegate; // ivar: _webViewDelegate
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
@property (readonly, nonatomic) BOOL isLoading;
@property (readonly, nonatomic) BOOL canGoBack;
@property (readonly, nonatomic) BOOL canGoForward;
@property (retain, nonatomic) NSArray *respondingFrames; // ivar: respondingFrames
@property (nonatomic) CGRect frameForCloseButton; // ivar: frameForCloseButton


-(id)initWithFrame:(struct CGRect )arg0 ;
-(id)initWithFrame:(struct CGRect )arg0 browsingConfiguration:(id)arg1 ;
-(id)initWithFrame:(struct CGRect )arg0 connectivityConfiguration:(id)arg1 browsingConfiguration:(id)arg2 ;
-(void)setupBrowsingConfig:(id)arg0 ;
-(void)evaluateJavaScript:(id)arg0 ;
-(Class)webViewClass;
-(id)view;
-(BOOL)pointInside:(struct CGPoint )arg0 withEvent:(id)arg1 ;
-(void)allowFileAccessFromFileURLs:(BOOL)arg0 ;
-(void)loadFileRequest:(id)arg0 allowingReadAccessToURL:(id)arg1 ;
-(NSInteger)convertNavigationType:(NSInteger)arg0 ;
-(BOOL)webView:(id)arg0 shouldStartLoadWithRequest:(id)arg1 navigationType:(NSInteger)arg2 ;
-(void)webView:(id)arg0 didFailLoadWithError:(id)arg1 ;
-(void)webViewDidFinishLoad:(id)arg0 ;
-(void)loadHTMLContentString:(id)arg0 baseURL:(id)arg1 ;


@end


#endif