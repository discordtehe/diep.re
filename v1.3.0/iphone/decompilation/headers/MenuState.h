// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MENUSTATE_H
#define MENUSTATE_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface MenuState : NSObject

@property (nonatomic) NSUInteger theId; // ivar: mTheId
@property (readonly, nonatomic) NSMutableArray *availableInstances; // ivar: mAvailableInstances
@property (readonly, nonatomic) NSMutableDictionary *parameters; // ivar: mParameters


-(id)init;
-(void)dealloc;
+(id)createMenuState:(NSUInteger)arg0 ;


@end


#endif