// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADNATIVEADSETTINGS_H
#define GADNATIVEADSETTINGS_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface GADNativeAdSettings : NSObject {
    NSMutableDictionary *_nativeAdSettings;
    NSObject<OS_dispatch_queue> *_lockQueue;
}




-(id)init;
-(void)mediaViewUnavailableToRenderMediaContentForAdType:(id)arg0 ;
-(id)nativeAdSettings;
+(id)sharedInstance;


@end


#endif