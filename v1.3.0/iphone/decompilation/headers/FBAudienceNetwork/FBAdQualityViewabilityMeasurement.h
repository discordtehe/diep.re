// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADQUALITYVIEWABILITYMEASUREMENT_H
#define FBADQUALITYVIEWABILITYMEASUREMENT_H


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface FBAdQualityViewabilityMeasurement : NSObject

@property (retain, nonatomic) UIView *targetView; // ivar: _targetView


-(id)initWithTargetView:(id)arg0 ;
-(id)init;
-(float)viewableRatio;
-(id)overlappingRectsInView:(id)arg0 targetRect:(struct CGRect )arg1 ;
-(id)intersectingRectsInView:(id)arg0 targetRect:(struct CGRect )arg1 ;
-(CGFloat)unionAreaOfRects:(id)arg0 ;
+(id)measurementWithTargetView:(id)arg0 ;


@end


#endif