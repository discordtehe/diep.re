// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPNATIVEADCONFIGVALUES_H
#define MPNATIVEADCONFIGVALUES_H


#import <Foundation/Foundation.h>


@interface MPNativeAdConfigValues : NSObject

@property (readonly, nonatomic) CGFloat impressionMinVisiblePixels; // ivar: _impressionMinVisiblePixels
@property (readonly, nonatomic) NSInteger impressionMinVisiblePercent; // ivar: _impressionMinVisiblePercent
@property (readonly, nonatomic) CGFloat impressionMinVisibleSeconds; // ivar: _impressionMinVisibleSeconds
@property (readonly, nonatomic) BOOL isImpressionMinVisiblePercentValid;
@property (readonly, nonatomic) BOOL isImpressionMinVisibleSecondsValid;
@property (readonly, nonatomic) BOOL isImpressionMinVisiblePixelsValid;


-(BOOL)isValidPercentage:(NSInteger)arg0 ;
-(BOOL)isValidTimeInterval:(CGFloat)arg0 ;
-(BOOL)isValidNumberOfPixels:(CGFloat)arg0 ;
-(id)initWithImpressionMinVisiblePixels:(CGFloat)arg0 impressionMinVisiblePercent:(NSInteger)arg1 impressionMinVisibleSeconds:(CGFloat)arg2 ;


@end


#endif