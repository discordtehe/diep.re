// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MENUHOURLYREWARDVIEW_H
#define MENUHOURLYREWARDVIEW_H



@class MenuDefaultPopupView;
@class MCAdjustableLabelTTF;
@class CCSprite;
@class CCParticleSystem;
@class CCNode;

@interface MenuHourlyRewardView : MenuDefaultPopupView {
    MCAdjustableLabelTTF *_subtitle;
    MCAdjustableLabelTTF *_coinLabel;
    CCSprite *_coinSprite;
    float _popUpAnimationDuration;
    float _coinParticlesDuration;
    CCParticleSystem *_coinParticles;
    CCNode *_innerFrame;
}




-(void)setupLayout;
-(CGFloat)onEnterWithPreviousState:(NSUInteger)arg0 fromStack:(BOOL)arg1 ;
-(void)createCoinParticles;
-(void)coinAnimation;
-(void)coinParticles;


@end


#endif