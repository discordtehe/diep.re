// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MENUSETTINGSNODEVIEW_H
#define MENUSETTINGSNODEVIEW_H

@class CCNode<CCLabelProtocol>;

#import <CoreFoundation/CoreFoundation.h>

@class MenuView;
@class MenuItemToggleChildren;
@class MCMenuItemToggleSwipe;
@class MCMenuItemNode;
@class CCNode;
@protocol MenuSettingsViewDelegate;

@interface MenuSettingsNodeView : MenuView {
    MenuItemToggleChildren *_rightToggle;
    MenuItemToggleChildren *_leftToggle;
    MenuItemToggleChildren *_centerToggle;
    CCNode<CCLabelProtocol> *_centerToggleOnText;
    CCNode<CCLabelProtocol> *_centerToggleOffText;
    CCNode<CCLabelProtocol> *_leftToggleOnText;
    CCNode<CCLabelProtocol> *_leftToggleOffText;
    CCNode<CCLabelProtocol> *_rightToggleOnText;
    CCNode<CCLabelProtocol> *_rightToggleOffText;
    MCMenuItemToggleSwipe *_toggleSwipe;
    MCMenuItemNode *_greenButton;
    MCMenuItemNode *_facebookButton;
    MCMenuItemNode *_googleButton;
    MCMenuItemNode *_orangeButton;
    MCMenuItemNode *_blueButton;
    CCNode<CCLabelProtocol> *_leftLabel;
    CCNode<CCLabelProtocol> *_rightLabel;
    CCNode<CCLabelProtocol> *_titleLabel;
    CCNode<CCLabelProtocol> *_firstTitleLabel;
    CCNode *_hint;
    CCNode *_whiteNode;
    NSArray *_rightItems;
}


@property (nonatomic) NSObject<MenuSettingsViewDelegate> *delegate; // ivar: _delegate


-(id)init;
-(void)dealloc;
-(void)hideAll;
-(void)setupTitle:(id)arg0 ;
-(void)setupTitle:(id)arg0 isFirst:(BOOL)arg1 ;
-(void)setupLayoutFacebook;
-(void)setupLayoutFacebook:(id)arg0 buttonText:(id)arg1 ;
-(void)setupLayoutGoogle;
-(void)setupLayoutGoogle:(id)arg0 buttonText:(id)arg1 ;
-(void)setupLayoutGreen:(id)arg0 buttonText:(id)arg1 ;
-(void)setupLayoutBlue:(id)arg0 buttonText:(id)arg1 ;
-(void)setupLayoutOrange:(id)arg0 buttonText:(id)arg1 ;
-(void)setupButtonLayout:(id)arg0 leftText:(id)arg1 buttonText:(id)arg2 ;
-(void)setupToggleSwipe:(id)arg0 ;
-(void)setupLayout:(id)arg0 rightText:(id)arg1 ;
-(void)setupLayout:(id)arg0 leftButtonText:(id)arg1 centerButtonText:(id)arg2 rightButtonText:(id)arg3 ;
-(void)setupLayout:(id)arg0 leftButtonText:(id)arg1 rightButtonText:(id)arg2 ;
-(void)showHint;
-(id)hint;
-(id)getChildWithTag:(NSInteger)arg0 forNode:(id)arg1 ;
-(void)updateLeftButton:(id)arg0 ;
-(void)updateCenterButton:(id)arg0 ;
-(void)updateRightButton:(id)arg0 ;
-(void)updateToggle:(int)arg0 ;
-(void)loadData;
-(void)unloadData;
-(void)hintButtonCallback;
-(void)buttonCallback;
-(void)leftButtonCallback:(id)arg0 ;
-(void)rightButtonCallback:(id)arg0 ;
-(void)centerButtonCallback:(id)arg0 ;
-(void)toggleSwipeCallback:(id)arg0 ;


@end


#endif