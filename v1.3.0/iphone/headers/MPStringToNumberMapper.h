// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPSTRINGTONUMBERMAPPER_H
#define MPSTRINGTONUMBERMAPPER_H


#import <Foundation/Foundation.h>

@protocol MPObjectMapper;

@interface MPStringToNumberMapper : NSObject <MPObjectMapper>



@property (retain, nonatomic) NSNumberFormatter *numberFormatter; // ivar: _numberFormatter
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(id)initWithNumberStyle:(NSUInteger)arg0 ;
-(id)mappedObjectFromSourceObject:(id)arg0 ;
-(Class)requiredSourceObjectClass;


@end


#endif