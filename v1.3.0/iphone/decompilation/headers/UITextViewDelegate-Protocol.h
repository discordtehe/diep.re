// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol UITextViewDelegate



@optional
-(BOOL)textViewShouldBeginEditing:(id)arg0 ;
-(BOOL)textViewShouldEndEditing:(id)arg0 ;
-(void)textViewDidBeginEditing:(id)arg0 ;
-(void)textViewDidEndEditing:(id)arg0 ;
-(BOOL)textView:(id)arg0 shouldChangeTextInRange:(struct _NSRange )arg1 replacementText:(id)arg2 ;
-(void)textViewDidChange:(id)arg0 ;
-(void)textViewDidChangeSelection:(id)arg0 ;
-(BOOL)textView:(id)arg0 shouldInteractWithURL:(id)arg1 inRange:(struct _NSRange )arg2 interaction:(NSInteger)arg3 ;
-(BOOL)textView:(id)arg0 shouldInteractWithTextAttachment:(id)arg1 inRange:(struct _NSRange )arg2 interaction:(NSInteger)arg3 ;
-(BOOL)textView:(id)arg0 shouldInteractWithURL:(id)arg1 inRange:(struct _NSRange )arg2 ;
-(BOOL)textView:(id)arg0 shouldInteractWithTextAttachment:(id)arg1 inRange:(struct _NSRange )arg2 ;
@end

