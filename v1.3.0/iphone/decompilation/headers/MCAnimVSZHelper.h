// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCANIMVSZHELPER_H
#define MCANIMVSZHELPER_H


#import <Foundation/Foundation.h>


@interface MCAnimVSZHelper : NSObject



+(id)createVSZWithAnimName:(id)arg0 ;
+(id)createVSZWithAnimName:(id)arg0 andTextureName:(id)arg1 ;
+(void)changeVSZ:(id)arg0 withAnimName:(id)arg1 andTextureName:(id)arg2 ;
+(void)changeVSZ:(id)arg0 withAnimName:(id)arg1 ;
+(void)changeVSZ:(id)arg0 withTextureName:(id)arg1 ;
+(float)getAnimationDuration:(id)arg0 ;


@end


#endif