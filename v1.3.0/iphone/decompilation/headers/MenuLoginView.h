// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MENULOGINVIEW_H
#define MENULOGINVIEW_H



@class MenuView;
@class CCNode;
@class CCMenu;
@class CCSprite;

@interface MenuLoginView : MenuView {
    CCNode *androidNode;
    CCMenu *androidMenu;
    CCNode *iosNode;
    CCMenu *iosMenu;
    CCNode *loginButtonsNode;
    CCMenu *menu;
    CCSprite *backgroundSprite;
}




-(void)setupLayout;
-(void)setLoginButtonsNodeVisibility:(BOOL)arg0 ;
-(void)dealloc;


@end


#endif