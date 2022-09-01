// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TR_DDLOGGINGCONTEXTSET_H
#define TR_DDLOGGINGCONTEXTSET_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface TR_DDLoggingContextSet : NSObject {
    int _lock;
    NSMutableSet *_set;
}


@property (readonly, copy) NSArray *currentSet;


-(id)init;
-(void)addToSet:(NSUInteger)arg0 ;
-(void)removeFromSet:(NSUInteger)arg0 ;
-(BOOL)isInSet:(NSUInteger)arg0 ;


@end


#endif