// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ISNAPPORIENTATIONCALCULATOR_H
#define ISNAPPORIENTATIONCALCULATOR_H


#import <Foundation/Foundation.h>


@interface ISNAppOrientationCalculator : NSObject

@property (nonatomic) int externalAppOrientation; // ivar: _externalAppOrientation
@property (nonatomic) NSUInteger presentingViewControllerOrientation; // ivar: _presentingViewControllerOrientation


+(int)calculateApplicationSupportedOrientationMaskFromOrientationData:(id)arg0 externalOrientation:(int)arg1 presentingViewControllerOrientation:(NSUInteger)arg2 ;
+(int)calculateApplicationSupportedOrientationMaskFromOrientationData:(id)arg0 ;
+(int)calculateApplicationSupportedOrientationMaskFromOrientationData:(id)arg0 externalOrientation:(int)arg1 ;
+(int)calculateApplicationSupportedOrientationMaskFromOrientationData:(id)arg0 presentingViewControllerOrientation:(NSUInteger)arg1 ;


@end


#endif