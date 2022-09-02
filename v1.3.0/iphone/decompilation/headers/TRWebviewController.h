// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TRWEBVIEWCONTROLLER_H
#define TRWEBVIEWCONTROLLER_H


#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>
#import <Foundation/Foundation.h>

@class TRActivityIndicatorView;
@class TRPlayer;
@class TROffer;
@protocol WKNavigationDelegate;
@protocol WKUIDelegate;
@protocol TapResearchSurveyDelegate;

@interface TRWebviewController : UIViewController <WKNavigationDelegate, WKUIDelegate>



@property (retain, nonatomic) WKWebView *webView; // ivar: _webView
@property (retain, nonatomic) UIBarButtonItem *closeButton; // ivar: _closeButton
@property (retain, nonatomic) UIBarButtonItem *refreshButton; // ivar: _refreshButton
@property (retain, nonatomic) UIBarButtonItem *abandonButton; // ivar: _abandonButton
@property (retain, nonatomic) NSString *cpIdentifier; // ivar: _cpIdentifier
@property (retain, nonatomic) TRActivityIndicatorView *indicatorView; // ivar: _indicatorView
@property (retain, nonatomic) TRPlayer *player; // ivar: _player
@property (retain, nonatomic) TROffer *offer; // ivar: _offer
@property (nonatomic) NSObject<TapResearchSurveyDelegate> *surveyDelegate; // ivar: _surveyDelegate
@property (nonatomic) BOOL abandoningSurvey; // ivar: _abandoningSurvey
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithOffer:(id)arg0 surveyDelegate:(id)arg1 ;
-(void)setNavigationItems:(BOOL)arg0 ;
-(void)barButtonTouched:(id)arg0 ;
-(void)handleAbandon;
-(void)resetViewForRequest:(id)arg0 ;
-(void)viewWillAppear:(BOOL)arg0 ;
-(void)webView:(id)arg0 decidePolicyForNavigationAction:(id)arg1 decisionHandler:(id)arg2 ;
-(id)webView:(id)arg0 createWebViewWithConfiguration:(id)arg1 forNavigationAction:(id)arg2 windowFeatures:(id)arg3 ;
-(void)webView:(id)arg0 didFinishNavigation:(id)arg1 ;
-(void)webView:(id)arg0 didFailNavigation:(id)arg1 withError:(id)arg2 ;
-(void)updateTitle;
-(id)initializeWebView;
-(id)initializeWebViewWithConfiguration:(id)arg0 ;
-(id)encodedURLString:(id)arg0 ;
-(void)loadRequestWithURLString:(id)arg0 ;
-(BOOL)isTapResearchDomain:(id)arg0 ;
-(id)queryParameters:(id)arg0 ;


@end


#endif