// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADWEBADVIEW_H
#define GADWEBADVIEW_H


#import <Foundation/Foundation.h>

@class GADView;
@class GADActionURLHandler;
@class GADObserverCollection;
@class GADEventContext;
@class GADWebViewController;
@class GADWebViewConfiguration;
@protocol UIGestureRecognizerDelegate;
@protocol GADWebViewControllerDelegate;
@protocol GADJavascriptEvaluating;
@protocol GADWebAdViewDelegate;

@interface GADWebAdView : GADView <UIGestureRecognizerDelegate, GADWebViewControllerDelegate, GADJavascriptEvaluating>

 {
    id *_loadCompletionHandler;
    CGFloat _loadCompletedTimestamp;
    NSOperationQueue *_eventQueue;
    BOOL _touched;
    GADActionURLHandler *_actionURLHandler;
    GADObserverCollection *_bufferObservers;
    GADEventContext *_context;
}


@property (readonly, nonatomic) GADWebViewController *webViewController; // ivar: _webViewController
@property (weak, nonatomic) NSObject<GADWebAdViewDelegate> *delegate; // ivar: _delegate
@property (nonatomic) BOOL shouldRenderTestAdLabel; // ivar: _shouldRenderTestAdLabel
@property (readonly, nonatomic) GADWebViewConfiguration *configuration; // ivar: _configuration
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithFrame:(struct CGRect )arg0 configuration:(id)arg1 context:(id)arg2 ;
-(id)initWithFrame:(struct CGRect )arg0 context:(id)arg1 ;
-(void)dealloc;
-(id)context;
-(void)willMoveToWindow:(id)arg0 ;
-(void)layoutSubviews;
-(void)setLoadCompletionHandler:(id)arg0 ;
-(void)loadHTMLString:(id)arg0 baseURL:(id)arg1 completionHandler:(id)arg2 ;
-(void)loadURL:(id)arg0 completionHandler:(id)arg1 ;
-(void)loadCompletedWithError:(id)arg0 ;
-(struct CGSize )intrinsicContentSize;
-(void)bufferNotificationsUntilAdAvailableToDelegate:(id)arg0 ;
-(NSInteger)contentInsetAdjustmentBehavior;
-(void)asyncEvaluateScript:(id)arg0 ;
-(void)asyncEvaluateFunction:(id)arg0 parameters:(id)arg1 ;
-(void)dispatchSDKEvent:(id)arg0 parameters:(id)arg1 ;
-(void)dropWebViewController;
-(BOOL)isNavigationValidClick:(NSInteger)arg0 ;
-(BOOL)webViewController:(id)arg0 shouldStartLoadWithRequest:(id)arg1 navigationType:(NSInteger)arg2 ;
-(void)webViewControllerDidStartLoad:(id)arg0 ;
-(void)webViewControllerDidFinishLoad:(id)arg0 ;
-(void)webViewController:(id)arg0 didFailLoadWithError:(id)arg1 ;
-(void)webViewController:(id)arg0 runJavaScriptAlertPanelWithTitle:(id)arg1 message:(id)arg2 completionHandler:(id)arg3 ;
-(void)webViewController:(id)arg0 runJavaScriptConfirmPanelWithTitle:(id)arg1 message:(id)arg2 completionHandler:(id)arg3 ;
-(void)webViewController:(id)arg0 runJavaScriptTextInputPanelWithTitle:(id)arg1 defaultText:(id)arg2 prompt:(id)arg3 completionHandler:(id)arg4 ;
-(void)webViewControllerWebContentProcessDidTerminate:(id)arg0 ;
-(BOOL)gestureRecognizer:(id)arg0 shouldReceiveTouch:(id)arg1 ;
-(BOOL)gestureRecognizer:(id)arg0 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)arg1 ;


@end


#endif