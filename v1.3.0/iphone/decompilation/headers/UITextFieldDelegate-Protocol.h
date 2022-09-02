// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol UITextFieldDelegate



@optional
-(BOOL)textFieldShouldBeginEditing:(id)arg0 ;
-(void)textFieldDidBeginEditing:(id)arg0 ;
-(BOOL)textFieldShouldEndEditing:(id)arg0 ;
-(void)textFieldDidEndEditing:(id)arg0 ;
-(void)textFieldDidEndEditing:(id)arg0 reason:(NSInteger)arg1 ;
-(BOOL)textField:(id)arg0 shouldChangeCharactersInRange:(struct _NSRange )arg1 replacementString:(id)arg2 ;
-(void)textFieldDidChangeSelection:(id)arg0 ;
-(BOOL)textFieldShouldClear:(id)arg0 ;
-(BOOL)textFieldShouldReturn:(id)arg0 ;
@end

