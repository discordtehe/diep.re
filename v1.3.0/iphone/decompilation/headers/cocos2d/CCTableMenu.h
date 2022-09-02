// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCTABLEMENU_H
#define CCTABLEMENU_H



@class CCMenu;
@class CCTable;

@interface CCTableMenu : CCMenu

@property (nonatomic) CCTable *table; // ivar: mTable
@property (nonatomic) BOOL ignoreTableCells; // ivar: mIgnoreTableCells
@property (nonatomic) BOOL ignoreMenuItems; // ivar: mIgnoreMenuItems


-(void)ccTouchMoved:(id)arg0 withEvent:(id)arg1 ;
-(void)reset;
-(void)removeChild:(id)arg0 cleanup:(BOOL)arg1 ;
-(BOOL)ccTouchBegan:(id)arg0 withEvent:(id)arg1 ;
-(void)ccTouchEnded:(id)arg0 withEvent:(id)arg1 ;
-(void)ccTouchCancelled:(id)arg0 withEvent:(id)arg1 ;


@end


#endif