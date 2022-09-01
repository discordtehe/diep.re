// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCANIMSEQUENCER_H
#define MCANIMSEQUENCER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface MCAnimSequencer : NSObject {
    NSMutableDictionary *_animationLayers;
    NSMutableDictionary *_triggeredMCAnimSequencerLayers;
    NSMutableArray *_activeTemporaryLayers;
    NSString *_stackFromBoard;
    NSTimer *_timerForDebugOps;
}




-(id)init;
-(void)dealloc;
-(void)setBoardName:(id)arg0 ;
-(void)addToStack:(id)arg0 ;
-(void)addToStack:(id)arg0 withTag:(id)arg1 ;
-(void)addToStack:(id)arg0 toAnimLayer:(id)arg1 ;
-(void)addToStack:(id)arg0 withTag:(id)arg1 toAnimLayer:(id)arg2 ;
-(id)addToStack:(id)arg0 triggeredByMainWithTag:(id)arg1 ;
-(id)addToStack:(id)arg0 triggeredByLayer:(id)arg1 andTag:(id)arg2 ;
-(id)addToStack:(id)arg0 triggeredByMainWithTag:(id)arg1 withInternalTag:(id)arg2 ;
-(id)addToStack:(id)arg0 triggeredByLayer:(id)arg1 andTag:(id)arg2 withInternalTag:(id)arg3 ;
-(id)addConcurrentlyToStack:(id)arg0 triggeredByMainWithTag:(id)arg1 ;
-(id)addConcurrentlyToStack:(id)arg0 triggeredByLayer:(id)arg1 andTag:(id)arg2 ;
-(id)playAnimationNow:(id)arg0 ;
-(id)getOrCreateMCAnimSequencerLayerWithId:(id)arg0 ;
-(id)getMCAnimSequencerLayerWithId:(id)arg0 ;
-(id)getOrCreateTriggeredMCAnimSequencerLayerWithId:(id)arg0 ;
-(id)getTriggeredMCAnimSequencerLayerWithId:(id)arg0 ;
-(BOOL)isLayerRunning:(id)arg0 ;
-(void)stopLayerAndPlayNext:(id)arg0 ;
-(void)stopLayer:(id)arg0 andPlayAnimBeforeNext:(id)arg1 ;
-(void)stopLayer:(id)arg0 andPlayAnimBeforeNext:(id)arg1 withTag:(id)arg2 ;
-(void)stopMainLayerAndPlayAnimBeforeNext:(id)arg0 ;
-(void)stopMainLayerAndPlayAnimBeforeNext:(id)arg0 withTag:(id)arg1 ;
-(void)stopAndPurgeMainLayer;
-(void)stopAndPurgeAllLayers;
-(void)stopAndPurgeLayer:(id)arg0 ;
-(void)endCycleAndRunAllPendingAnimations;
-(void)start;
-(void)startSingleLayer:(id)arg0 ;
-(void)startTriggeredLayer:(id)arg0 ;
-(void)playAnim:(id)arg0 ofLayer:(id)arg1 ;
-(void)animationStart:(id)arg0 data:(*void)arg1 ;
-(void)animationEnded:(id)arg0 data:(*void)arg1 ;
-(void)animationTimeout:(id)arg0 data:(*void)arg1 ;
-(void)transitToNextStack:(id)arg0 ;
-(id)getAnimationSequencerReport;
-(void)animationSequencerFullReport:(id)arg0 ;
-(id)layersInfoToString;


@end


#endif