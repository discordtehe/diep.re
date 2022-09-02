// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol UIScrollViewDelegate



@optional
-(void)scrollViewDidScroll:(id)arg0 ;
-(void)scrollViewDidZoom:(id)arg0 ;
-(void)scrollViewWillBeginDragging:(id)arg0 ;
-(void)scrollViewWillEndDragging:(id)arg0 withVelocity:(struct CGPoint )arg1 targetContentOffset:(struct CGPoint *)arg2 ;
-(void)scrollViewDidEndDragging:(id)arg0 willDecelerate:(BOOL)arg1 ;
-(void)scrollViewWillBeginDecelerating:(id)arg0 ;
-(void)scrollViewDidEndDecelerating:(id)arg0 ;
-(void)scrollViewDidEndScrollingAnimation:(id)arg0 ;
-(id)viewForZoomingInScrollView:(id)arg0 ;
-(void)scrollViewWillBeginZooming:(id)arg0 withView:(id)arg1 ;
-(void)scrollViewDidEndZooming:(id)arg0 withView:(id)arg1 atScale:(CGFloat)arg2 ;
-(BOOL)scrollViewShouldScrollToTop:(id)arg0 ;
-(void)scrollViewDidScrollToTop:(id)arg0 ;
-(void)scrollViewDidChangeAdjustedContentInset:(id)arg0 ;
@end

