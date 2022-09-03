// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MENUMAINVIEW_H
#define MENUMAINVIEW_H

@class CCNode<CCLabelProtocol>, CCNode<CCRGBAProtocol>;

#import <Foundation/Foundation.h>

@class MenuView;
@class MenuMain;
@class CCMenu;
@class CCSprite;
@class CCMenuItem;
@class MCAdjustableLabelTTF;
@class MCMenuItemNodeRGBAStatic;
@class FramedSprite;
@class MCInputBar;
@class CCNode;
@protocol MCInputBarDelegate;

@interface MenuMainView : MenuView <MCInputBarDelegate>

 {
    MenuMain *_control;
    CCMenu *_menuMain;
    CCSprite *_background;
    CCSprite *_logo;
    CCSprite *_subtitle;
    CCMenuItem *_newsfeedButton;
    CCSprite *_newsfeedBadge;
    CCSprite *_iosNewsFeedIcon;
    CCSprite *_androidNewsFeedIcon;
    CCNode<CCLabelProtocol> *_newsfeedAmountLabel;
    MCAdjustableLabelTTF *_nicknameLabel;
    MCMenuItemNodeRGBAStatic *_gameModeButton;
    FramedSprite *_inputBox;
    MCInputBar *_inputBar;
    CCMenu *_inputMenu;
    CCMenuItem *_playButton;
    basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > _showing_skin_id;
    CGFloat setProfileXpTimestamp;
    BOOL _newsfeedButtonShowing;
    CGPoint _playButtonStartPosition;
    CGPoint _logoStartPosition;
    CGPoint _subtitleStartPosition;
    CGPoint _gameModeStartPosition;
    CGPoint _inputBoxStartPosition;
    CGPoint _inputBarStartPosition;
    float _yOffsetForTextEntry;
    MCAdjustableLabelTTF *_coinWaitLabel;
    CCMenu *_promoMenu;
    CCMenu *_featureMenu;
    CCMenu *_menuHelp;
    CCNode<CCRGBAProtocol> *_helpTransparentLayer;
    unsigned char _helpTransparentLayerOpacity;
    CCNode *_shootHelpImage;
    CCNode *_moveHelpImage;
    CCNode *_helpLeftPosition;
    CCNode *_helpRightPosition;
    CCNode *_fade;
    CCSprite *_tankAnim;
    CCNode *_pbutton;
    CCMenu *_gdprPopup;
}


@property (nonatomic) MCAdjustableLabelTTF *gameModeLabel; // ivar: _gameModeLabel
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)forceInputBarBlurListener:(id)arg0 ;
-(void)setupLayout:(id)arg0 ;
-(void)onEnter;
-(void)onExit;
-(void)dealloc;
-(void)setControl:(id)arg0 ;
-(void)inputTextCallback;
-(void)inputTextEditBeganCallback:(id)arg0 ;
-(void)inputTextEditMovedCallback:(id)arg0 ;
-(void)inputTextEnteredCallback:(id)arg0 ;
-(void)inputTextUpdatedCallback:(id)arg0 ;
-(void)inputReturnKeyPressedCallback;
-(void)dismissNicknameKeyboard;
-(id)nickname;
-(void)clearNickname;
-(void)setNickname:(id)arg0 ;
-(void)showNewsfeedButton:(BOOL)arg0 ;
-(void)setNewsfeedNumber:(int)arg0 ;
-(CGFloat)refresh;
-(CGFloat)onEnterWithPreviousState:(NSUInteger)arg0 fromStack:(BOOL)arg1 ;
-(CGFloat)defaultAnimation;
-(CGFloat)onLeaveWithNewState:(NSUInteger)arg0 toStack:(BOOL)arg1 ;
-(void)hidePromoElements;
-(void)showPromoElements;
-(void)showPromoMenuWithPromoButton:(id)arg0 ;
-(void)showFeatureMenuWithPromoButton:(id)arg0 ;
-(void)hideFeatureMenu;
-(void)hidePromoMenu;
-(id)hidePromoMenuAction;
-(id)showPromoMenuAction;
-(id)hideFeatureMenuAction;
-(id)showFeatureMenuAction;
-(void)enableInput:(BOOL)arg0 ;
-(void)fadeEnabledState:(BOOL)arg0 ;
-(void)tankAnimShowState:(BOOL)arg0 ;
-(void)closeGDPRPopup;
-(void)showGDPRPopup:(BOOL)arg0 ;
-(void)showHelp:(BOOL)arg0 ;
-(BOOL)isHelpShown;
-(void)checkAndShowNicknameLabel;
-(void)switchGameMode:(struct basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > )arg0 ;


@end


#endif