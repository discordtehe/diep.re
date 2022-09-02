// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADFULLSCREENVIDEOCONTROLLER_H
#define FBADFULLSCREENVIDEOCONTROLLER_H


#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@class FBAdVideoCallToActionButton;
@class FBAdVideoDismissButton;
@class FBMediaViewDefaultVideoRenderer;
@protocol FBAdFullscreenVideoControllerDelegate;

@interface FBAdFullscreenVideoController : UIViewController

@property (copy, nonatomic) NSString *callToAction; // ivar: _callToAction
@property (retain, nonatomic) FBAdVideoCallToActionButton *callToActionButton; // ivar: _callToActionButton
@property (retain, nonatomic) FBAdVideoDismissButton *dismissButton; // ivar: _dismissButton
@property (weak, nonatomic) UIView *originalSuperView; // ivar: _originalSuperView
@property (weak, nonatomic) FBMediaViewDefaultVideoRenderer *videoRenderer; // ivar: _videoRenderer
@property (weak, nonatomic) NSObject<FBAdFullscreenVideoControllerDelegate> *delegate; // ivar: _delegate


-(id)initWithVideoRenderer:(id)arg0 callToAction:(id)arg1 ;
-(BOOL)prefersStatusBarHidden;
-(BOOL)modalPresentationCapturesStatusBarAppearance;
-(void)viewDidLoad;
-(void)viewDidLayoutSubviews;
-(void)viewDidAppear:(BOOL)arg0 ;
-(void)swapInVideoView;
-(void)swapOutVideoView;
-(void)dismiss:(id)arg0 ;
-(void)callToActionHit:(id)arg0 withEvent:(id)arg1 ;
-(BOOL)shouldAutorotate;
-(NSUInteger)supportedInterfaceOrientations;
+(void)initialize;


@end


#endif