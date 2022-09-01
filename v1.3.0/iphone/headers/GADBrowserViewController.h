// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADBROWSERVIEWCONTROLLER_H
#define GADBROWSERVIEWCONTROLLER_H


#import <UIKit/UIKit.h>
#import <CoreFoundation/CoreFoundation.h>
#import <Foundation/Foundation.h>

@class GADWebViewController;
@class GADEventContext;
@class GADAd;
@protocol GADWebViewControllerDelegate;
@protocol GADPresenting;

@interface GADBrowserViewController : UIViewController <GADWebViewControllerDelegate, GADPresenting>

 {
    NSURL *_URLToLoad;
    NSURL *_referringURLToLoad;
    GADWebViewController *_webViewController;
    UIToolbar *_toolbar;
    UIBarButtonItem *_flexibleSpaceButton;
    UIBarButtonItem *_backButton;
    UIBarButtonItem *_forwardButton;
    UIBarButtonItem *_reloadButton;
    UIBarButtonItem *_safariButton;
    UIBarButtonItem *_doneButton;
    UIBarButtonItem *_spinnerContainingButton;
    UIActivityIndicatorView *_spinner;
    NSInteger _lastOrientation;
    GADEventContext *_context;
    GADAd *_ad;
}


@property (nonatomic) NSUInteger supportedInterfaceOrientations; // ivar: _supportedInterfaceOrientations
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
@property (readonly, nonatomic) GADEventContext *context;


-(id)initWithAd:(id)arg0 ;
-(void)dealloc;
-(void)viewDidLoad;
-(void)viewWillAppear:(BOOL)arg0 ;
-(BOOL)prefersStatusBarHidden;
-(void)viewDidDisappear:(BOOL)arg0 ;
-(void)didRotateFromInterfaceOrientation:(NSInteger)arg0 ;
-(void)updateWebViewOrientationWithNotificationChangeEvent:(BOOL)arg0 ;
-(id)buttonWithImage:(id)arg0 name:(id)arg1 width:(CGFloat)arg2 enabled:(BOOL)arg3 action:(SEL)arg4 ;
-(void)createToolbarButtons;
-(void)refreshToolbar;
-(void)doneButtonPressed:(id)arg0 ;
-(void)loadURL:(id)arg0 referringURL:(id)arg1 ;
-(void)back;
-(void)forward;
-(void)reload;
-(void)openMainDocumentURL;
-(BOOL)shouldAutorotate;
-(BOOL)canPresent;
-(BOOL)shouldDismissOnApplicationEnteringForeground;
-(void)presentFromViewController:(id)arg0 completion:(id)arg1 ;
-(void)relinquishScreenWithCompletion:(id)arg0 ;
-(BOOL)webViewController:(id)arg0 shouldStartLoadWithRequest:(id)arg1 navigationType:(NSInteger)arg2 ;
-(void)webViewControllerDidStartLoad:(id)arg0 ;
-(void)webViewControllerDidFinishLoad:(id)arg0 ;
-(void)webViewController:(id)arg0 didFailLoadWithError:(id)arg1 ;
-(void)webViewControllerWebContentProcessDidTerminate:(id)arg0 ;


@end


#endif