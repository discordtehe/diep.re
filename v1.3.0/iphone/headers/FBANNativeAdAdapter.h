// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBANNATIVEADADAPTER_H
#define FBANNATIVEADADAPTER_H


#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@class FBDisplayAdAdapter;
@class FBAdCommandProcessor;
@class FBAdTimer;
@protocol FBAdCommandProcessorDelegate;

@interface FBANNativeAdAdapter : FBDisplayAdAdapter <FBAdCommandProcessorDelegate>



@property (nonatomic) BOOL hasLoggedImpression; // ivar: _hasLoggedImpression
@property (nonatomic) BOOL hasLoggedImpressionMiss; // ivar: _hasLoggedImpressionMiss
@property (nonatomic) BOOL hasLoggedVideoPlay; // ivar: _hasLoggedVideoPlay
@property (retain, nonatomic) FBAdCommandProcessor *commandProcessor; // ivar: _commandProcessor
@property (retain, nonatomic) UIViewController *rootViewController; // ivar: _rootViewController
@property (retain, nonatomic) FBAdTimer *snapshotTimer; // ivar: _snapshotTimer
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
@property (readonly, nonatomic) UIViewController *viewControllerForPresentingModalView;


-(void)loadAdData:(id)arg0 forSize:(struct FBAdSize )arg1 forOrientation:(NSInteger)arg2 forPlacement:(id)arg3 placementDefinition:(id)arg4 dataModelType:(id)arg5 rewardData:(id)arg6 extraHint:(id)arg7 ;
-(id)adDataModel;
-(BOOL)startAdFromRootViewController:(id)arg0 ;
-(BOOL)startAdFromRootViewController:(id)arg0 animated:(BOOL)arg1 ;
-(void)onImpressionWithExtraData:(id)arg0 withPostData:(id)arg1 ;
-(void)onImpressionMissWithExtraData:(id)arg0 withPostData:(id)arg1 ;
-(void)onClickForViewController:(id)arg0 withExtraData:(id)arg1 ;
-(void)registerViewForInteraction:(id)arg0 withViewController:(id)arg1 ;
-(void)willPresentViewController:(id)arg0 ;
-(void)viewControllerDismissed:(id)arg0 ;
-(id)commandProcessorTouchInformation:(id)arg0 ;
+(void)initialize;


@end


#endif