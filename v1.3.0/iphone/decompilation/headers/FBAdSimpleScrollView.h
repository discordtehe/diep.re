// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADSIMPLESCROLLVIEW_H
#define FBADSIMPLESCROLLVIEW_H


#import <UIKit/UIKit.h>
#import <CoreFoundation/CoreFoundation.h>
#import <Foundation/Foundation.h>

@protocol UIScrollViewDelegate;
@protocol FBAdScrollView;
@protocol FBAdScrollViewDelegate;

@interface FBAdSimpleScrollView : UIView <UIScrollViewDelegate, FBAdScrollView>



@property (retain, nonatomic) NSMutableArray *pages; // ivar: _pages
@property (weak, nonatomic) UIScrollView *scrollView; // ivar: _scrollView
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
@property (copy, nonatomic) NSArray *data; // ivar: _data
@property (copy, nonatomic) id *childViewProvider; // ivar: _childViewProvider
@property (weak, nonatomic) NSObject<FBAdScrollViewDelegate> *delegate; // ivar: _delegate
@property (readonly, nonatomic) NSUInteger maximumNativeAdCount; // ivar: _maximumNativeAdCount
@property (nonatomic) CGFloat xPadding; // ivar: _xPadding
@property (nonatomic) CGFloat yPadding; // ivar: _yPadding
@property (nonatomic) CGFloat xInset; // ivar: _xInset


-(id)initWithCoder:(id)arg0 ;
-(id)initWithFrame:(struct CGRect )arg0 ;
-(void)commonInitialization;
-(void)updateView:(BOOL)arg0 ;
-(void)layoutSubviews;
-(void)removePages;
-(void)loadPages;
-(id)pageForPosition:(NSInteger)arg0 withData:(id)arg1 ;
-(void)layoutPages;
-(CGFloat)pageFrameWidth;
-(struct CGPoint )paginatedOffsetForOffset:(struct CGPoint )arg0 scrollView:(id)arg1 xPadding:(CGFloat)arg2 pageFrameWidth:(CGFloat)arg3 pageCount:(NSInteger)arg4 ;
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


@end


#endif