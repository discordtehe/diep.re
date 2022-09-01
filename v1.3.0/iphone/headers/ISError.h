// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ISERROR_H
#define ISERROR_H


#import <Foundation/Foundation.h>


@interface ISError : NSError

@property (retain) NSString *prefix; // ivar: _prefix
@property (retain) NSString *suffix; // ivar: _suffix


-(id)initWithDomain:(id)arg0 code:(NSInteger)arg1 userInfo:(id)arg2 ;
+(NSUInteger)getCode:(NSUInteger)arg0 ;
+(id)createError:(NSUInteger)arg0 ;
+(id)createError:(NSUInteger)arg0 withParams:(id)arg1 ;
+(id)createError:(NSUInteger)arg0 withMessage:(id)arg1 ;
+(id)appendError:(id)arg0 withPrefix:(id)arg1 ;
+(id)appendError:(id)arg0 withSuffix:(id)arg1 ;
+(void)initErrors;
+(id)appendWithPrefix:(id)arg0 ;
+(id)appendWithSuffix:(id)arg0 ;
+(id)replaceParams:(id)arg0 withParams:(id)arg1 ;


@end


#endif