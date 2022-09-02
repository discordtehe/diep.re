// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCBSEQUENCEPROPERTY_H
#define CCBSEQUENCEPROPERTY_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface CCBSequenceProperty : NSObject

@property (retain, nonatomic) NSString *name; // ivar: name
@property (nonatomic) int type; // ivar: type
@property (readonly, nonatomic) NSMutableArray *keyframes; // ivar: keyframes


-(id)init;
-(void)dealloc;


@end


#endif