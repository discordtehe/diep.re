// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef _FBADKVOINFO_H
#define _FBADKVOINFO_H


#import <Foundation/Foundation.h>

@class FBAdKVOController;

@interface _FBAdKVOInfo : NSObject {
    FBAdKVOController *_controller;
    NSString *_keyPath;
    NSUInteger _options;
    SEL _action;
    *void _context;
    id *_block;
    unsigned char _state;
}




// -(id)initWithController:(id)arg0 keyPath:(id)arg1 options:(NSUInteger)arg2 block:(id)arg3 action:(unk)arg4 context:(SEL)arg5  ;
-(id)initWithController:(id)arg0 keyPath:(id)arg1 options:(NSUInteger)arg2 block:(id)arg3 ;
-(id)initWithController:(id)arg0 keyPath:(id)arg1 options:(NSUInteger)arg2 action:(SEL)arg3 ;
-(id)initWithController:(id)arg0 keyPath:(id)arg1 options:(NSUInteger)arg2 context:(*void)arg3 ;
-(id)initWithController:(id)arg0 keyPath:(id)arg1 ;
-(NSUInteger)hash;
-(BOOL)isEqual:(id)arg0 ;
-(id)debugDescription;


@end


#endif