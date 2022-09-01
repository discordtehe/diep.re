// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef HUDLEVELBAR_H
#define HUDLEVELBAR_H



@class CCNode;
@class MCFramedSprite;
@class MCAdjustableLabelTTF;

@interface HUDLevelBar : CCNode {
    CCNode *_progressBarFrame;
    MCFramedSprite *_progressBar;
    MCAdjustableLabelTTF *_infoText;
}




-(void)enterLevelBar;
-(void)leaveLevelBar;
-(void)setXPWithValue:(float)arg0 ;
-(void)setXPBarWithText:(id)arg0 ;


@end


#endif