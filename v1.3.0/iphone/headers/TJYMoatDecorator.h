// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TJYMOATDECORATOR_H
#define TJYMOATDECORATOR_H

@class Protocol;

#import <Foundation/Foundation.h>


@interface TJYMoatDecorator : NSObject

@property BOOL detectedRecursion; // ivar: _detectedRecursion
@property (weak) id *nested; // ivar: _nested
@property (retain, nonatomic) Protocol *decoratedProtocol; // ivar: _decoratedProtocol
@property BOOL recursionFlag_respondsToSelector; // ivar: _recursionFlag_respondsToSelector
@property BOOL recursionFlag_forwardInvocation; // ivar: _recursionFlag_forwardInvocation


-(id)initWithNested:(id)arg0 implementing:(id)arg1 ;
-(void)logRecursionWarningIfNotAlreadyLogged;
-(BOOL)respondsToSelector:(SEL)arg0 ;
-(void)forwardInvocation:(id)arg0 ;


@end


#endif