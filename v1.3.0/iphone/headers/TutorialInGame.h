// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TUTORIALINGAME_H
#define TUTORIALINGAME_H



@class CCNodeRGBA;
@class MCFramedSprite;
@class MCAdjustableLabelTTF;

@interface TutorialInGame : CCNodeRGBA {
    MCFramedSprite *_leftPanel;
    MCFramedSprite *_rightPanel;
    MCAdjustableLabelTTF *_leftText;
    MCAdjustableLabelTTF *_rightText;
}


@property (nonatomic) BOOL isActive; // ivar: _isActive


-(id)init;
-(void)dealloc;
-(void)didLoadFromCCB;
-(void)fadeOut;
-(void)switchPanelPositions;


@end


#endif