// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CLSMACHOSLICE_H
#define CLSMACHOSLICE_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface CLSMachOSlice : NSObject {
    CLSMachOSlice _slice;
    NSString *_uuidString;
    NSArray *_linkedDylibs;
}


@property (readonly, copy, nonatomic) NSString *uuid;
@property (readonly, copy, nonatomic) NSString *architectureName;
@property (readonly, nonatomic) NSArray *linkedDylibs;
@property (readonly, nonatomic) ? minimumOSVersion; // ivar: _minimumOSVersion
@property (readonly, nonatomic) ? linkedSDKVersion; // ivar: _linkedSDKVersion


-(id)initWithSlice:(struct CLSMachOSlice *)arg0 ;
+(id)runningSlice;


@end


#endif