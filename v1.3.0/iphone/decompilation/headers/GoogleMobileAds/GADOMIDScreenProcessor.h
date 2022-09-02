// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADOMIDSCREENPROCESSOR_H
#define GADOMIDSCREENPROCESSOR_H


#import <Foundation/Foundation.h>

@protocol GADOMIDNodeProcessor;
@protocol GADOMIDNodeProcessor;

@interface GADOMIDScreenProcessor : NSObject <GADOMIDNodeProcessor>



@property (weak, nonatomic) NSObject<GADOMIDNodeProcessor> *processorForChildren; // ivar: _processorForChildren
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)stateForView:(id)arg0 ;
-(id)childrenForView:(id)arg0 ;
-(id)orderedChildrenForView:(id)arg0 ;
-(BOOL)isInternalWindow:(id)arg0 ;


@end


#endif