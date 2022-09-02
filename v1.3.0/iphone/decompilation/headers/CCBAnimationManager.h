// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCBANIMATIONMANAGER_H
#define CCBANIMATIONMANAGER_H

@protocol CCBAnimationManagerDelegate;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class CCBSequence;
@class CCNode;

@interface CCBAnimationManager : NSObject {
    NSMutableDictionary *nodeSequences;
    NSMutableDictionary *baseValues;
    CCBSequence *runningSequence;
    id *block;
}


@property (readonly, nonatomic) NSMutableArray *sequences; // ivar: sequences
@property (nonatomic) int autoPlaySequenceId; // ivar: autoPlaySequenceId
@property (nonatomic) CCNode *rootNode; // ivar: rootNode
@property (nonatomic) CCNode *absoluteRootNode; // ivar: absoluteRootNode
@property (nonatomic) CCNode *owner; // ivar: owner
@property (nonatomic) CGSize rootContainerSize; // ivar: rootContainerSize
@property (retain, nonatomic) NSObject<CCBAnimationManagerDelegate> *delegate; // ivar: delegate
@property (readonly, nonatomic) NSString *runningSequenceName;
@property (readonly, nonatomic) NSMutableArray *documentOutletNames; // ivar: documentOutletNames
@property (readonly, nonatomic) NSMutableArray *documentOutletNodes; // ivar: documentOutletNodes
@property (readonly, nonatomic) NSMutableArray *documentCallbackNames; // ivar: documentCallbackNames
@property (readonly, nonatomic) NSMutableArray *documentCallbackNodes; // ivar: documentCallbackNodes
@property (copy, nonatomic) NSString *documentControllerName; // ivar: documentControllerName
@property (readonly, nonatomic) NSString *lastCompletedSequenceName; // ivar: lastCompletedSequenceName
@property (nonatomic) float pointScale; // ivar: pointScale


-(id)init;
-(float)durationForSequenceId:(int)arg0 ;
-(struct CGSize )containerSize:(id)arg0 ;
-(void)addNode:(id)arg0 andSequences:(id)arg1 ;
-(void)moveAnimationsFromNode:(id)arg0 toNode:(id)arg1 ;
-(void)setBaseValue:(id)arg0 forNode:(id)arg1 propertyName:(id)arg2 ;
-(id)baseValueForNode:(id)arg0 propertyName:(id)arg1 ;
-(int)sequenceIdForSequenceNamed:(id)arg0 ;
-(id)sequenceFromSequenceId:(int)arg0 ;
-(id)actionForCallbackChannel:(id)arg0 ;
-(id)actionFromKeyframe0:(id)arg0 andKeyframe1:(id)arg1 propertyName:(id)arg2 node:(id)arg3 ;
-(void)setAnimatedProperty:(id)arg0 forNode:(id)arg1 toValue:(id)arg2 tweenDuration:(float)arg3 ;
-(void)setFirstFrameForNode:(id)arg0 sequenceProperty:(id)arg1 tweenDuration:(float)arg2 ;
-(id)easeAction:(id)arg0 easingType:(int)arg1 easingOpt:(float)arg2 ;
-(void)runActionsForNode:(id)arg0 sequenceProperty:(id)arg1 tweenDuration:(float)arg2 ;
-(void)runAnimationsForSequenceId:(int)arg0 tweenDuration:(float)arg1 ;
-(void)runAnimationsForSequenceNamed:(id)arg0 tweenDuration:(float)arg1 ;
-(void)runAnimationsForSequenceNamed:(id)arg0 ;
-(void)sequenceCompleted;
-(void)setCompletedAnimationCallbackBlock:(id)arg0 ;
-(void)dealloc;
-(void)debug;


@end


#endif