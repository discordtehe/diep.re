// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef KEYBOARDINPUT_H
#define KEYBOARDINPUT_H


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class MCTextField;
@protocol UITextFieldDelegate;
@protocol MCTextFieldDelegate;

@interface KeyboardInput : NSObject <UITextFieldDelegate, MCTextFieldDelegate>

 {
    MCTextField *mTextField;
    UIButton *mTextFieldBackgroundButton;
    UIButton *mDismissButton;
    UIButton *mConfirmButton;
    id *mTextUpdatedCallbackTarget;
    SEL mTextupdatedCallbackSelector;
    id *mTextEnteredCallbackTarget;
    SEL mTextEnteredCallbackSelector;
    id *mTextCancelledCallbackTarget;
    SEL mTextCancelledCallbackSelector;
    id *mCursorChangedCallbackTarget;
    SEL mCursorChangedCallbackSelector;
    BOOL mRotatingScreen;
    NSUInteger mMaxCharLength;
    BOOL _hideShortcutBar;
}


@property (nonatomic) BOOL disablePaste; // ivar: mDisablePaste
@property (nonatomic) BOOL disableAutocorrection; // ivar: mDisableAutocorrection
@property (nonatomic) BOOL showInputBar; // ivar: mShowInputBar
@property (nonatomic) BOOL cancelOnEmptyText; // ivar: mCancelOnEmptyText
@property (nonatomic) BOOL secureTextEntry; // ivar: mSecureTextEntry
@property (nonatomic) BOOL dismissButtonEnabled; // ivar: mDismissButtonEnabled
@property (nonatomic) BOOL keepShowingOnEmptyText; // ivar: _keepShowingOnEmptyText
@property (nonatomic) BOOL clearOnSendingEmptyText; // ivar: _clearOnSendingEmptyText
@property (readonly, nonatomic) BOOL isActive; // ivar: mActive
@property (nonatomic) int returnKeyType; // ivar: mReturnKeyType
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(void)cleanUp;
-(void)cleanUiKitElements:(id)arg0 ;
-(void)dismissButtonPressed:(id)arg0 ;
-(void)dismiss;
-(void)confirmButtonPressed:(id)arg0 ;
-(void)showKeyboardInput:(id)arg0 ;
-(void)showKeyboardInput:(id)arg0 hideShortcutBar:(BOOL)arg1 ;
-(void)keyboardWillChange:(id)arg0 ;
-(void)animateInputBarToY:(float)arg0 withDuration:(float)arg1 andAnimationCurve:(NSInteger)arg2 ;
-(void)fadeDismissButtonToAlpha:(float)arg0 withDuration:(float)arg1 andAnimationCurve:(NSInteger)arg2 ;
-(void)keyboardWillRotate:(id)arg0 ;
-(void)keyboardDidRotate:(id)arg0 ;
-(void)hideKeyboardInput;
-(void)setMaxCharLength:(NSUInteger)arg0 ;
-(id)capString:(id)arg0 ToLength:(NSUInteger)arg1 ;
-(BOOL)textField:(id)arg0 shouldChangeCharactersInRange:(struct _NSRange )arg1 replacementString:(id)arg2 ;
-(void)clearText;
-(void)setCaretPosition:(NSUInteger)arg0 ;
-(NSUInteger)getCaretPosition;
-(BOOL)textFieldShouldReturn:(id)arg0 ;
-(BOOL)textFieldShouldClear:(id)arg0 ;
-(void)textFieldDidBeginEditing:(id)arg0 ;
-(void)textFieldDidEndEditing:(id)arg0 ;
-(void)cursorChangedToPosition:(id)arg0 ;
-(void)setTextUpdatedCallback:(SEL)arg0 target:(id)arg1 ;
-(void)setTextEnteredCallback:(SEL)arg0 target:(id)arg1 ;
-(void)setTextCancelledCallback:(SEL)arg0 target:(id)arg1 ;
-(void)setCursorChangedCallback:(SEL)arg0 target:(id)arg1 ;
-(id)textUpdatedCallbackTarget;
-(SEL)textUpdatedCallbackSelector;
-(void)cleanCallbacks;
-(void)showKeyboardInput;
+(id)sharedKeyboardInput;
+(void)releaseSharedKeyboardInput;


@end


#endif