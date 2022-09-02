// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADEXPONENTIALGEOMETRICMOVINGAVERAGE_H
#define FBADEXPONENTIALGEOMETRICMOVINGAVERAGE_H


#import <Foundation/Foundation.h>

@protocol FBAdMovingAverage;

@interface FBAdExponentialGeometricMovingAverage : NSObject <FBAdMovingAverage>

 {
    CGFloat _decayConstant;
    NSUInteger _cutOver;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
@property (readonly, nonatomic) CGFloat average; // ivar: _average
@property (readonly, nonatomic) NSUInteger count; // ivar: _count


-(id)initWithDecayConstant:(CGFloat)arg0 ;
-(void)addMeasurement:(CGFloat)arg0 weight:(CGFloat)arg1 ;
-(void)addMeasurement:(CGFloat)arg0 ;
-(BOOL)hasOneOrMoreMeasurements;
-(void)reset;


@end


#endif