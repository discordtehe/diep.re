// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MOPUBFULLSCREENPLAYERVIEWCONTROLLER_H
#define MOPUBFULLSCREENPLAYERVIEWCONTROLLER_H


#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import <Foundation/Foundation.h>

@class MPExtendedHitBoxButton;
@class MOPUBActivityIndicatorView;
@class MOPUBPlayerViewController;
@class MPAdDestinationDisplayAgent;
@class MOPUBPlayerView;
@protocol MPAdDestinationDisplayAgentDelegate;
@protocol MOPUBPlayerViewControllerDelegate;
@protocol MOPUBFullscreenPlayerViewControllerDelegate;

@interface MOPUBFullscreenPlayerViewController : UIViewController <MPAdDestinationDisplayAgentDelegate, MOPUBPlayerViewControllerDelegate>



@property (retain, nonatomic) MPExtendedHitBoxButton *privacyButton; // ivar: _privacyButton
@property (retain, nonatomic) MPExtendedHitBoxButton *closeButton; // ivar: _closeButton
@property (retain, nonatomic) MPExtendedHitBoxButton *ctaButton; // ivar: _ctaButton
@property (retain, nonatomic) MOPUBActivityIndicatorView *stallSpinner; // ivar: _stallSpinner
@property (retain, nonatomic) UIActivityIndicatorView *playerNotReadySpinner; // ivar: _playerNotReadySpinner
@property (retain, nonatomic) UIView *gradientView; // ivar: _gradientView
@property (retain, nonatomic) CAGradientLayer *gradient; // ivar: _gradient
@property (retain, nonatomic) MOPUBPlayerViewController *playerController; // ivar: _playerController
@property (retain, nonatomic) UIView *originalParentView; // ivar: _originalParentView
@property (retain, nonatomic) MPAdDestinationDisplayAgent *displayAgent; // ivar: _displayAgent
@property (copy, nonatomic) id *dismissBlock; // ivar: _dismissBlock
@property (copy, nonatomic) NSString *overridePrivacyIcon; // ivar: _overridePrivacyIcon
@property (retain, nonatomic) UIImage *overridePrivacyIconImage; // ivar: _overridePrivacyIconImage
@property (copy, nonatomic) NSString *overridePrivacyClickUrl; // ivar: _overridePrivacyClickUrl
@property (retain, nonatomic) MOPUBPlayerView *playerView; // ivar: _playerView
@property (weak, nonatomic) NSObject<MOPUBFullscreenPlayerViewControllerDelegate> *delegate; // ivar: _delegate
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithVideoPlayer:(id)arg0 nativeAdProperties:(id)arg1 dismissBlock:(id)arg2 ;
-(void)viewDidLoad;
-(void)setPrivacyIconImageForButton:(id)arg0 ;
-(void)createAndAddGradientView;
-(void)showStallSpinner;
-(void)hideStallSpinner;
-(void)createPlayerNotReadySpinner;
-(void)removePlayerNotReadySpinner;
-(void)viewWillLayoutSubviews;
-(void)layoutPlayerView;
-(void)layoutPrivacyButton;
-(void)layoutCloseButton;
-(void)layoutCtaButton;
-(void)layoutStallSpinner;
-(void)layoutPlayerNotReadySpinner;
-(void)layoutGradientView;
-(void)playerPlaybackDidStart:(id)arg0 ;
-(void)playerViewController:(id)arg0 willShowReplayView:(id)arg1 ;
-(void)playerViewController:(id)arg0 didStall:(id)arg1 ;
-(void)playerViewController:(id)arg0 didRecoverFromStall:(id)arg1 ;
-(void)playerDidProgressToTime:(CGFloat)arg0 ;
-(id)viewControllerForPresentingModalView;
-(BOOL)prefersStatusBarHidden;


@end


#endif