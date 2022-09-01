// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GULSWIZZLEDOBJECT_H
#define GULSWIZZLEDOBJECT_H


#import <Foundation/Foundation.h>


@interface GULSwizzledObject : NSObject



-(id)init;
-(id)gul_objectSwizzler;
-(Class)gul_class;
-(BOOL)respondsToSelector:(SEL)arg0 ;
+(void)copyDonorSelectorsUsingObjectSwizzler:(id)arg0 ;


@end


#endif