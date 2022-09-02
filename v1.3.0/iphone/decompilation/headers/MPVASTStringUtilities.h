// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPVASTSTRINGUTILITIES_H
#define MPVASTSTRINGUTILITIES_H


#import <Foundation/Foundation.h>


@interface MPVASTStringUtilities : NSObject



+(CGFloat)doubleFromString:(id)arg0 ;
+(BOOL)stringRepresentsNonNegativePercentage:(id)arg0 ;
+(BOOL)stringRepresentsNonNegativeDuration:(id)arg0 ;
+(NSInteger)percentageFromString:(id)arg0 ;
+(CGFloat)timeIntervalFromString:(id)arg0 ;
+(id)stringFromTimeInterval:(CGFloat)arg0 ;


@end


#endif