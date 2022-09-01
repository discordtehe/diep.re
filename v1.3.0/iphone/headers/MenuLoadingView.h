// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MENULOADINGVIEW_H
#define MENULOADINGVIEW_H



@class MenuView;
@class CCNodeRGBA;
@class FramedSprite;
@class LoadingWidget;
@class MCAdjustableLabelTTF;

@interface MenuLoadingView : MenuView {
    CCNodeRGBA *_fadeNode;
    FramedSprite *_localBackgroundFrame;
    LoadingWidget *_loadingWidget;
    MCAdjustableLabelTTF *_descriptionLabel;
    CCNodeRGBA *_background;
}




-(void)setupLayoutWithMessage:(id)arg0 ;
-(void)setupFramedLayoutWithMessage:(id)arg0 ;
-(void)setupBackgroundOpacity;


@end


#endif