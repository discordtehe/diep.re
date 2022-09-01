// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCBKEYFRAME_H
#define CCBKEYFRAME_H


#import <Foundation/Foundation.h>


@interface CCBKeyframe : NSObject

@property (retain, nonatomic) id *value; // ivar: value
@property (nonatomic) float time; // ivar: time
@property (nonatomic) int easingType; // ivar: easingType
@property (nonatomic) float easingOpt; // ivar: easingOpt


-(void)dealloc;


@end


#endif