// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef HUDSTATSNODE_H
#define HUDSTATSNODE_H


#import <CoreFoundation/CoreFoundation.h>

@class MCMenuItemNodeRGBA;
@class CCSprite;
@class MCAdjustableLabelTTF;

@interface HUDStatsNode : MCMenuItemNodeRGBA {
    int _statType;
    CCSprite *_upperBody;
    CCSprite *_fullStatSprite;
    MCAdjustableLabelTTF *_statName;
    MCAdjustableLabelTTF *_iconIncomplete;
    CCSprite *_iconComplete;
    CCSprite *_movementSpeedBar;
    CCSprite *_reloadBar;
    CCSprite *_bulletDamageBar;
    CCSprite *_bulletPenetrationBar;
    CCSprite *_bulletSpeedBar;
    CCSprite *_bodyDamageBar;
    CCSprite *_maxHealthBar;
    CCSprite *_healthRegenBar;
    CCSprite *_barEmpty0;
    CCSprite *_barEmpty1;
    CCSprite *_barEmpty2;
    CCSprite *_barEmpty3;
    CCSprite *_barEmpty4;
    CCSprite *_barEmpty5;
    CCSprite *_barEmpty6;
    NSArray *_emptyBars;
    int _statMax;
    int _currentStatValue;
    BOOL _ccbLoaded;
}




-(id)init;
-(void)didLoadFromCCB;
-(void)setStatType:(int)arg0 ;
-(void)setStatNameText;
-(void)setStatImages;
-(void)callback;
-(void)setStatWithValue:(int)arg0 ;
-(void)refreshStat;
-(void)refreshStatName;
+(id)HUDStatsNodeWithStatType:(int)arg0 ;


@end


#endif