// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCOLONY_AVIDPROCESSORFACTORY_H
#define ADCOLONY_AVIDPROCESSORFACTORY_H


#import <Foundation/Foundation.h>

@protocol AdColony_AvidNodeProcessor;
@protocol AdColony_AvidNodeProcessor;
@protocol AdColony_AvidNodeProcessor;

@interface AdColony_AvidProcessorFactory : NSObject {
    id<AdColony_AvidNodeProcessor> *_screenProcessor;
    id<AdColony_AvidNodeProcessor> *_windowProcessor;
    id<AdColony_AvidNodeProcessor> *_viewProcessor;
}




-(id)init;
-(id)rootProcessor;


@end


#endif