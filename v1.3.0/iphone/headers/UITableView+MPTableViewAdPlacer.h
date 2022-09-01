// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@interface UITableView (MPTableViewAdPlacer)



-(void)mp_setAdPlacer:(id)arg0 ;
-(id)mp_adPlacer;
-(void)mp_setDelegate:(id)arg0 ;
-(id)mp_delegate;
-(void)mp_setDataSource:(id)arg0 ;
-(id)mp_dataSource;
-(void)mp_reloadData;
-(struct CGRect )mp_rectForRowAtIndexPath:(id)arg0 ;
-(id)mp_indexPathForRowAtPoint:(struct CGPoint )arg0 ;
-(id)mp_indexPathForCell:(id)arg0 ;
-(id)mp_indexPathsForRowsInRect:(struct CGRect )arg0 ;
-(id)mp_cellForRowAtIndexPath:(id)arg0 ;
-(id)mp_visibleCells;
-(id)mp_indexPathsForVisibleRows;
-(void)mp_scrollToRowAtIndexPath:(id)arg0 atScrollPosition:(NSInteger)arg1 animated:(BOOL)arg2 ;
-(void)mp_beginUpdates;
-(void)mp_endUpdates;
-(void)mp_insertSections:(id)arg0 withRowAnimation:(NSInteger)arg1 ;
-(void)mp_deleteSections:(id)arg0 withRowAnimation:(NSInteger)arg1 ;
-(void)mp_reloadSections:(id)arg0 withRowAnimation:(NSInteger)arg1 ;
-(void)mp_moveSection:(NSInteger)arg0 toSection:(NSInteger)arg1 ;
-(void)mp_insertRowsAtIndexPaths:(id)arg0 withRowAnimation:(NSInteger)arg1 ;
-(void)mp_deleteRowsAtIndexPaths:(id)arg0 withRowAnimation:(NSInteger)arg1 ;
-(void)mp_reloadRowsAtIndexPaths:(id)arg0 withRowAnimation:(NSInteger)arg1 ;
-(void)mp_moveRowAtIndexPath:(id)arg0 toIndexPath:(id)arg1 ;
-(id)mp_indexPathForSelectedRow;
-(id)mp_indexPathsForSelectedRows;
-(void)mp_selectRowAtIndexPath:(id)arg0 animated:(BOOL)arg1 scrollPosition:(NSInteger)arg2 ;
-(void)mp_deselectRowAtIndexPath:(id)arg0 animated:(BOOL)arg1 ;
-(id)mp_dequeueReusableCellWithIdentifier:(id)arg0 forIndexPath:(id)arg1 ;
@end


