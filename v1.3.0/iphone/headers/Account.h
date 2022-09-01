// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ACCOUNT_H
#define ACCOUNT_H


#import <Foundation/Foundation.h>


@interface Account : NSObject

@property (retain, nonatomic) NSString *userId; // ivar: _userId
@property (retain, nonatomic) NSString *displayName; // ivar: _displayName


-(id)init;
-(void)dealloc;
-(id)platformDisplayName;
-(struct basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > )getAppVersion;
+(id)account;


@end


#endif