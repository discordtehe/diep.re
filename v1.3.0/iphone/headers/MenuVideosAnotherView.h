// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MENUVIDEOSANOTHERVIEW_H
#define MENUVIDEOSANOTHERVIEW_H



@class MenuGenericPopUpView;
@class MCAdjustableLabelTTF;

@interface MenuVideosAnotherView : MenuGenericPopUpView {
    MCAdjustableLabelTTF *_videoAnotherTitle;
    MCAdjustableLabelTTF *_videoAnotherLabel;
    MCAdjustableLabelTTF *_videoTutorialTitle;
    MCAdjustableLabelTTF *_videoTutorialLabel;
}




-(void)setupVideoAnotherLayout:(int)arg0 ;
-(void)setupVideoTutorialLayout:(int)arg0 ;


@end


#endif