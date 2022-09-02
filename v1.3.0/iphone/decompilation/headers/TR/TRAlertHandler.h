// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TRALERTHANDLER_H
#define TRALERTHANDLER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface TRAlertHandler : NSObject

@property (retain, nonatomic) NSArray *handlers; // ivar: _handlers


-(void)showAlertWithTitle:(id)arg0 message:(id)arg1 buttonTitles:(id)arg2 handlers:(id)arg3 ;


@end


#endif