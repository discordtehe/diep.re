// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPNATIVEADRENDERERCONFIGURATION_H
#define MPNATIVEADRENDERERCONFIGURATION_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol MPNativeAdRendererSettings;

@interface MPNativeAdRendererConfiguration : NSObject

@property (retain, nonatomic) NSObject<MPNativeAdRendererSettings> *rendererSettings; // ivar: _rendererSettings
@property (nonatomic) Class rendererClass; // ivar: _rendererClass
@property (retain, nonatomic) NSArray *supportedCustomEvents; // ivar: _supportedCustomEvents




@end


#endif