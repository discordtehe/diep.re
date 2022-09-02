// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@interface UIView (FBToast)



-(id)makeToast:(id)arg0 ;
-(id)makeToast:(id)arg0 style:(id)arg1 ;
-(void)showToast:(id)arg0 ;
-(void)showToast:(id)arg0 position:(int)arg1 completion:(id)arg2 ;
-(void)showToast:(id)arg0 position:(int)arg1 offset:(struct CGSize )arg2 completion:(id)arg3 ;
-(void)setOffsetAndPositionForToast:(id)arg0 position:(int)arg1 offset:(struct CGSize )arg2 ;
-(void)fbad_showToast:(id)arg0 offset:(struct CGSize )arg1 position:(int)arg2 ;
-(void)fbad_hideToast:(id)arg0 ;
-(struct CGPoint )fbad_centerPointForPosition:(int)arg0 offset:(struct CGSize )arg1 withToast:(id)arg2 ;
-(void)fbad_toastTimerDidFinish:(id)arg0 ;
@end


