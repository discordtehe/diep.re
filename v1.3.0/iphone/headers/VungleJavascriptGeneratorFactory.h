// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VUNGLEJAVASCRIPTGENERATORFACTORY_H
#define VUNGLEJAVASCRIPTGENERATORFACTORY_H


#import <Foundation/Foundation.h>


@interface VungleJavascriptGeneratorFactory : NSObject



+(id)notifyReadyEventGeneratorWithCacheableReplacements:(id)arg0 nonCacheableReplacements:(id)arg1 ;
+(id)notifyReadyEventGenerator;
+(id)propertiesEventGeneratorWithDictionary:(id)arg0 ;
+(id)notifyPrepareStoreViewSuccessGenerator;
+(id)notifyPresentStoreViewFinshedGenerator;


@end


#endif