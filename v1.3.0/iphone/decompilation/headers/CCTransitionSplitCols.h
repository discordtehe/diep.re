// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCTRANSITIONSPLITCOLS_H
#define CCTRANSITIONSPLITCOLS_H


#import <Foundation/Foundation.h>

@class CCTransitionScene;
@protocol CCTransitionEaseScene;

@interface CCTransitionSplitCols : CCTransitionScene <CCTransitionEaseScene>



@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)onEnter;
-(id)action;
-(id)easeActionWithAction:(id)arg0 ;


@end


#endif