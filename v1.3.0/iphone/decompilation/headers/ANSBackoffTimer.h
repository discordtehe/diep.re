// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ANSBACKOFFTIMER_H
#define ANSBACKOFFTIMER_H


#import <Foundation/Foundation.h>


@interface ANSBackoffTimer : NSObject

@property (nonatomic) CGFloat initialValue; // ivar: _initialValue
@property (readonly, nonatomic) CGFloat jitterCoefficient; // ivar: _jitterCoefficient
@property (nonatomic) NSUInteger retryCount; // ivar: _retryCount


-(id)initWithInitialValue:(CGFloat)arg0 ;
-(id)initWithInitialValue:(CGFloat)arg0 jitterCoefficient:(CGFloat)arg1 ;
-(id)init;
-(void)executeBlockAfterNextInterval:(id)arg0 ;
-(CGFloat)randomDoubleWithMin:(CGFloat)arg0 max:(CGFloat)arg1 ;
-(CGFloat)generateRandomJitter;
-(CGFloat)computeDelayForInitialValue:(CGFloat)arg0 retryCount:(NSUInteger)arg1 ;
+(BOOL)jitterCoefficientIsValid:(CGFloat)arg0 ;


@end


#endif