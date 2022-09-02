// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@interface UIAlertView (Blocks)

@property (copy, nonatomic) id *tapBlock;
@property (copy, nonatomic) id *willDismissBlock;
@property (copy, nonatomic) id *didDismissBlock;
@property (copy, nonatomic) id *willPresentBlock;
@property (copy, nonatomic) id *didPresentBlock;
@property (copy, nonatomic) id *cancelBlock;
@property (copy, nonatomic) id *shouldEnableFirstOtherButtonBlock;


-(void)_checkAlertViewDelegate;
-(id)tapBlock:(SEL)arg0 ;
-(void)setTapBlock:(id)arg0 ;
-(id)willDismissBlock:(SEL)arg0 ;
-(void)setWillDismissBlock:(id)arg0 ;
-(id)didDismissBlock:(SEL)arg0 ;
-(void)setDidDismissBlock:(id)arg0 ;
-(id)willPresentBlock:(SEL)arg0 ;
-(void)setWillPresentBlock:(id)arg0 ;
-(id)didPresentBlock:(SEL)arg0 ;
-(void)setDidPresentBlock:(id)arg0 ;
-(id)cancelBlock:(SEL)arg0 ;
-(void)setCancelBlock:(id)arg0 ;
-(void)setShouldEnableFirstOtherButtonBlock:(id)arg0 ;
-(id)shouldEnableFirstOtherButtonBlock:(SEL)arg0 ;
-(void)willPresentAlertView:(id)arg0 ;
-(void)didPresentAlertView:(id)arg0 ;
-(void)alertViewCancel:(id)arg0 ;
-(void)alertView:(id)arg0 clickedButtonAtIndex:(NSInteger)arg1 ;
-(void)alertView:(id)arg0 willDismissWithButtonIndex:(NSInteger)arg1 ;
-(void)alertView:(id)arg0 didDismissWithButtonIndex:(NSInteger)arg1 ;
-(BOOL)alertViewShouldEnableFirstOtherButton:(id)arg0 ;
+(id)showWithTitle:(id)arg0 message:(id)arg1 style:(NSInteger)arg2 cancelButtonTitle:(id)arg3 otherButtonTitles:(id)arg4 tapBlock:(id)arg5 ;
+(id)showWithTitle:(id)arg0 message:(id)arg1 cancelButtonTitle:(id)arg2 otherButtonTitles:(id)arg3 tapBlock:(id)arg4 ;
@end


