// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol UINavigationControllerDelegate



@optional
-(void)navigationController:(id)arg0 willShowViewController:(id)arg1 animated:(BOOL)arg2 ;
-(void)navigationController:(id)arg0 didShowViewController:(id)arg1 animated:(BOOL)arg2 ;
-(NSUInteger)navigationControllerSupportedInterfaceOrientations:(id)arg0 ;
-(NSInteger)navigationControllerPreferredInterfaceOrientationForPresentation:(id)arg0 ;
-(id)navigationController:(id)arg0 interactionControllerForAnimationController:(id)arg1 ;
-(id)navigationController:(id)arg0 animationControllerForOperation:(NSInteger)arg1 fromViewController:(id)arg2 toViewController:(id)arg3 ;
@end

