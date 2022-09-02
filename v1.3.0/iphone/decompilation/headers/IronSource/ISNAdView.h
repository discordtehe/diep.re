// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ISNADVIEW_H
#define ISNADVIEW_H


#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>
#import <Foundation/Foundation.h>

@class ISNAdViewLogic;
@protocol ISNAdViewCommunicatorP;
@protocol WKScriptMessageHandler;
@protocol ISNAdViewDelegate;

@interface ISNAdView : UIView <ISNAdViewCommunicatorP, WKScriptMessageHandler>



@property (retain, nonatomic) WKWebView *webView; // ivar: _webView
@property (retain, nonatomic) ISNAdViewLogic *isnAdViewLogic; // ivar: _isnAdViewLogic
@property (weak, nonatomic) UIViewController *rootViewController; // ivar: _rootViewController
@property (nonatomic) CGSize adSize; // ivar: _adSize
@property (nonatomic) CGPoint pointOfOrigin; // ivar: _pointOfOrigin
@property (nonatomic) NSString *containerIdentifier; // ivar: _containerIdentifier
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
@property (weak, nonatomic) NSObject<ISNAdViewDelegate> *communicatorDelegate; // ivar: communicatorDelegate


-(id)initWithSize:(struct CGSize )arg0 position:(struct CGPoint )arg1 ;
-(id)createWebViewWithFrame:(struct CGRect )arg0 messageHandler:(id)arg1 ;
-(void)didMoveToSuperview;
-(void)didMoveToWindow;
-(void)userContentController:(id)arg0 didReceiveScriptMessage:(id)arg1 ;
-(void)loadAd:(id)arg0 ;
-(BOOL)isInFirstLoad;
-(void)sendMessage:(id)arg0 params:(id)arg1 ;
-(void)sendMessageWithArray:(id)arg0 params:(id)arg1 ;
-(void)performCleanup;
+(id)createAdViewWithSize:(struct CGSize )arg0 ;


@end


#endif