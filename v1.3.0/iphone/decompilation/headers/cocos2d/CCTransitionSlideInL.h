// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCTRANSITIONSLIDEINL_H
#define CCTRANSITIONSLIDEINL_H


#import <Foundation/Foundation.h>

@class CCTransitionScene;
@protocol CCTransitionEaseScene;

@interface CCTransitionSlideInL : CCTransitionScene <CCTransitionEaseScene>



@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)onEnter;
-(void)sceneOrder;
-(void)initScenes;
-(id)action;
-(id)easeActionWithAction:(id)arg0 ;


@end


#endif