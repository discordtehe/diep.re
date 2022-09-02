// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef APMENVIRONMENTINFO_H
#define APMENVIRONMENTINFO_H


#import <Foundation/Foundation.h>


@interface APMEnvironmentInfo : NSObject {
    NSString *_deviceModel;
}


@property (readonly, nonatomic) NSString *deviceModel;
@property (readonly, nonatomic) NSString *deviceOSVersion;
@property (readonly, nonatomic) NSString *userDefaultLanguage;
@property (readonly, nonatomic) int timeZoneOffsetMinutes;


+(id)sharedInstance;


@end


#endif