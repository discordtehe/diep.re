// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CDFLOATINTERPOLATOR_H
#define CDFLOATINTERPOLATOR_H


#import <Foundation/Foundation.h>


@interface CDFloatInterpolator : NSObject {
    float lastValue;
}


@property (nonatomic) float start; // ivar: start
@property (nonatomic) float end; // ivar: end
@property (nonatomic) int interpolationType; // ivar: interpolationType


-(float)interpolate:(float)arg0 ;
-(id)init:(int)arg0 startVal:(float)arg1 endVal:(float)arg2 ;


@end


#endif