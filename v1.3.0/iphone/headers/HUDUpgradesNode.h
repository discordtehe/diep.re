// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef HUDUPGRADESNODE_H
#define HUDUPGRADESNODE_H



@class MCMenuItemNodeRGBA;
@class MCAdjustableLabelTTF;
@class CCNode;
@class CCSprite;

@interface HUDUpgradesNode : MCMenuItemNodeRGBA {
    int _tankClassType;
    MCAdjustableLabelTTF *_className;
    MCAdjustableLabelTTF *_ignoreLabel;
    CCNode *_classSprites;
    CCSprite *_backgroundBlue;
    CCSprite *_backgroundGreen;
    CCSprite *_backgroundRed;
    CCSprite *_backgroundYellow;
    CCSprite *_backgroundDarkBlue;
    CCSprite *_assassin;
    CCSprite *_destroyer;
    CCSprite *_flankGuard;
    CCSprite *_gunner;
    CCSprite *_hunter;
    CCSprite *_machineGun;
    CCSprite *_necromancer;
    CCSprite *_octoTank;
    CCSprite *_overlord;
    CCSprite *_overseer;
    CCSprite *_pentaShot;
    CCSprite *_quadTank;
    CCSprite *_sniper;
    CCSprite *_stalker;
    CCSprite *_triangle;
    CCSprite *_tripleShot;
    CCSprite *_tripleTwin;
    CCSprite *_triplet;
    CCSprite *_twinFlank;
    CCSprite *_twin;
    CCSprite *_ranger;
    CCSprite *_booster;
    CCSprite *_fighter;
    CCSprite *_hybrid;
    CCSprite *_manager;
    CCSprite *_xhunter;
    CCSprite *_sprayer;
    CCSprite *_predator;
    CCSprite *_trapper;
    CCSprite *_gunnerTrapper;
    CCSprite *_overTrapper;
    CCSprite *_megaTrapper;
    CCSprite *_triTrapper;
    CCSprite *_smasher;
    CCSprite *_megaSmasher;
    CCSprite *_landmine;
    CCSprite *_autoGunner;
    CCSprite *_auto5;
    CCSprite *_auto3;
    CCSprite *_spreadshot;
    CCSprite *_streamliner;
    CCSprite *_autoTrapper;
}




-(void)refreshWithClassType:(int)arg0 ;
-(void)setTankClassType:(int)arg0 ;
-(void)setClassNameText:(int)arg0 ;
-(void)setClassBackgroundImage:(unsigned int)arg0 ;
-(void)setClassTankImage:(int)arg0 ;
-(void)callback;
-(void)setIgnoreLabel;
-(void)ignoreCallback;
-(void)runAnimation;
+(id)HUDUpgradesNodeIgnore;
+(id)HUDUpgradesNodeEmpty;


@end


#endif