// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADOVERLAYVIEW_H
#define GADOVERLAYVIEW_H


#import <UIKit/UIKit.h>
#import <CoreFoundation/CoreFoundation.h>
#import <Foundation/Foundation.h>

@class GADJSContext;
@class GADObserverCollection;
@class GADWebViewController;
@class GADEventContext;
@class GADActionURLHandler;
@protocol GADWebViewControllerDelegate;
@protocol GADEventContextSource;

@interface GADOverlayView : UIView <GADWebViewControllerDelegate, GADEventContextSource>

 {
    GADJSContext *_JSContext;
    GADObserverCollection *_JSContextObservers;
    GADObserverCollection *_overlayViewObservers;
    GADWebViewController *_overlayWebViewController;
    NSDictionary *_loadOverlayUserInfo;
    NSString *_overlayIdentifier;
    GADEventContext *_context;
    GADActionURLHandler *_actionURLHandler;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
@property (readonly, nonatomic) GADEventContext *context;


-(id)initWithContext:(id)arg0 JSContext:(id)arg1 ;
-(void)dealloc;
-(void)removeOverlaySubview;
-(void)addOverlaySubview;
-(void)handleShowOverlayView;
-(void)handleHideOverlayView;
-(void)handleLoadOverlayWebViewWithUserInfo:(id)arg0 ;
-(void)handleSendMessageToOverlayWebViewWithUserInfo:(id)arg0 ;
-(void)handleSendMessageToNativeJSWithUserInfo:(id)arg0 ;
-(BOOL)webViewController:(id)arg0 shouldStartLoadWithRequest:(id)arg1 navigationType:(NSInteger)arg2 ;
-(void)webViewControllerDidStartLoad:(id)arg0 ;
-(void)webViewControllerDidFinishLoad:(id)arg0 ;
-(void)webViewController:(id)arg0 didFailLoadWithError:(id)arg1 ;
-(void)webViewControllerWebContentProcessDidTerminate:(id)arg0 ;
-(void)webViewDidFailWithError:(id)arg0 ;


@end


#endif