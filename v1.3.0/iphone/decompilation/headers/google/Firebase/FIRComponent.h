// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FIRCOMPONENT_H
#define FIRCOMPONENT_H

@class Protocol;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface FIRComponent : NSObject

@property (readonly, nonatomic) Protocol *protocol; // ivar: _protocol
@property (readonly, nonatomic) NSInteger instantiationTiming; // ivar: _instantiationTiming
@property (readonly, copy, nonatomic) NSArray *dependencies; // ivar: _dependencies
@property (readonly, copy, nonatomic) id *creationBlock; // ivar: _creationBlock


-(id)initWithProtocol:(id)arg0 instantiationTiming:(NSInteger)arg1 dependencies:(id)arg2 creationBlock:(id)arg3 ;
+(id)componentWithProtocol:(id)arg0 creationBlock:(id)arg1 ;
+(id)componentWithProtocol:(id)arg0 instantiationTiming:(NSInteger)arg1 dependencies:(id)arg2 creationBlock:(id)arg3 ;


@end


#endif