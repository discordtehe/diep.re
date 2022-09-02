// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCSELECTORVALUE_H
#define MCSELECTORVALUE_H


#import <Foundation/Foundation.h>


@interface MCSelectorValue : NSObject

@property (readonly, nonatomic) SEL value; // ivar: mValue
@property (readonly, nonatomic) SEL selector;


-(id)initWithSelector:(SEL)arg0 ;
+(id)valueWithSelector:(SEL)arg0 ;
+(id)getNSSelector:(SEL)arg0 ;
+(id)getNSSelector;


@end


#endif