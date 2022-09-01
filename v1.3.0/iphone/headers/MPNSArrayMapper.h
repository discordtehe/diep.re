// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPNSARRAYMAPPER_H
#define MPNSARRAYMAPPER_H


#import <Foundation/Foundation.h>

@protocol MPObjectMapper;
@protocol MPObjectMapper;

@interface MPNSArrayMapper : NSObject <MPObjectMapper>



@property (retain, nonatomic) NSObject<MPObjectMapper> *mapper; // ivar: _mapper
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(id)initWithInternalMapper:(id)arg0 ;
-(id)mappedObjectFromSourceObject:(id)arg0 ;
-(Class)requiredSourceObjectClass;


@end


#endif