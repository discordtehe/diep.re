// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CDPROPERTYMODIFIER_H
#define CDPROPERTYMODIFIER_H


#import <Foundation/Foundation.h>

@class CDFloatInterpolator;

@interface CDPropertyModifier : NSObject {
    CDFloatInterpolator *interpolator;
    float startValue;
    float endValue;
    id *target;
}


@property (nonatomic) BOOL stopTargetWhenComplete; // ivar: stopTargetWhenComplete
@property (nonatomic) float startValue;
@property (nonatomic) float endValue;
@property (nonatomic) int interpolationType;


-(id)init:(id)arg0 interpolationType:(int)arg1 startVal:(float)arg2 endVal:(float)arg3 ;
-(void)dealloc;
-(void)modify:(float)arg0 ;
-(void)_setTargetProperty:(float)arg0 ;
-(float)_getTargetProperty;
-(void)_stopTarget;
-(Class)_allowableType;


@end


#endif