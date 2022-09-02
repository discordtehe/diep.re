// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CLSDSYM_H
#define CLSDSYM_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class CLSMachOBinary;

@interface CLSdSYM : NSObject

@property (readonly, nonatomic) NSBundle *bundle; // ivar: _bundle
@property (readonly, nonatomic) CLSMachOBinary *binary; // ivar: _binary
@property (readonly, copy, nonatomic) NSString *bundleIdentifier;
@property (readonly, copy, nonatomic) NSURL *executableURL;
@property (readonly, copy, nonatomic) NSString *executablePath;
@property (readonly, copy, nonatomic) NSString *bundleVersion;
@property (readonly, copy, nonatomic) NSString *shortBundleVersion;


-(id)initWithURL:(id)arg0 ;
-(void)enumerateUUIDs:(id)arg0 ;
+(id)dSYMWithURL:(id)arg0 ;


@end


#endif