// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADQUALITYMANAGER_H
#define FBADQUALITYMANAGER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>
#import <UIKit/UIKit.h>

@class FBAdQualityViewabilityMeasurement;
@class FBAdQualityStatistics;

@interface FBAdQualityManager : NSObject

@property (retain, nonatomic) NSArray *tests; // ivar: _tests
@property (retain, nonatomic) FBAdQualityViewabilityMeasurement *viewabilityMeasurement; // ivar: _viewabilityMeasurement
@property (readonly, nonatomic) FBAdQualityStatistics *statistics; // ivar: _statistics
@property (retain, nonatomic) UIView *targetView; // ivar: _targetView


-(id)initWithTargetView:(id)arg0 rules:(id)arg1 ;
-(id)init;
-(void)registerProgress:(CGFloat)arg0 volume:(float)arg1 ;
+(id)managerWithTargetView:(id)arg0 rules:(id)arg1 ;


@end


#endif