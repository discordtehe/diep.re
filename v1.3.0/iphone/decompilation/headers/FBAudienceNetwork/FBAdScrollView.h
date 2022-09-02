// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADSCROLLVIEW_H
#define FBADSCROLLVIEW_H


#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class FBAdTouchPassthroughView;
@class FBGradientView;
@protocol UIScrollViewDelegate;
@protocol FBAdScrollView;
@protocol FBAdScrollViewDelegate;

@interface FBAdScrollView : UIView <UIScrollViewDelegate, FBAdScrollView>



@property (weak, nonatomic) UIScrollView *scrollView; // ivar: _scrollView
@property (weak, nonatomic) FBAdTouchPassthroughView *hitTestView; // ivar: _hitTestView
@property (retain, nonatomic) NSPointerArray *cellViews; // ivar: _cellViews
@property (retain, nonatomic) NSMapTable *cellMapping; // ivar: _cellMapping
@property (nonatomic, getter=isLoading) BOOL loading; // ivar: _loading
@property (weak, nonatomic) FBGradientView *leftGradientView; // ivar: _leftGradientView
@property (weak, nonatomic) FBGradientView *rightGradientView; // ivar: _rightGradientView
@property (weak, nonatomic) UIViewController *rootViewController; // ivar: _rootViewController
@property (nonatomic, getter=isAnimationEnabled) BOOL animationEnabled; // ivar: _animationEnabled
@property (nonatomic) BOOL debugMode; // ivar: _debugMode
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
-(void)loadCells;
-(void)commonInitialization;
-(void)didMoveToSuperview;
-(void)setFrame:(struct CGRect )arg0 ;
-(void)setBounds:(struct CGRect )arg0 ;
-(void)setHidden:(BOOL)arg0 ;
-(void)updateView:(BOOL)arg0 ;
-(void)dealloc;
-(struct CGRect )scrollFrame;
-(void)setupScrollViewSize;
-(CGFloat)ratio;
-(void)repositionScrollView;
-(void)setupContentSize;
-(void)positionGradient;
// -(void)animateWithFade:(BOOL)arg0 view:(id)arg1 animations:(id)arg2 completion:(unk)arg3  ;
-(CGFloat)paddingforPage:(NSUInteger)arg0 ;
-(CGFloat)paddingTotal;
-(void)loadPages;
-(void)loadPage:(NSUInteger)arg0 ;
-(id)childViewForData:(id)arg0 withPosition:(NSUInteger)arg1 ;
-(void)populate:(id)arg0 forIndex:(NSUInteger)arg1 ;
-(void)addAllCells;
-(NSUInteger)addCellForData:(id)arg0 withPosition:(NSUInteger)arg1 ;
-(NSUInteger)indexForData:(id)arg0 ;
-(NSUInteger)count;
-(id)viewForData:(id)arg0 ;
-(void)removeAllCells;
-(void)removeAllCells:(id)arg0 ;
-(void)detachAllNativeAds:(id)arg0 ;
-(void)mapData:(id)arg0 toView:(id)arg1 ;
-(id)nativeAdForView:(id)arg0 ;
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
+(void)initialize;


@end


#endif