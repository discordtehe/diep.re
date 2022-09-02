// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef USRVINVOCATION_H
#define USRVINVOCATION_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface USRVInvocation : NSObject

@property (retain, nonatomic) NSMutableArray *invocations; // ivar: _invocations
@property (retain, nonatomic) NSMutableArray *responses; // ivar: _responses
@property (nonatomic) int invocationId; // ivar: _invocationId


-(id)init;
-(void)addInvocation:(id)arg0 methodName:(id)arg1 parameters:(id)arg2 callback:(id)arg3 ;
-(BOOL)nextInvocation;
-(void)setInvocationResponseWithStatus:(id)arg0 error:(id)arg1 params:(id)arg2 ;
-(void)sendInvocationCallback;
+(void)setClassTable:(id)arg0 ;
+(id)getInvocationWithId:(int)arg0 ;


@end


#endif