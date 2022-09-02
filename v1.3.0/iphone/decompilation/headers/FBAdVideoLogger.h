// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADVIDEOLOGGER_H
#define FBADVIDEOLOGGER_H


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class FBAdQualityManager;

@interface FBAdVideoLogger : NSObject

@property (readonly, nonatomic) FBAdQualityManager *adQualityManager; // ivar: _adQualityManager
@property (nonatomic) BOOL autoplay; // ivar: _autoplay
@property (nonatomic) BOOL hasLoggedIABImpression; // ivar: _hasLoggedIABImpression
@property (copy, nonatomic) NSString *inlineClientToken; // ivar: _inlineClientToken
@property (nonatomic) CGFloat lastProgressBoundaryTime; // ivar: _lastProgressBoundaryTime
@property (nonatomic) CGFloat lastProgressCurrentTime; // ivar: _lastProgressCurrentTime
@property (nonatomic) BOOL seeking; // ivar: _seeking
@property (copy, nonatomic) id *targetVolumeBlock; // ivar: _targetVolumeBlock
@property (copy, nonatomic) id *viewableImpressionBlock; // ivar: _viewableImpressionBlock
@property (retain, nonatomic) NSNumber *cardIndex; // ivar: _cardIndex
@property (retain, nonatomic) NSNumber *cardCount; // ivar: _cardCount
@property (retain, nonatomic) UIView *targetView; // ivar: _targetView


// -(id)initWithTargetView:(id)arg0 inlineClientToken:(id)arg1 targetVolumeBlock:(id)arg2 autoplay:(unk)arg3  ;
// -(id)initWithTargetView:(id)arg0 inlineClientToken:(id)arg1 viewableImpressionBlock:(id)arg2 targetVolumeBlock:(unk)arg3 autoplay:(id)arg4 cardIndex:(unk)arg5 cardCount:(BOOL)arg6  ;
-(void)initializeWithTargetView:(id)arg0 ;
-(void)registerComplete:(struct ? )arg0 ;
-(void)registerPause:(struct ? )arg0 ;
-(void)registerProgress:(struct ? )arg0 ;
-(void)registerResume:(struct ? )arg0 ;
-(void)registerSeekEnd:(struct ? )arg0 ;
-(void)registerSeekStart:(struct ? )arg0 ;
-(void)registerSkip:(struct ? )arg0 ;
-(void)registerStop:(struct ? )arg0 ;
-(void)flush:(struct ? )arg0 isContinuous:(BOOL)arg1 ;
-(void)logProgress;
-(void)logVideoEvent:(id)arg0 ;
-(void)logVideoEventForAction:(NSInteger)arg0 ;
-(void)logVideoTime;
-(void)onMRCRuleCallback:(BOOL)arg0 passed:(BOOL)arg1 ;
-(void)onViewableImpressionRuleCallback:(BOOL)arg0 passed:(BOOL)arg1 ;
-(void)registerProgress:(struct ? )arg0 forceLog:(BOOL)arg1 ;
-(float)effectiveVolume;
-(id)extraDataForVideoFunnelLogging:(struct ? )arg0 ;


@end


#endif