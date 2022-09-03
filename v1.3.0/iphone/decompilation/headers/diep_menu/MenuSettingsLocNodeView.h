// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MENUSETTINGSLOCNODEVIEW_H
#define MENUSETTINGSLOCNODEVIEW_H



@class MenuView;
@class MCAdjustableLabelTTF;
@class CCNode;
@class CCSprite;
@class CCTableMenu;
@class MCMenuItemNodeStatic;

@interface MenuSettingsLocNodeView : MenuView {
    MCAdjustableLabelTTF *_nodeLanguage;
    CCNode *_outerFrame;
    CCSprite *_flagPosition;
    CCSprite *_flagSprite;
    CCTableMenu *_menu;
    MCMenuItemNodeStatic *_nodeButton;
    BOOL _isSelected;
    BOOL _isHovering;
}




-(void)setupLayout;
-(void)disableInput;
-(void)enableInput;
-(void)setCountry:(id)arg0 flag:(id)arg1 ;
-(void)setSelected:(BOOL)arg0 ;
-(void)setHovering;
-(BOOL)isHovering;


@end


#endif