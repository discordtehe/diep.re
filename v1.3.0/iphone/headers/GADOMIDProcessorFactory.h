// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADOMIDPROCESSORFACTORY_H
#define GADOMIDPROCESSORFACTORY_H


#import <Foundation/Foundation.h>

@protocol GADOMIDNodeProcessor;
@protocol GADOMIDNodeProcessor;
@protocol GADOMIDNodeProcessor;

@interface GADOMIDProcessorFactory : NSObject {
    id<GADOMIDNodeProcessor> *_screenProcessor;
    id<GADOMIDNodeProcessor> *_windowProcessor;
    id<GADOMIDNodeProcessor> *_viewProcessor;
}




-(id)init;
-(id)rootProcessor;


@end


#endif