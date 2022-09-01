// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCCLASSVALUE_H
#define MCCLASSVALUE_H


#import <Foundation/Foundation.h>


@interface MCClassValue : NSObject

@property (readonly, nonatomic) Class value; // ivar: mValue
@property (readonly, nonatomic) Class theClass;


-(id)initWithClass:(Class)arg0 ;
+(id)valueWithClass:(Class)arg0 ;
+(id)getNSClass:(Class)arg0 ;
+(id)getNSClass;


@end


#endif