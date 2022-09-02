// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef USRVSENSORINFO_H
#define USRVSENSORINFO_H


#import <Foundation/Foundation.h>


@interface USRVSensorInfo : NSObject



+(BOOL)startAccelerometerUpdates:(CGFloat)arg0 ;
+(void)stopAccelerometerUpdates;
+(BOOL)isAccelerometerActive;
+(id)getAccelerometerData;


@end


#endif