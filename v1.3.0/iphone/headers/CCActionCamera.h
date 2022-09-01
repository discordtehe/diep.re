// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCACTIONCAMERA_H
#define CCACTIONCAMERA_H



@class CCActionInterval;
@protocol NSCopying;

@interface CCActionCamera : CCActionInterval <NSCopying>

 {
    float _centerXOrig;
    float _centerYOrig;
    float _centerZOrig;
    float _eyeXOrig;
    float _eyeYOrig;
    float _eyeZOrig;
    float _upXOrig;
    float _upYOrig;
    float _upZOrig;
}




-(void)startWithTarget:(id)arg0 ;
-(id)reverse;


@end


#endif