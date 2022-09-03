// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MENUSTATESTACKENTRY_H
#define MENUSTATESTACKENTRY_H


#import <Foundation/Foundation.h>

@class MenuState;
@protocol MCMenuState;

@interface MenuStateStackEntry : NSObject

@property (nonatomic) MenuState *menuState; // ivar: mMenuState
@property (retain, nonatomic) NSObject<MCMenuState> *instance; // ivar: mInstance


-(void)dealloc;
+(id)createMenuStateStackEntry:(id)arg0 instance:(id)arg1 ;


@end


#endif