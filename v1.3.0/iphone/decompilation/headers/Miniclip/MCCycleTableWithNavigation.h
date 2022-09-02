// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCCYCLETABLEWITHNAVIGATION_H
#define MCCYCLETABLEWITHNAVIGATION_H


#import <CoreFoundation/CoreFoundation.h>

@class CCNode;
@class MCMenuItemNodeRGBAStatic;
@class MCCycleTable;
@class CCMenu;

@interface MCCycleTableWithNavigation : CCNode {
    MCMenuItemNodeRGBAStatic *_leftButton;
    MCMenuItemNodeRGBAStatic *_rightButton;
    MCCycleTable *_cTable;
    CCMenu *_menu;
    NSDictionary *_bookmarSelected;
    NSDictionary *_bookmarkNormal;
    NSDictionary *_bookmarkDisabled;
    BOOL _loaded;
    int _selectedIndex;
    CGSize _tableSize;
    NSMutableArray *_pagesBookmarks;
}




-(id)initWithItems:(id)arg0 defaultCyclePeriod:(float)arg1 size:(struct CGSize )arg2 leftButton:(id)arg3 rightButton:(id)arg4 bookmarkNormalSpriteDict:(id)arg5 bookmarkHiglightedSpriteDict:(id)arg6 bookmarkDisabledSpriteDictionary:(id)arg7 ;
-(void)dealloc;
-(void)onExit;
-(void)prepareLayout:(struct CGSize )arg0 items:(id)arg1 defaultCyclePeriod:(float)arg2 ;
-(id)createBookmark:(int)arg0 ;
-(void)leftButtonPressed;
-(void)rightButtonPressed;
-(void)tableViewUpdatedWithTableUpdate;
-(void)tableViewUpdated;
-(void)updateItems:(id)arg0 ;
-(void)updateBookmarks:(id)arg0 ;
-(id)getCurrentItem;
-(void)setSelectedPage:(int)arg0 ;
-(void)setSelectedPage:(int)arg0 updateTable:(BOOL)arg1 ;
-(void)alignBookmarks;


@end


#endif