// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MENUPROFILEVIEW_H
#define MENUPROFILEVIEW_H



@class MenuDefaultFullScreenView;
@class CCMenu;
@class CCSprite;
@class MCMenuItemNode;
@class MCAdjustableLabelTTF;
@class HorizontalStretchFrame;

@interface MenuProfileView : MenuDefaultFullScreenView {
    CCMenu *menu;
    CCSprite *_profileImage;
    MCMenuItemNode *_playGamesAchievementsButton;
    MCAdjustableLabelTTF *_nameLabel;
    MCAdjustableLabelTTF *_idLabel;
    MCAdjustableLabelTTF *_cashLabel;
    CCSprite *_cashIcon;
    HorizontalStretchFrame *_xpBarFrame;
    HorizontalStretchFrame *_xpBarFill;
    MCAdjustableLabelTTF *_levelLabel;
    MCAdjustableLabelTTF *_experiencePointsLabel;
    MCAdjustableLabelTTF *_totalGamesLabel;
    MCAdjustableLabelTTF *_totalGamesValue;
    MCAdjustableLabelTTF *_totalMassLabel;
    MCAdjustableLabelTTF *_totalMassValue;
    MCAdjustableLabelTTF *_averageMassLabel;
    MCAdjustableLabelTTF *_averageMassValue;
    MCAdjustableLabelTTF *_highestMassLabel;
    MCAdjustableLabelTTF *_highestMassValue;
    MCAdjustableLabelTTF *_longestTimeLabel;
    MCAdjustableLabelTTF *_longestTimeValue;
    MCAdjustableLabelTTF *_totalCellsEatenLabel;
    MCAdjustableLabelTTF *_totalCellsEatenValue;
}




-(void)setupLayout;
-(void)setDisplayName:(id)arg0 userId:(id)arg1 ;
-(void)setCoinsValue:(int)arg0 ;
-(void)setLevel:(int)arg0 ;
-(void)setXp:(int)arg0 withXpToNextLevel:(int)arg1 lastLevel:(BOOL)arg2 ;
-(void)setTotalGames:(int)arg0 ;
-(void)setTotalMass:(int)arg0 ;
-(void)setAverageMass:(int)arg0 ;
-(void)setHighestMass:(int)arg0 ;
-(void)setLongestTimeAlive:(int)arg0 ;
-(void)setTotalCellsEaten:(int)arg0 ;


@end


#endif