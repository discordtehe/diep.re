// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GULMUTABLEDICTIONARY_H
#define GULMUTABLEDICTIONARY_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface GULMutableDictionary : NSObject {
    NSMutableDictionary *_objects;
    NSObject<OS_dispatch_queue> *_queue;
}




-(id)init;
-(id)description;
-(id)objectForKey:(id)arg0 ;
-(void)setObject:(id)arg0 forKey:(id)arg1 ;
-(void)removeObjectForKey:(id)arg0 ;
-(void)removeAllObjects;
-(NSUInteger)count;
-(id)objectForKeyedSubscript:(id)arg0 ;
-(void)setObject:(id)arg0 forKeyedSubscript:(id)arg1 ;
-(id)dictionary;


@end


#endif