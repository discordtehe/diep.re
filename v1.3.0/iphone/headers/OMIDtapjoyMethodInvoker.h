// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef OMIDTAPJOYMETHODINVOKER_H
#define OMIDTAPJOYMETHODINVOKER_H


#import <Foundation/Foundation.h>


@interface OMIDtapjoyMethodInvoker : NSObject



+(void)performSelectorAsync:(SEL)arg0 target:(id)arg1 ;
+(void)performSelectorAsync:(SEL)arg0 target:(id)arg1 argument:(id)arg2 ;
+(void)performSelectorSync:(SEL)arg0 target:(id)arg1 argument:(id)arg2 ;


@end


#endif