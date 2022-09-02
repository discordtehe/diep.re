// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FIRDEPENDENCY_H
#define FIRDEPENDENCY_H

@class Protocol;

#import <Foundation/Foundation.h>


@interface FIRDependency : NSObject

@property (readonly, nonatomic) Protocol *protocol; // ivar: _protocol
@property (readonly, nonatomic) BOOL isRequired; // ivar: _isRequired


-(id)initWithProtocol:(id)arg0 isRequired:(BOOL)arg1 ;
+(id)dependencyWithProtocol:(id)arg0 ;
+(id)dependencyWithProtocol:(id)arg0 isRequired:(BOOL)arg1 ;


@end


#endif