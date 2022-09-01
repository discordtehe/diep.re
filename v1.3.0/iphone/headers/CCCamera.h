// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCCAMERA_H
#define CCCAMERA_H


#import <Foundation/Foundation.h>


@interface CCCamera : NSObject {
    float _eyeX;
    float _eyeY;
    float _eyeZ;
    float _centerX;
    float _centerY;
    float _centerZ;
    float _upX;
    float _upY;
    float _upZ;
    kmMat4 _lookupMatrix;
}


@property (nonatomic) BOOL dirty; // ivar: _dirty


-(id)init;
-(id)description;
-(void)dealloc;
-(void)restore;
-(void)locate;
-(void)setEyeX:(float)arg0 eyeY:(float)arg1 eyeZ:(float)arg2 ;
-(void)setCenterX:(float)arg0 centerY:(float)arg1 centerZ:(float)arg2 ;
-(void)setUpX:(float)arg0 upY:(float)arg1 upZ:(float)arg2 ;
-(void)eyeX:(*float)arg0 eyeY:(*float)arg1 eyeZ:(*float)arg2 ;
-(void)centerX:(*float)arg0 centerY:(*float)arg1 centerZ:(*float)arg2 ;
-(void)upX:(*float)arg0 upY:(*float)arg1 upZ:(*float)arg2 ;
+(float)getZEye;


@end


#endif