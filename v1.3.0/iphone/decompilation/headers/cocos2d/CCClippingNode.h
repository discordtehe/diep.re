// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCCLIPPINGNODE_H
#define CCCLIPPINGNODE_H



@class CCNode;

@interface CCClippingNode : CCNode

@property (retain, nonatomic) CCNode *stencil; // ivar: _stencil
@property (nonatomic) float alphaThreshold; // ivar: _alphaThreshold
@property (nonatomic) BOOL inverted; // ivar: _inverted


-(void)dealloc;
-(id)init;
-(id)initWithStencil:(id)arg0 ;
-(void)onEnter;
-(void)onEnterTransitionDidFinish;
-(void)onExitTransitionDidStart;
-(void)onExit;
-(void)visit;
+(id)clippingNode;
+(id)clippingNodeWithStencil:(id)arg0 ;


@end


#endif