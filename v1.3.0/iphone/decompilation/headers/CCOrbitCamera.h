// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCORBITCAMERA_H
#define CCORBITCAMERA_H



@class CCActionCamera;
@protocol NSCopying;

@interface CCOrbitCamera : CCActionCamera <NSCopying>

 {
    float _radius;
    float _deltaRadius;
    float _angleZ;
    float _deltaAngleZ;
    float _angleX;
    float _deltaAngleX;
    float _radZ;
    float _radDeltaZ;
    float _radX;
    float _radDeltaX;
}




-(id)copyWithZone:(struct _NSZone *)arg0 ;
-(id)initWithDuration:(float)arg0 radius:(float)arg1 deltaRadius:(float)arg2 angleZ:(float)arg3 deltaAngleZ:(float)arg4 angleX:(float)arg5 deltaAngleX:(float)arg6 ;
-(void)startWithTarget:(id)arg0 ;
-(void)update:(CGFloat)arg0 ;
-(void)sphericalRadius:(*float)arg0 zenith:(*float)arg1 azimuth:(*float)arg2 ;
+(id)actionWithDuration:(float)arg0 radius:(float)arg1 deltaRadius:(float)arg2 angleZ:(float)arg3 deltaAngleZ:(float)arg4 angleX:(float)arg5 deltaAngleX:(float)arg6 ;


@end


#endif