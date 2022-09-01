// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCOLONY_AVIDVIEWPROCESSOR_H
#define ADCOLONY_AVIDVIEWPROCESSOR_H


#import <Foundation/Foundation.h>

@protocol AdColony_AvidNodeProcessor;
@protocol AdColony_AvidNodeProcessor;

@interface AdColony_AvidViewProcessor : NSObject <AdColony_AvidNodeProcessor>



@property (weak, nonatomic) NSObject<AdColony_AvidNodeProcessor> *processorForChildren; // ivar: _processorForChildren
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)stateForView:(id)arg0 ;
-(id)childrenForView:(id)arg0 ;
-(id)orderedChildrenForView:(id)arg0 ;
-(struct CGRect )frameInWindowSystemForView:(id)arg0 ;
-(id)windowForView:(id)arg0 ;
-(void)addView:(id)arg0 toDictionary:(id)arg1 ;
-(id)buildChildrenFromDictionary:(id)arg0 ;


@end


#endif