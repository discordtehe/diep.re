// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MENUPAUSEVIEW_H
#define MENUPAUSEVIEW_H



@class MenuView;
@class MCMenuItemNode;

@interface MenuPauseView : MenuView {
    MCMenuItemNode *_noButton;
    MCMenuItemNode *_yesButton;
}




-(void)setupDisabledLayout;
-(void)disableInput;
-(void)enableInput;


@end


#endif