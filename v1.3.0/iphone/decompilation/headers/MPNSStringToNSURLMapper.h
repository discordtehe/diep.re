// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPNSSTRINGTONSURLMAPPER_H
#define MPNSSTRINGTONSURLMAPPER_H


#import <Foundation/Foundation.h>

@protocol MPObjectMapper;

@interface MPNSStringToNSURLMapper : NSObject <MPObjectMapper>



@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)mappedObjectFromSourceObject:(id)arg0 ;
-(Class)requiredSourceObjectClass;


@end


#endif