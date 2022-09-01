// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef APMSCREEN_H
#define APMSCREEN_H


#import <Foundation/Foundation.h>


@interface APMScreen : NSObject

@property (readonly, nonatomic) NSString *name; // ivar: _name
@property (readonly, nonatomic) NSString *className; // ivar: _className
@property (readonly, nonatomic) NSInteger instanceID; // ivar: _instanceID
@property (nonatomic) BOOL isManuallySet; // ivar: _isManuallySet


-(id)initWithName:(id)arg0 className:(id)arg1 instanceID:(NSInteger)arg2 ;
-(id)copyWithZone:(struct _NSZone *)arg0 ;


@end


#endif