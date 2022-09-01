// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol MOPUBPlayerViewControllerDelegate



@optional
-(void)willEnterFullscreen:(id)arg0 ;
-(void)playerPlaybackWillStart:(id)arg0 ;
-(void)playerPlaybackDidStart:(id)arg0 ;
-(void)playerDidProgressToTime:(CGFloat)arg0 ;
-(void)playerViewController:(id)arg0 didTapReplayButton:(id)arg1 ;
-(void)playerViewController:(id)arg0 willShowReplayView:(id)arg1 ;
-(void)playerViewController:(id)arg0 didStall:(id)arg1 ;
-(void)playerViewController:(id)arg0 didRecoverFromStall:(id)arg1 ;
-(id)viewControllerForPresentingModalView;
@end

