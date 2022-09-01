// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MENUCREDITSVIEW_H
#define MENUCREDITSVIEW_H



@class MenuDefaultFullScreenView;
@class CCMutableCellTable;
@class MCScrollBar;
@class CCNode;

@interface MenuCreditsView : MenuDefaultFullScreenView {
    CCMutableCellTable *_table;
    MCScrollBar *_scrollbar;
    CCNode *_bgNodeiPad;
    CCNode *_bgNodeiPhone;
}




-(void)setupLayout;
-(void)createTable;
-(void)createNodes;
-(id)bgNode;
-(void)onEnter;
-(void)onExit;
-(struct CGSize )viewCellSize;
-(struct CGSize )largeViewCellSizeWithText:(id)arg0 ;
-(void)scrollCallback;
+(struct CGSize )tableCellSize;
+(struct CGSize )largeTableCellSize:(id)arg0 ;
+(float)numVisibleItems;


@end


#endif