// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCANIMVSZDATA_H
#define MCANIMVSZDATA_H


#import <Foundation/Foundation.h>


@interface MCAnimVSZData : NSObject {
    *vsz_layout layout;
    float frameDuration;
}


@property (readonly, nonatomic) NSString *name; // ivar: name


-(id)initFromFile:(id)arg0 withFps:(float)arg1 ;
-(id)initFromFile:(id)arg0 ;
-(void)dealloc;
-(float)animationTimeAtNormalSpeed;
-(float)calculateSpeedToPlayDuringSeconds:(float)arg0 ;
+(id)vszAnimationDataFromFile:(id)arg0 withFps:(float)arg1 ;
+(id)vszAnimationDataFromFile:(id)arg0 ;


@end


#endif