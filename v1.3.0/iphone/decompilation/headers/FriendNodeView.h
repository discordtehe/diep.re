// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FRIENDNODEVIEW_H
#define FRIENDNODEVIEW_H

@class PlayerAvatar;


@class CCNode;
@class MCAdjustableLabelTTF;
@class MCToggle;
@class CCTableMenu;
@class MCMenuItemNode;

@interface FriendNodeView : CCNode {
    MCAdjustableLabelTTF *_nameLabel;
    PlayerAvatar *_playerAvatar;
    MCToggle *_checkBox;
    CCTableMenu *_menu;
    MCMenuItemNode *_mainButton;
    id *_target;
    SEL _selector;
}




-(void)fillNode:(id)arg0 imageURL:(id)arg1 facebookID:(id)arg2 target:(id)arg3 selector:(SEL)arg4 ;
-(void)changeToggleState:(NSUInteger)arg0 ;
-(NSUInteger)getToggleState;
-(void)cleanNode;
-(void)dealloc;
-(void)setMenuTable:(id)arg0 ;
-(void)friendPressed;


@end


#endif