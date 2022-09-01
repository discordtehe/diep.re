// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCINPUTBAR_H
#define MCINPUTBAR_H


#import <CoreFoundation/CoreFoundation.h>
#import <Foundation/Foundation.h>

@class CCMenuItemSpriteExtendedInput;
@class CCLabelTTF;
@class CCNodeRGBA;
@class CCSprite;
@class FramedSprite;
@class MCFramedSprite;
@protocol CCTouchOneByOneDelegate;

@interface MCInputBar : CCMenuItemSpriteExtendedInput <CCTouchOneByOneDelegate>

 {
    CCLabelTTF *_filterTextLabel;
    CCNodeRGBA *_blinkingCursor;
    CGSize _filterAreaSize;
    BOOL _filterEditing;
    NSMutableArray *_delegates;
    NSString *_fontName;
    float _fontSize;
    NSString *_blinkingFont;
    CGSize _frameSize;
    _ccColorThreeB _cursorColor;
    CCSprite *_clearButton;
    CGPoint _clearButtonPosition;
    BOOL _clearing;
    BOOL _isBlinkingFontTTF;
}


@property (retain, nonatomic) NSString *defaultText; // ivar: _defaultText
@property (nonatomic) NSString *fontName;
@property (nonatomic) float fontSize;
@property (nonatomic) int labelLength; // ivar: _labelLength
@property (retain, nonatomic) NSString *blinkingFont;
@property (nonatomic) BOOL isBlinkingEnabled; // ivar: _isBlinkingEnabled
@property (nonatomic) BOOL strokeEnabled;
@property (nonatomic) CGSize frameSize;
@property (nonatomic) NSString *labelText; // ivar: _filterText
@property (nonatomic) CGPoint labelOffset; // ivar: _labelOffset
@property (nonatomic) CGPoint labelSizeOffset; // ivar: _labelSizeOffset
@property (nonatomic) FramedSprite *frame;
@property (nonatomic) MCFramedSprite *mcFramedSprite;
@property (nonatomic) _ccColorThreeB textColor; // ivar: _textColor
@property (nonatomic) _ccColorThreeB defaultTextColor; // ivar: _defaultTextColor
@property (nonatomic) _ccColorThreeB textFillColor;
@property (nonatomic) CCSprite *clearButton;
@property (nonatomic) CGPoint clearButtonPosition;
@property (nonatomic) BOOL dismissWhenFocused; // ivar: _dismissWhenFocused
@property (nonatomic) BOOL dismissOnClear; // ivar: _dismissOnClear
@property (nonatomic) BOOL bypassDismissOnClearChecks; // ivar: _bypassDismissOnClearChecks
@property (nonatomic) BOOL hideShortcutBar; // ivar: _hideShortcutBar
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(void)onEnter;
-(void)keyboardDismissed;
-(void)onExit;
-(void)dealloc;
-(void)createLabel;
-(void)createCursor;
-(void)createTTFCursor;
-(void)createBMFCursor;
-(void)removeExistingCursor;
-(void)updateLabelVisibility:(id)arg0 ;
-(void)createInnerClearButton:(id)arg0 ;
-(void)createInputWithDefaultText:(id)arg0 fontName:(id)arg1 fontSize:(float)arg2 maxLength:(int)arg3 offset:(struct CGPoint )arg4 contentSizeOffset:(struct CGPoint )arg5 ;
-(void)createBlinkingCursor:(id)arg0 ;
-(void)createBMFBlinkingCursor:(id)arg0 ;
-(void)createTTFBlinkingCursor:(id)arg0 ;
-(void)clearInput;
-(id)filterArray:(id)arg0 withCompareBlock:(id)arg1 ;
-(id)filterArray:(id)arg0 ;
-(void)dismissKeyboard;
-(void)registerDelegate:(id)arg0 ;
-(void)unregisterDelegate:(id)arg0 ;
-(BOOL)ccTouchBegan:(id)arg0 withEvent:(id)arg1 ;
-(void)ccTouchEnded:(id)arg0 withEvent:(id)arg1 ;
-(void)inputTextCallback;
-(void)inputTextEditBeganCallback:(id)arg0 ;
-(void)inputTextEditMovedCallback:(id)arg0 ;
-(void)inputReturnKeyPressedCallback:(id)arg0 ;
-(void)inputTextEnteredCallback;
-(void)inputTextEnteredCallback:(id)arg0 ;
-(void)inputTextUpdatedCallback:(id)arg0 skipDelegates:(BOOL)arg1 ;
-(void)inputTextUpdatedCallback:(id)arg0 ;
-(void)inputCursorChangedCallback;
-(void)setIsEnabled:(BOOL)arg0 ;
-(void)enableInput;
-(void)disableInput;
-(void)setBMFBlinkingFont:(id)arg0 ;
-(void)setTTFBlinkingFont:(id)arg0 ;
-(void)setAndCreateBlinkingCursor:(id)arg0 ;
-(id)getLabelText;
-(id)getFrame;
-(id)getMcFramedSprite;
-(void)setContentSize:(struct CGSize )arg0 ;
-(void)setCursorColor:(struct _ccColorThreeB )arg0 ;


@end


#endif