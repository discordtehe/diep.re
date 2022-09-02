// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADOMIDDEVICE_H
#define GADOMIDDEVICE_H


#import <Foundation/Foundation.h>


@interface GADOMIDDevice : NSObject



+(id)deviceDictionary;
+(id)deviceType;
+(id)deviceOs;
+(id)deviceOsVersion;
+(id)toJSON;


@end


#endif