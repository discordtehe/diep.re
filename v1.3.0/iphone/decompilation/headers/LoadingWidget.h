// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef LOADINGWIDGET_H
#define LOADINGWIDGET_H



@class CCNode;
@class MCAdjustableLabelTTF;

@interface LoadingWidget : CCNode {
    MCAdjustableLabelTTF *_descriptionLabel;
}




-(id)init;
-(void)dealloc;
-(void)didLoadFromCCBAfterChildren;
-(void)setLoadingDescription:(id)arg0 ;
-(void)runAnim;
-(void)stopAnim;
+(id)widget;
+(id)widgetRunningAnim;


@end


#endif