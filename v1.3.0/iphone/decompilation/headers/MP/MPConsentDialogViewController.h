// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPCONSENTDIALOGVIEWCONTROLLER_H
#define MPCONSENTDIALOGVIEWCONTROLLER_H


#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@class MPWebView;
@protocol MPWebViewDelegate;
@protocol MPConsentDialogViewControllerDelegate;

@interface MPConsentDialogViewController : UIViewController <MPWebViewDelegate>



@property (retain, nonatomic) UIButton *closeButton; // ivar: _closeButton
@property (retain, nonatomic) MPWebView *webView; // ivar: _webView
@property (nonatomic) BOOL finishedInitialLoad; // ivar: _finishedInitialLoad
@property (nonatomic) BOOL closeButtonHasBeenShown; // ivar: _closeButtonHasBeenShown
@property (copy, nonatomic) id *didLoadCompletionBlock; // ivar: _didLoadCompletionBlock
@property (copy, nonatomic) NSString *dialogHTML; // ivar: _dialogHTML
@property (weak, nonatomic) NSObject<MPConsentDialogViewControllerDelegate> *delegate; // ivar: _delegate
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithDialogHTML:(id)arg0 ;
-(void)viewDidLoad;
-(void)viewDidAppear:(BOOL)arg0 ;
-(void)viewWillDisappear:(BOOL)arg0 ;
-(void)closeConsentDialog;
-(void)setUpWebView;
-(void)layoutWebView;
-(BOOL)prefersStatusBarHidden;
-(void)setUpCloseButton;
-(void)closeButtonAction:(id)arg0 ;
-(void)fadeInCloseButton;
-(void)loadConsentPageWithCompletion:(id)arg0 ;
-(void)webView:(id)arg0 didFailLoadWithError:(id)arg1 ;
-(void)webViewDidFinishLoad:(id)arg0 ;
-(BOOL)webView:(id)arg0 shouldStartLoadWithRequest:(id)arg1 navigationType:(NSInteger)arg2 ;


@end


#endif