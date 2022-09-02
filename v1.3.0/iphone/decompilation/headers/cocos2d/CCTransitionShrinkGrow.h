// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCTRANSITIONSHRINKGROW_H
#define CCTRANSITIONSHRINKGROW_H


#import <Foundation/Foundation.h>

@class CCTransitionScene;
@protocol CCTransitionEaseScene;

@interface CCTransitionShrinkGrow : CCTransitionScene <CCTransitionEaseScene>



@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(void)onEnter;
-(id)easeActionWithAction:(id)arg0 ;


@end


#endif