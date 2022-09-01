// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VNGMOATCOREUTIL_H
#define VNGMOATCOREUTIL_H


#import <Foundation/Foundation.h>


@interface VNGMoatCoreUtil : NSObject



+(id)getBundleId;
+(id)getAppName;
+(id)getSystemVersion;
+(int)getMajorSystemVersion;
+(id)getIDFA;
+(id)getCarrierName;
+(id)getRadioTechnology;


@end


#endif