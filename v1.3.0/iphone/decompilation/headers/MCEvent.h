// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCEVENT_H
#define MCEVENT_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface MCEvent : NSObject

@property (readonly, nonatomic) CGFloat timestamp; // ivar: _timestamp
@property (nonatomic) NSSet *touches; // ivar: _touches


-(void)buildEvent:(int)arg0 location:(struct CGPoint )arg1 ;
-(id)allTouches;


@end


#endif