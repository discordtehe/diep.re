// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef HUDSMASHERSTATSNODE_H
#define HUDSMASHERSTATSNODE_H



@class HUDStatsNode;
@class CCSprite;

@interface HUDSmasherStatsNode : HUDStatsNode {
    int _smasherStatType;
    CCSprite *_barEmpty7;
    CCSprite *_barEmpty8;
    CCSprite *_barEmpty9;
    CCSprite *_barEmpty10;
}




-(void)didLoadFromCCB;
-(void)setSmasherStatType:(int)arg0 ;
-(void)setStatImages;
-(void)callback;
-(void)setStatWithValue:(int)arg0 ;
-(void)refreshStat;
+(id)HUDSmasherStatsNodeWithStatType:(int)arg0 ;


@end


#endif