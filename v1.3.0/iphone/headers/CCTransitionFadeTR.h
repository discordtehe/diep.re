// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCTRANSITIONFADETR_H
#define CCTRANSITIONFADETR_H


#import <Foundation/Foundation.h>

@class CCTransitionScene;
@protocol CCTransitionEaseScene;

@interface CCTransitionFadeTR : CCTransitionScene <CCTransitionEaseScene>



@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)sceneOrder;
-(void)onEnter;
-(id)actionWithSize:(struct CGSize )arg0 ;
-(id)easeActionWithAction:(id)arg0 ;


@end


#endif