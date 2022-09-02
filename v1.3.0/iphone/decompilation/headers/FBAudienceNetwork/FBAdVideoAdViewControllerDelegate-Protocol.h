// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol FBAdVideoAdViewControllerDelegate


-(void)videoAdViewControllerDidLoad:(id)arg0 ;
-(void)videoAdViewController:(id)arg0 didFailWithError:(id)arg1 ;
-(void)videoAdViewControllerDidBecomeSkippable:(id)arg0 ;
-(void)videoAdViewControllerComplete:(id)arg0 ;
-(void)videoAdViewControllerWantsToLogImpression:(id)arg0 ;
-(void)videoAdViewControllerWantsToProcessCTA:(id)arg0 withEvent:(id)arg1 isDoneOrSkippable:(BOOL)arg2 ;
-(void)videoAdViewControllerWillClose:(id)arg0 ;
-(void)videoAdViewControllerSkipped:(id)arg0 ;

@end

