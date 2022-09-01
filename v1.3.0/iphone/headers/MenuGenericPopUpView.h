// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MENUGENERICPOPUPVIEW_H
#define MENUGENERICPOPUPVIEW_H



@class MenuDefaultPopupView;
@class MCAdjustableLabelTTF;
@class MCMenuItemNode;
@class CCNode;

@interface MenuGenericPopUpView : MenuDefaultPopupView {
    MCAdjustableLabelTTF *_innerFrameText;
    MCAdjustableLabelTTF *_title;
    MCMenuItemNode *_closeButton;
    MCMenuItemNode *_yesButton;
    MCMenuItemNode *_noButton;
    MCMenuItemNode *_actionButton;
    MCAdjustableLabelTTF *_yesLabel;
    MCAdjustableLabelTTF *_noLabel;
    MCAdjustableLabelTTF *_actionLabel;
    CCNode *_innerFrameNode;
}




-(void)setupLargeLayout:(id)arg0 title:(id)arg1 ;
-(void)setupSmallLayout:(id)arg0 title:(id)arg1 yesLabel:(id)arg2 noLabel:(id)arg3 ;
-(void)setupSmallLayout:(id)arg0 title:(id)arg1 actionLabel:(id)arg2 ;
-(void)setupSmallLayout:(id)arg0 ;
-(void)disableCloseButton;
-(struct CGSize )innerSize;


@end


#endif