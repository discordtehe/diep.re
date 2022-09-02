// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ISCONSTRAINSHELPER_H
#define ISCONSTRAINSHELPER_H


#import <Foundation/Foundation.h>


@interface ISConstrainsHelper : NSObject



+(id)setFullScreenConstraintsForViewAccordingToSuperView:(id)arg0 ;
+(id)setFullScreenConstraintsLandscapeToPortraitViewAccordingToSuperView:(id)arg0 ;
+(id)setView:(id)arg0 ToTopView:(id)arg1 withScreenRatio:(CGFloat)arg2 isFirstViewOnScreen:(BOOL)arg3 ;
+(void)removeConstraintsForView:(id)arg0 constraints:(id)arg1 ;


@end


#endif