// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCADSTAPRESEARCHSURVEYSDELEGATE_H
#define MCADSTAPRESEARCHSURVEYSDELEGATE_H


#import <Foundation/Foundation.h>

@protocol TapResearchSurveyDelegate;
@protocol TapResearchRewardDelegate;

@interface MCAdsTapResearchSurveysDelegate : NSObject <TapResearchSurveyDelegate, TapResearchRewardDelegate>



@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)tapResearchSurveyWallOpenedWithPlacement:(id)arg0 ;
-(void)tapResearchSurveyWallDismissedWithPlacement:(id)arg0 ;
-(void)tapResearchDidReceiveReward:(id)arg0 ;


@end


#endif