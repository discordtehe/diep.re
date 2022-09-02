// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@interface UICollectionView (MPCollectionViewAdPlacer)



-(void)mp_setAdPlacer:(id)arg0 ;
-(id)mp_adPlacer;
-(void)mp_setDelegate:(id)arg0 ;
-(id)mp_delegate;
-(void)mp_setDataSource:(id)arg0 ;
-(id)mp_dataSource;
-(id)mp_dequeueReusableCellWithReuseIdentifier:(id)arg0 forIndexPath:(id)arg1 ;
-(id)mp_indexPathsForSelectedItems;
-(void)mp_selectItemAtIndexPath:(id)arg0 animated:(BOOL)arg1 scrollPosition:(NSUInteger)arg2 ;
-(void)mp_deselectItemAtIndexPath:(id)arg0 animated:(BOOL)arg1 ;
-(void)mp_reloadData;
-(id)mp_layoutAttributesForItemAtIndexPath:(id)arg0 ;
-(id)mp_indexPathForItemAtPoint:(struct CGPoint )arg0 ;
-(id)mp_indexPathForCell:(id)arg0 ;
-(id)mp_cellForItemAtIndexPath:(id)arg0 ;
-(id)mp_visibleCells;
-(id)mp_indexPathsForVisibleItems;
-(void)mp_scrollToItemAtIndexPath:(id)arg0 atScrollPosition:(NSUInteger)arg1 animated:(BOOL)arg2 ;
-(void)mp_insertSections:(id)arg0 ;
-(void)mp_deleteSections:(id)arg0 ;
-(void)mp_reloadSections:(id)arg0 ;
-(void)mp_moveSection:(NSInteger)arg0 toSection:(NSInteger)arg1 ;
-(void)mp_insertItemsAtIndexPaths:(id)arg0 ;
-(void)mp_deleteItemsAtIndexPaths:(id)arg0 ;
-(void)mp_reloadItemsAtIndexPaths:(id)arg0 ;
-(void)mp_moveItemAtIndexPath:(id)arg0 toIndexPath:(id)arg1 ;
@end


