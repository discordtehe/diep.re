// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCANIMSEQUENCERLAYER_H
#define MCANIMSEQUENCERLAYER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface MCAnimSequencerLayer : NSObject {
    NSMutableArray *_taggedAnimationList;
    NSMutableArray *_currentlyRunningAnims;
}


@property (readonly, nonatomic) NSString *layerId; // ivar: _layerId
@property (nonatomic) int cycleCounter; // ivar: _cyclesRanCount
@property (nonatomic) BOOL isRunning; // ivar: _runningStack
@property (nonatomic) BOOL lockedOnTaggedStack; // ivar: _lockedWaitingForTaggedStack
@property (nonatomic) int currentStackAnimsCount; // ivar: _currStackAnimsCount


-(id)init:(id)arg0 ;
-(void)dealloc;
-(void)addToLayer:(id)arg0 ;
-(void)insertInLayerAsFirst:(id)arg0 ;
-(void)addToLayer:(id)arg0 withTag:(id)arg1 ;
-(void)insertInLayerAsFirst:(id)arg0 withTag:(id)arg1 ;
-(void)addToLayer:(id)arg0 withTag:(id)arg1 insertAsFirst:(BOOL)arg2 ;
-(void)addConcurrentlyToLayer:(id)arg0 ;
-(void)addConcurrentlyToLayer:(id)arg0 withTag:(id)arg1 ;
-(void)registerAnimAsCurrentlyRunning:(id)arg0 ;
-(void)clearCurrentlyRunningList;
-(BOOL)isCurrentlyRunningDoneAnimating;
-(void)stopRunningAnimations;
-(id)findAnimListWithTag:(id)arg0 ;
-(void)replaceAnimListInTag:(id)arg0 With:(id)arg1 ;
-(id)getFirstAnimList;
-(id)getFirstAnimListTag;
-(void)deleteFirstAnim;
-(void)purgeLayer;
-(BOOL)isLayerEmpty;
-(BOOL)isLockedOnTaggedStack;
-(int)size;
-(id)fullLayerReport;
-(id)currentlyPlayingToString;
-(id)taggedAnimListToString;
+(id)makeMCAnimSequencerLayerWithId:(id)arg0 ;


@end


#endif