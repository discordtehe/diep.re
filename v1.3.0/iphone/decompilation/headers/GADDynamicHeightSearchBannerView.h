// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADDYNAMICHEIGHTSEARCHBANNERVIEW_H
#define GADDYNAMICHEIGHTSEARCHBANNERVIEW_H


#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@class GADWebViewController;
@protocol GADWebViewControllerDelegate;
@protocol UIGestureRecognizerDelegate;
@protocol GADDynamicHeightSearchBannerViewDelegate;

@interface GADDynamicHeightSearchBannerView : UIView <GADWebViewControllerDelegate, UIGestureRecognizerDelegate>

 {
    GADWebViewController *_adWebView;
}


@property (copy, nonatomic) NSString *adUnitID; // ivar: _adUnitID
@property (weak, nonatomic) NSObject<GADDynamicHeightSearchBannerViewDelegate> *delegate; // ivar: _delegate
@property (readonly, nonatomic) NSInteger adState; // ivar: _adState
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithFrame:(struct CGRect )arg0 ;
-(id)initWithCoder:(id)arg0 ;
-(void)dealloc;
-(void)configureBannerView;
-(void)loadRequest:(id)arg0 ;
-(struct CGSize )currentAdSize;
-(BOOL)gestureRecognizer:(id)arg0 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)arg1 ;
-(BOOL)webViewController:(id)arg0 shouldStartLoadWithRequest:(id)arg1 navigationType:(NSInteger)arg2 ;
-(void)webViewControllerDidStartLoad:(id)arg0 ;
-(void)webViewControllerDidFinishLoad:(id)arg0 ;
-(void)webViewController:(id)arg0 didFailLoadWithError:(id)arg1 ;
-(void)webViewControllerWebContentProcessDidTerminate:(id)arg0 ;
-(void)setFrame:(struct CGRect )arg0 ;
-(void)updateInternalAdViewHeightAndNotifyDelegateWithHeight:(CGFloat)arg0 ;
-(void)handleBannerViewDidReceiveAd;
-(void)handleUserDidTapAdDestinationURL:(id)arg0 ;


@end


#endif