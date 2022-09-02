// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADWEBVIEWNAVIGATIONPANEL_H
#define FBADWEBVIEWNAVIGATIONPANEL_H


#import <UIKit/UIKit.h>

@class FBAdIconButton;
@protocol FBAdWebViewNavigationPanelDelegate;

@interface FBAdWebViewNavigationPanel : UIView

@property (weak, nonatomic) FBAdIconButton *backButton; // ivar: _backButton
@property (weak, nonatomic) FBAdIconButton *forwardButton; // ivar: _forwardButton
@property (weak, nonatomic) FBAdIconButton *openInExternalBrowserButton; // ivar: _openInExternalBrowserButton
@property (weak, nonatomic) NSObject<FBAdWebViewNavigationPanelDelegate> *delegate; // ivar: _delegate
@property (nonatomic, getter=isGoBackButtonEnabeld) BOOL goBackButtonEnabled; // ivar: _goBackButtonEnabled
@property (nonatomic, getter=isGoForwardButtonEnabeld) BOOL goForwardButtonEnabled; // ivar: _goForwardButtonEnabled


-(id)initWithDelegate:(id)arg0 ;
-(void)setupBackButton;
-(void)setupForwardButton;
-(void)setupOpenInExternalBrowserButton;
-(void)setupViews;
-(void)forwardButtonTap:(id)arg0 ;
-(void)backButtonTap:(id)arg0 ;
-(void)openInExternalBrowserButtonTap:(id)arg0 ;


@end


#endif