// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPCLASSMAPPER_H
#define MPCLASSMAPPER_H


#import <Foundation/Foundation.h>

@protocol MPObjectMapper;

@interface MPClassMapper : NSObject <MPObjectMapper>



@property (retain, nonatomic) Class destinationClass; // ivar: _destinationClass
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(id)initWithDestinationClass:(Class)arg0 ;
-(id)mappedObjectFromSourceObject:(id)arg0 ;
-(Class)requiredSourceObjectClass;


@end


#endif