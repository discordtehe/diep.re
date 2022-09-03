// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MENUFEATURENOTAVAILABLEVIEW_H
#define MENUFEATURENOTAVAILABLEVIEW_H



@class MenuDefaultPopupView;
@class MCMenuItemNode;
@class MCAdjustableLabelTTF;

@interface MenuFeatureNotAvailableView : MenuDefaultPopupView {
    MCMenuItemNode *_gPlusButton;
    MCMenuItemNode *_fbWithGPlusButton;
    MCMenuItemNode *_fbSoloButton;
    MCAdjustableLabelTTF *_iosTitle;
    MCAdjustableLabelTTF *_androidTitle;
}




-(void)setupLayout;
-(void)setupForGPlus;
-(void)setupNormal;
-(void)setupLayoutWithFacebookButtonOnly;


@end


#endif