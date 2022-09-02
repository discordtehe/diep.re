// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MENUSOFTUPDATEVIEW_H
#define MENUSOFTUPDATEVIEW_H



@class MenuDefaultPopupView;
@class CCNode;
@class MCAdjustableLabelTTF;

@interface MenuSoftUpdateView : MenuDefaultPopupView {
    CCNode *_imageNode;
    MCAdjustableLabelTTF *_title;
    MCAdjustableLabelTTF *_subtitle;
    MCAdjustableLabelTTF *_description;
    MCAdjustableLabelTTF *_imageDescription;
    MCAdjustableLabelTTF *_rewardName;
    MCAdjustableLabelTTF *_actionLabel;
}




-(void)setupLayout:(id)arg0 isReward:(BOOL)arg1 ;


@end


#endif