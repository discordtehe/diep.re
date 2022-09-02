// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCNODE_H
#define CCNODE_H


#import <Foundation/Foundation.h>

@class CCCamera;
@class CCScheduler;
@class CCActionManager;
@class CCArray;
@class CCGridBase;
@class CCNode;
@class CCGLProgram;
@protocol TestableCCItem;

@interface CCNode : NSObject <TestableCCItem>

 {
    RenderJob _mcRenderJob;
    CGAffineTransform _transform;
    CGAffineTransform _inverse;
    CCCamera *_camera;
    CCScheduler *_scheduler;
    CCActionManager *_actionManager;
    BOOL _isTransformDirty;
    BOOL _isInverseDirty;
    BOOL _isReorderChildDirty;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
@property (retain, nonatomic) id *debugTag; // ivar: _debugTag
@property (retain, nonatomic) NSString *debugContext; // ivar: _debugContext
@property (nonatomic) NSInteger zOrder; // ivar: _zOrder
@property (nonatomic) float vertexZ; // ivar: _vertexZ
@property (nonatomic) float skewX; // ivar: _skewX
@property (nonatomic) float skewY; // ivar: _skewY
@property (nonatomic) float rotation;
@property (nonatomic) float rotationX; // ivar: _rotationX
@property (nonatomic) float rotationY; // ivar: _rotationY
@property (nonatomic) float yAxisRotation; // ivar: _yAxisRotation
@property (nonatomic) float xAxisRotation; // ivar: _xAxisRotation
@property (nonatomic) BOOL isBeingLoadedFromCCB; // ivar: _isBeingLoadedFromCCB
@property (nonatomic) float scale;
@property (nonatomic) float scaleX; // ivar: _scaleX
@property (nonatomic) float scaleY; // ivar: _scaleY
@property (nonatomic) CGPoint position; // ivar: _position
@property (readonly, nonatomic) CCCamera *camera;
@property (readonly, nonatomic) CCArray *children; // ivar: _children
@property (retain, nonatomic) CCGridBase *grid; // ivar: _grid
@property (nonatomic) BOOL visible; // ivar: _visible
@property (nonatomic) CGPoint anchorPoint; // ivar: _anchorPoint
@property (readonly, nonatomic) CGPoint anchorPointInPoints; // ivar: _anchorPointInPoints
@property (nonatomic) CGSize contentSize; // ivar: _contentSize
@property (readonly, nonatomic) BOOL isRunning; // ivar: _isRunning
@property (nonatomic) CCNode *parent; // ivar: _parent
@property (nonatomic) BOOL ignoreAnchorPointForPosition; // ivar: _ignoreAnchorPointForPosition
@property (nonatomic) NSInteger tag; // ivar: _tag
@property (nonatomic) *void userData; // ivar: _userData
@property (retain, nonatomic) id *userObject; // ivar: _userObject
@property (retain, nonatomic) CCGLProgram *shaderProgram; // ivar: _shaderProgram
@property (nonatomic) NSUInteger orderOfArrival; // ivar: _orderOfArrival
@property (nonatomic) int glServerState; // ivar: _glServerState
@property (retain, nonatomic) CCActionManager *actionManager;
@property (retain, nonatomic) CCScheduler *scheduler;


-(void)makeDescendantsPerformSelector:(SEL)arg0 ;
-(void)makeDescendantsPerformSelector:(SEL)arg0 predicate:(*unk)arg1 ;
-(void)makeDescendantsPerformSelector:(SEL)arg0 target:(id)arg1 predicateSelector:(SEL)arg2 ;
-(void)makeDescendantsPerformSelector:(SEL)arg0 withObject:(id)arg1 ;
-(void)makeDescendantsPerformSelector:(SEL)arg0 withObject:(id)arg1 predicate:(*unk)arg2 ;
-(void)makeDescendantsPerformSelector:(SEL)arg0 withObject:(id)arg1 predicateTarget:(id)arg2 predicateSelector:(SEL)arg3 ;
-(void)makeDescendantsRunAction:(id)arg0 ;
-(void)makeDescendantsRunAction:(id)arg0 predicate:(*unk)arg1 ;
-(void)makeDescendantsRunAction:(id)arg0 predicateTarget:(id)arg1 predicateSelector:(SEL)arg2 ;
-(void)visitDescendants:(*unk)arg0 ;
-(void)visitDescendants:(*unk)arg0 withObject:(id)arg1 ;
-(void)visitDescendants:(*unk)arg0 withData:(*void)arg1 ;
-(void)visitDescendantsUsingTarget:(id)arg0 selector:(SEL)arg1 ;
-(void)visitDescendantsUsingTarget:(id)arg0 selector:(SEL)arg1 withObject:(id)arg2 ;
-(void)visitDescendantsUsingTarget:(id)arg0 selector:(SEL)arg1 withData:(*void)arg2 ;
-(void)makeDescendantsPerformSelector:(SEL)arg0 predicateBlock:(id)arg1 ;
-(void)makeDescendantsPerformSelector:(SEL)arg0 withObject:(id)arg1 predicateBlock:(id)arg2 ;
-(void)makeDescendantsRunAction:(id)arg0 predicateBlock:(id)arg1 ;
-(void)visitDescendantsUsingBlock:(id)arg0 ;
-(void)setID:(id)arg0 ;
-(void)setID:(id)arg0 context:(id)arg1 ;
-(id)context;
-(id)uniqueID;
-(BOOL)simulateTouch;
-(BOOL)simulateRelease;
-(BOOL)simulateDrag:(float)arg0 ;
-(BOOL)simulateDragToTag:(id)arg0 ;
-(int)countSubitems;
-(struct CGPoint )absolutePositionFromRelative:(struct CGPoint )arg0 type:(int)arg1 parentSize:(struct CGSize )arg2 propertyName:(id)arg3 ;
-(void)setRelativePosition:(struct CGPoint )arg0 type:(int)arg1 parentSize:(struct CGSize )arg2 propertyName:(id)arg3 ;
-(void)setRelativePosition:(struct CGPoint )arg0 type:(int)arg1 parentSize:(struct CGSize )arg2 ;
-(void)setRelativePosition:(struct CGPoint )arg0 type:(int)arg1 ;
-(struct CGSize )calculateRelativeSize:(struct CGSize )arg0 type:(int)arg1 parentSize:(struct CGSize )arg2 ;
-(void)setRelativeSize:(struct CGSize )arg0 type:(int)arg1 parentSize:(struct CGSize )arg2 propertyName:(id)arg3 ;
-(void)setRelativeSize:(struct CGSize )arg0 type:(int)arg1 parentSize:(struct CGSize )arg2 ;
-(void)setRelativeSize:(struct CGSize )arg0 type:(int)arg1 ;
-(float)resolutionScale;
-(void)setRelativeScaleX:(float)arg0 Y:(float)arg1 type:(int)arg2 propertyName:(id)arg3 ;
-(void)setRelativeScaleX:(float)arg0 Y:(float)arg1 type:(int)arg2 ;
-(float)calculateRelativeFloat:(float)arg0 type:(int)arg1 ;
-(void)setRelativeFloat:(float)arg0 type:(int)arg1 propertyName:(id)arg2 ;
-(void)setHeight:(float)arg0 ;
-(void)setWidth:(float)arg0 ;
-(void)setIsRelativeAnchorPoint:(BOOL)arg0 ;
-(BOOL)isRelativeAnchorPoint;
-(struct CGSize )inchSize;
-(void)setInchWidth:(float)arg0 proportional:(BOOL)arg1 ;
-(void)setInchHeight:(float)arg0 proportional:(BOOL)arg1 ;
-(void)setInchSize:(struct CGSize )arg0 ;
-(id)init;
-(void)cleanup;
-(void)dealloc;
-(void)didLoadFromCCB;
-(void)didLoadFromCCBAfterChildren;
-(struct CGRect )boundingBox;
-(id)getChildByTag:(NSInteger)arg0 ;
-(void)addChild:(id)arg0 z:(NSInteger)arg1 tag:(NSInteger)arg2 ;
-(void)addChild:(id)arg0 z:(NSInteger)arg1 ;
-(void)addChild:(id)arg0 ;
-(void)removeFromParent;
-(void)removeFromParentAndCleanup:(BOOL)arg0 ;
-(void)removeChild:(id)arg0 ;
-(void)removeChild:(id)arg0 cleanup:(BOOL)arg1 ;
-(void)removeChildByTag:(NSInteger)arg0 ;
-(void)removeChildByTag:(NSInteger)arg0 cleanup:(BOOL)arg1 ;
-(void)removeAllChildren;
-(void)removeAllChildrenWithCleanup:(BOOL)arg0 ;
-(void)detachChild:(id)arg0 cleanup:(BOOL)arg1 ;
-(void)insertChild:(id)arg0 z:(NSInteger)arg1 ;
-(void)reorderChild:(id)arg0 z:(NSInteger)arg1 ;
-(void)sortAllChildren;
-(void)draw;
-(void)visit;
-(void)transformAncestors;
-(void)transform;
-(void)onEnter;
-(void)onEnterTransitionDidFinish;
-(void)onExitTransitionDidStart;
-(void)onExit;
-(id)runAction:(id)arg0 ;
-(void)stopAllActions;
-(void)stopAction:(id)arg0 ;
-(void)stopActionByTag:(NSInteger)arg0 ;
-(id)getActionByTag:(NSInteger)arg0 ;
-(NSUInteger)numberOfRunningActions;
-(void)scheduleUpdate;
-(void)scheduleUpdateWithPriority:(NSInteger)arg0 ;
-(void)unscheduleUpdate;
-(void)schedule:(SEL)arg0 ;
-(void)schedule:(SEL)arg0 interval:(CGFloat)arg1 ;
-(void)schedule:(SEL)arg0 interval:(CGFloat)arg1 repeat:(unsigned int)arg2 delay:(CGFloat)arg3 ;
-(void)scheduleOnce:(SEL)arg0 delay:(CGFloat)arg1 ;
-(void)unschedule:(SEL)arg0 ;
-(void)unscheduleAllSelectors;
-(void)resumeSchedulerAndActions;
-(void)pauseSchedulerAndActions;
-(void)update:(CGFloat)arg0 ;
-(struct CGAffineTransform )nodeToParentTransform;
-(struct CGAffineTransform )nodeToWorldTransform;
-(struct CGAffineTransform )worldToNodeTransform;
-(struct CGPoint )convertToNodeSpace:(struct CGPoint )arg0 ;
-(struct CGPoint )convertToWorldSpace:(struct CGPoint )arg0 ;
-(struct CGPoint )convertToNodeSpaceAR:(struct CGPoint )arg0 ;
-(struct CGPoint )convertToWorldSpaceAR:(struct CGPoint )arg0 ;
-(struct CGPoint )convertToWindowSpace:(struct CGPoint )arg0 ;
-(struct CGPoint )convertTouchToNodeSpace:(id)arg0 ;
-(struct CGPoint )convertTouchToNodeSpaceAR:(id)arg0 ;
-(struct CGPoint )convertToNodeSpacePoint:(struct CGPoint )arg0 fromChild:(id)arg1 ;
-(struct CGAffineTransform )nodeToNodeTransform:(id)arg0 ;
+(float)deviceModifier;
+(struct CGPoint )sdPosToLocal:(struct CGPoint )arg0 ;
+(struct CGSize )sdSizeToLocal:(struct CGSize )arg0 ;
+(id)node;


@end


#endif