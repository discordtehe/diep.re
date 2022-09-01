// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADCACHEDOBJECT_H
#define FBADCACHEDOBJECT_H


#import <Foundation/Foundation.h>


@interface FBAdCachedObject : NSObject

@property (nonatomic) CGFloat expiration; // ivar: _expiration
@property (retain, nonatomic) id *object; // ivar: _object


-(id)initWithObject:(id)arg0 withExpiration:(id)arg1 ;
+(void)initialize;


@end


#endif