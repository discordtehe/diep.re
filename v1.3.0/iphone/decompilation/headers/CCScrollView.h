// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCSCROLLVIEW_H
#define CCSCROLLVIEW_H


#import <CoreFoundation/CoreFoundation.h>

@class CCLayer;
@class CCNode;
@protocol CCScrollViewDelegate;

@interface CCScrollView : CCLayer {
    CGPoint maxInset_;
    CGPoint minInset_;
    CGPoint scrollDistance_;
    CGFloat touchLength_;
    NSMutableArray *touches_;
    BOOL _abortDeacceleration;
}


@property (retain, nonatomic) CCNode *container_; // ivar: container_
@property (nonatomic) CGPoint touchPoint_; // ivar: touchPoint_
@property (nonatomic) BOOL touchMoved_; // ivar: touchMoved_
@property (nonatomic, setter=setViewSize:) CGSize viewSize; // ivar: viewSize_
@property (nonatomic) CGFloat zoomScale;
@property (nonatomic) CGFloat minZoomScale; // ivar: minScale_
@property (nonatomic) CGFloat maxZoomScale; // ivar: maxScale_
@property (nonatomic) NSObject<CCScrollViewDelegate> *delegate; // ivar: delegate_
@property (readonly, nonatomic) BOOL isDragging; // ivar: isDragging_
@property (nonatomic) BOOL bounces; // ivar: bounces_
@property (nonatomic) int direction; // ivar: direction_
@property (nonatomic) BOOL clipsToBounds; // ivar: clipsToBounds_
@property (nonatomic) CGPoint contentOffset;
@property (retain, nonatomic) CCNode *container;


-(id)initWithViewSize:(struct CGSize )arg0 ;
-(id)initWithViewSize:(struct CGSize )arg0 container:(id)arg1 ;
-(id)init;
-(void)dealloc;
-(void)registerWithTouchDispatcher;
-(BOOL)isNodeVisible:(id)arg0 ;
-(void)pause:(id)arg0 ;
-(void)resume:(id)arg0 ;
-(void)setIsTouchEnabled:(BOOL)arg0 ;
-(void)relocateContainer:(BOOL)arg0 ;
-(struct CGPoint )maxContainerOffset;
-(struct CGPoint )minContainerOffset;
-(void)deaccelerateScrolling:(CGFloat)arg0 ;
-(void)stoppedAnimatedScroll:(id)arg0 ;
-(void)performedAnimatedScroll:(CGFloat)arg0 ;
-(void)setContentSize:(struct CGSize )arg0 ;
-(void)beforeDraw;
-(void)afterDraw;
-(void)visit;
-(BOOL)ccTouchBegan:(id)arg0 withEvent:(id)arg1 ;
-(void)ccTouchMoved:(id)arg0 withEvent:(id)arg1 ;
-(void)ccTouchEnded:(id)arg0 withEvent:(id)arg1 ;
-(void)ccTouchCancelled:(id)arg0 withEvent:(id)arg1 ;
-(struct CGPoint )minInset;
-(struct CGSize )clippingSize;
-(void)abortDeacceleration;
-(struct CGRect )activeArea;
+(id)viewWithViewSize:(struct CGSize )arg0 ;
+(id)viewWithViewSize:(struct CGSize )arg0 container:(id)arg1 ;


@end


#endif