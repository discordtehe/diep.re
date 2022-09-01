// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef OMIDTAPJOYPROCESSORFACTORY_H
#define OMIDTAPJOYPROCESSORFACTORY_H


#import <Foundation/Foundation.h>

@protocol OMIDtapjoyNodeProcessor;
@protocol OMIDtapjoyNodeProcessor;
@protocol OMIDtapjoyNodeProcessor;

@interface OMIDtapjoyProcessorFactory : NSObject {
    id<OMIDtapjoyNodeProcessor> *_screenProcessor;
    id<OMIDtapjoyNodeProcessor> *_windowProcessor;
    id<OMIDtapjoyNodeProcessor> *_viewProcessor;
}




-(id)init;
-(id)rootProcessor;


@end


#endif